'module' unfold

'use' ast ext env print types rsl_star_print values objects cc transrel transrel_print

'export' unfold_to_rsl unfold_to_transrel


/* Transform a RSL-SAL specification by transforming the transition rules to a transition relation 
   and transforming the variable initialisations to an initialisation constraint. */
'action' unfold_to_transrel(LIB_MODULE -> LIB_MODULE)

  'rule' unfold_to_transrel(scheme(P, Ctx, Octx, Def) -> Translated):
         (|
           make_checks(Def -> ErrCount)
           gt(ErrCount,0)
           where(LIB_MODULE'scheme(P, Ctx, Octx, Def) -> Translated) --'
           Puterror(P)
           Putmsg("Found constructs not suitable for translation.")
           Putnl()
         ||
           Module_name -> N
           string_to_id(N -> Id)
           unfold_scheme(Def -> UDef)
           make_transrel(scheme(P, Ctx, Octx, UDef) -> scheme(_, _, _, TRDef))
           where(LIB_MODULE'scheme(P, Ctx, Octx, TRDef) -> Translated) --'
           [|
             TransformToTransrelWanted()

             /* Temp printing of rewritten transitions to equal priority */
             OpenRTTFile(Id -> _)
             write_scheme_def(UDef)
             CloseOutputFile
          
             OpenTransrelFile(Id -> _)
             tr_write_scheme_def(TRDef)
             --write_scheme_def(TRDef)
             CloseOutputFile
           |]
         |)


/* Unfold the RSL* language constructs such that we end up with a specification in "normal" RSL-SAL
   (including, though, those extensions (arrays) created by Jacob Hansen). */
'action' unfold_to_rsl(LIB_MODULE -> LIB_MODULE)

  /* Unfold the genericity -- generic variable declarations and generic variable references */
  'rule' unfold_to_rsl(LIB_MODULE'scheme(P, Ctx, Octx, Def) -> Unfolded): --'
         (|
           make_checks(Def -> ErrCount)
           gt(ErrCount,0)
           where(LIB_MODULE'scheme(P, Ctx, Octx, Def) -> Unfolded) --'
           Puterror(P)
           Putmsg("Found constructs not suitable for unfolding")
           Putnl()
         ||
           Module_name -> N
           string_to_id(N -> Id)
           unfold_scheme(Def -> UDef)
           [|
             UnfoldGenericVariableRefsWanted()
             OpenUnfoldFile(Id -> _)
             write_scheme_def(UDef)
             CloseOutputFile
           |]
           [|
             UnfoldTransCollectionNamesWanted()
             OpenUnfoldFile(Id -> _)
             write_scheme_def(UDef)
             CloseOutputFile
           |]
           where(LIB_MODULE'scheme(P, Ctx, Octx, UDef) -> Unfolded) --'
         |)


'action' unfold_scheme(SCHEME_DEF -> SCHEME_DEF)
        
  'rule' unfold_scheme(sdef(P, Id, Params, C) -> sdef(P, Id, Params, UC)):
         unfold_class(C -> UC)
        

'action' unfold_class(CLASS -> CLASS)

  'rule' unfold_class(basic(Ds) -> basic(UDs)):
         unfold_decls(Ds -> UDs)

  'rule' unfold_class(extend(Left,Right) -> extend(Left,URight)):
         unfold_class(Right -> URight)

  'rule' unfold_class(hide(Hs,C) -> hide(Hs,UC)):
         unfold_class(C -> UC)

  'rule' unfold_class(rename(Rs,C) -> rename(Rs,UC)):
         unfold_class(C -> UC)

  'rule' unfold_class(with(P,OE,C) -> with(P,OE,UC)):
         unfold_class(C -> UC)

  'rule' unfold_class(instantiation(Name,Parm) -> instantiation(Name,Parm)):

  'rule' unfold_class(nil -> nil):

        
'action' unfold_decls(DECLS -> DECLS)

  /* Unfold variable declarations, as they may contain generic variable declarations. */      
  'rule' unfold_decls(list(variable_decl(P,VDs),Ds) -> list(variable_decl(P,UVDs), UDs)):
         (|
           /* Third unfolding where generic variable refs are unfolded. */
           UnfoldGenericVariableRefsWanted()
           unfold_var_defs(VDs -> UVDs)
         ||
           /* Other unfoldings, don't do anything to the generic variable declarations. */
           where(VDs -> UVDs)
         |)
         unfold_decls(Ds -> UDs)

  'rule' unfold_decls(list(value_decl(P,VDs), Ds) -> list(value_decl(P,IVDs), UDs)):
         (|
           /* Third unfolding where generic value refs are unfolded. */
           UnfoldGenericVariableRefsWanted()
           unfold_value_defs(VDs -> UVDs)
           find_and_unfold_axiom_decl(Ds -> ADs)
           (|
             where(ADs -> list(axiom_decl(_,ADefs),_))
             make_value_defs_from_axioms(ADefs, UVDs -> IVDs)
           ||
             where(UVDs -> IVDs)
           |)
         ||
           /* Other unfoldings, don't do anything to the generic variable declarations. */
           where(VDs -> IVDs)
         |)
         unfold_decls(Ds -> UDs)

  'rule' unfold_decls(list(axiom_decl(P,ADs), Ds) -> list(axiom_decl(P,UADs), UDs)):
         unfold_axiom_defs(ADs -> UADs)
         unfold_decls(Ds -> UDs)

  /* Unfold transition system declarations, as they may contain generic variable declarations and references. */
  'rule' unfold_decls(list(trans_system_decl(P, TSDefs), Ds) -> list(trans_system_decl(P, UTSDefs), UDs)):
         unfold_transsys_defs(TSDefs -> UTSDefs)
         unfold_decls(Ds -> UDs)

  'rule' unfold_decls(list(property_decl(P, PDecls), Ds) -> list(property_decl(P, UPDecls), UDs)):
         unfold_property_decls(PDecls -> UPDecls)
         unfold_decls(Ds -> UDs)

  'rule' unfold_decls(list(test_case_decl(P,TDecls), Ds) -> list(test_case_decl(P, UTDecls), UDs)):
         unfold_test_case_decls(TDecls -> UTDecls)
         unfold_decls(Ds -> UDs)

  /* If not one of the relevant declarations, just move on to the next. */
  'rule' unfold_decls(list(O,Ds) -> list(O,UDs)):
         unfold_decls(Ds -> UDs)
        
  'rule' unfold_decls(nil -> nil):


'action' find_and_unfold_axiom_decl(DECLS -> DECLS)

  'rule' find_and_unfold_axiom_decl(list(axiom_decl(P,ADs), Ds) -> list(axiom_decl(P,UADs), nil)):
         unfold_axiom_defs(ADs -> UADs)

  'rule' find_and_unfold_axiom_decl(list(_, Ds) -> Res):
         find_and_unfold_axiom_decl(Ds -> Res)

  'rule' find_and_unfold_axiom_decl(nil -> nil)


'action' unfold_axiom_defs(AXIOM_DEFS -> AXIOM_DEFS)

  'rule' unfold_axiom_defs(list(axiom_def(P,OptId,VE), Rest) -> Result):
         (|
           UnfoldGenericRulesPropsWanted() /* Second unfolding step. */
           (|
             where(VE -> bracket(_,quantified(_,all,TS,R)))
             generate_substitutions(TS -> Subs)
             cartesian_of_N_substitutions(Subs -> SubsList)
             unfold_restriction(R, SubsList -> UnfoldedList) /* List of unfolded axioms as value expressions. */
             from_value_expr_to_axiom_def(P, OptId, UnfoldedList -> UnfoldedAxioms)
           ||
             unfold_value_expr(VE, nil -> UVE)
             where(AXIOM_DEFS'list(axiom_def(P,OptId,UVE),nil) -> UnfoldedAxioms) --'
           |)
           unfold_axiom_defs(Rest -> URest)
           concat_axiom_defs(UnfoldedAxioms, URest -> Result)
         ||
           UnfoldGenericVariableRefsWanted() /* Third unfolding step. */
           rewrite_value_expr(VE -> UVE)
           unfold_axiom_defs(Rest -> URest)
           where(AXIOM_DEFS'list(axiom_def(P,OptId,UVE),URest) -> Result) --'
         ||
           where(AXIOM_DEFS'list(axiom_def(P,OptId,VE),Rest) -> Result) --'
         |)

  'rule' unfold_axiom_defs(nil -> nil)


'action' unfold_var_decls(DECL -> DECL)

  'rule' unfold_var_decls(variable_decl(P,VDs) -> variable_decl(P,UVDs)):
         unfold_var_defs(VDs -> UVDs)


/* Create a new list of value definitions, which now contains the unfolded values.
   This also includes the value declarations which are not generic. */
'action' unfold_value_defs(VALUE_DEFS -> VALUE_DEFS)
  'rule' unfold_value_defs(list(H,Tail) -> UList):
         unfold_value_def(H -> UH)
         unfold_value_defs(Tail -> UTail)
         concat_value_defs(UH,UTail -> UList)

  'rule' unfold_value_defs(nil -> nil):


'action' unfold_value_def(VALUE_DEF -> VALUE_DEFS)

  'rule' unfold_value_def(gen_val(P,Id,TS,T) -> UVDs):
         /* Vals is a list of lists of possible values for each type in the typings. */
         generate_values_from_typings(TS -> Vals)
         generate_new_values(P,Id,Vals,T -> UVDs)
         
  /*If it's not a generic value, just return the value def as an element in a list. */
  'rule' unfold_value_def(Other -> list(Other,nil)):


/* Create a new list of variable definitions, which now contains the unfolded variables.
   This also includes the variable declarations which are not generic. */
'action' unfold_var_defs(VARIABLE_DEFS -> VARIABLE_DEFS)
  'rule' unfold_var_defs(list(H,Tail) -> UList):
         unfold_var_def(H -> UH)
         unfold_var_defs(Tail -> UTail)
         concat_var_defs(UH,UTail -> UList)

  'rule' unfold_var_defs(nil -> nil):


'action' unfold_var_def(VARIABLE_DEF -> VARIABLE_DEFS)

  'rule' unfold_var_def(generic(P,Id,TS,T) -> UVDs):
         /* Vals is a list of lists of possible values for each type in the typings. */
         generate_values_from_typings(TS -> Vals)
         generate_new_variables(P,Id,Vals,T -> UVDs)
         
  /*If it's not a generic variable, just return the variable def as an element in a list. */
  'rule' unfold_var_def(Other -> list(Other,nil)):


'action' unfold_test_case_decls(TEST_CASE_DEFS -> TEST_CASE_DEFS)

  'rule' unfold_test_case_decls(nil -> nil):

  'rule' unfold_test_case_decls(list(T,Ts) -> list(UT, UTs)):
         unfold_test_case_decl(T -> UT)
         unfold_test_case_decls(Ts -> UTs)


'action' unfold_test_case_decl(TEST_CASE_DEF -> TEST_CASE_DEF)

  'rule' unfold_test_case_decl(test_case_def(P,ON,VE) -> Unfolded):
         (|
           UnfoldGenericRulesPropsWanted()
           where(VE -> bracket(P3,quantified(P2,Q,TS,R)))
           where(Q -> all)
           where(R -> restriction(P4,RVE))
           generate_substitutions(TS -> Subs)
           cartesian_of_N_substitutions(Subs -> SubsList)

           /* Unfolding as conjunction of resulting properties. */
           --where(RVE -> application(P5,Fun,list(fun_arg(P6,list(VE2,VERest)),FARest)))
           unfold_inner_quantification_property(P4,RVE, SubsList -> UVE)
           where(test_case_def(P,ON,UVE) -> Unfolded)
         ||
           UnfoldGenericVariableRefsWanted()
           rewrite_generic_references_in_test_case(test_case_def(P,ON,VE) -> Unfolded)
         ||
           where(test_case_def(P,ON,VE) -> Unfolded)
         |)  


'action' unfold_property_decls(PROPERTY_DECLS -> PROPERTY_DECLS)

  'rule' unfold_property_decls(nil -> nil):

  'rule' unfold_property_decls(list(Pr,Prs) -> UList):
         unfold_property_decl(Pr -> UH)
         unfold_property_decls(Prs -> UTail)
         concat_property_decls(UH,UTail -> UList)


'action' unfold_property_decl(PROPERTY_DECL -> PROPERTY_DECLS)

  /* (all t : T :- G|F|U|X(...) */
  'rule' unfold_property_decl(property_def(P,Id,Sys,bracket(P3,quantified(P2,Q,TS,R))) -> Unfolded):
         Get_current_transition_systems(all -> TS_env)
	     Get_Transition_System(Sys, TS_env -> OptTSId)
         where(OptTSId -> ts_id(TSId))
         TSId'System -> TS_Decls --'
	  ---------------------------------------------------------
         (| where(TS_Decls -> no_input(Local, Transitions)) || where(TS_Decls -> with_constraint(Local, _, Transitions)) |)
	     -- Puth the valid variables (from the TS) in the current new env:
	     Get_current_with(-> WITH)
	     Current -> C
	     Current <- current_env(basic_env(nil,list(nil,nil),nil,nil,nil,nil,nil,nil,nil,nil,WITH,nil), C)
	     Extend_paths -> Paths
	     Extend_paths <- list(nil,Paths)
	     -- Add implicitely the 'primed variables' (future state vars in SAL)
	     where(Local -> variable_decl(PL, LocalDecl))
	     Generate_Primes(LocalDecl -> LocalPrimes)
	     -- Collect the input and local declarations
	     where(DECLS'list(Local,list(variable_decl(PL, LocalPrimes), nil)) -> DS) --'
	     Make_basic_env(basic(DS))
	     Complete_type_env(basic(DS))
	     Make_value_env(basic(DS))

         /* MY CODE */
         (|
           UnfoldGenericRulesPropsWanted()
           where(Q -> all)
           where(R -> restriction(P4,RVE))
           generate_substitutions(TS -> Subs)
           cartesian_of_N_substitutions(Subs -> SubsList)
           /* Unfolding quantified property to sequence of each resulting property. */
           -- unfold_property(property_def(P,Id,Sys,RVE), SubsList -> Unfolded)

           /* Unfolding instead as conjunction of resulting properties for inside G( ). */
           where(RVE -> application(P5,Fun,list(fun_arg(P6,list(VE,VERest)),FARest)))
           unfold_inner_quantification_property(P4,VE, SubsList -> UVE)
           where(PROPERTY_DECLS'list(property_def(P,Id,Sys,application(P5,Fun,list(fun_arg(P6,list(UVE,VERest)),FARest))),nil) -> Unfolded) --'
         ||
           where(PROPERTY_DECLS'list(property_def(P,Id,Sys,bracket(P3,quantified(P2,Q,TS,R))),nil) -> Unfolded) --'
         |)
         /* MY CODE END */        
	     -- Removing this "fake" environment
	     Current -> current_env(CE, C1)
	     Current <- C1
	     Extend_paths <- Paths

  /* G|F|U|X(~(all t : T :- ...) or G|F|U|X(all t : T :- ...) */
  'rule' unfold_property_decl(property_def(P,Id,Sys,application(P3,Fun,list(fun_arg(P4,list(VE,VERest)),FARest))) -> Unfolded):
         (| where(VE -> ax_prefix(_,not,bracket(P5,quantified(P2,Q,TS,R)))) || where(VE -> quantified(P2,Q,TS,R)) |)
                                    
         Get_current_transition_systems(all -> TS_env)
	     Get_Transition_System(Sys, TS_env -> OptTSId)
         where(OptTSId -> ts_id(TSId))
         TSId'System -> TS_Decls --'
	  ---------------------------------------------------------
         (| where(TS_Decls -> no_input(Local, Transitions)) || where(TS_Decls -> with_constraint(Local, _, Transitions)) |)
	     -- Puth the valid variables (from the TS) in the current new env:
	     Get_current_with(-> WITH)
	     Current -> C
	     Current <- current_env(basic_env(nil,list(nil,nil),nil,nil,nil,nil,nil,nil,nil,nil,WITH,nil), C)
	     Extend_paths -> Paths
	     Extend_paths <- list(nil,Paths)
	     -- Add implicitely the 'primed variables' (future state vars in SAL)
	     where(Local -> variable_decl(PL, LocalDecl))
	     Generate_Primes(LocalDecl -> LocalPrimes)
	     -- Collect the input and local declarations
	     where(DECLS'list(Local,list(variable_decl(PL, LocalPrimes), nil)) -> DS) --'
	     Make_basic_env(basic(DS))
	     Complete_type_env(basic(DS))
	     Make_value_env(basic(DS))

         /* MY CODE */
         (|
           UnfoldGenericRulesPropsWanted()
           where(Q -> all)
           where(R -> restriction(P6,RVE))
           generate_substitutions(TS -> Subs)
           cartesian_of_N_substitutions(Subs -> SubsList)
           unfold_inner_quantification_property(P6,RVE, SubsList -> UVE)
           (|
             where(VE -> ax_prefix(P7,not,bracket(P5,quantified(P22,Q2,TS2,R2))))
             where(ax_prefix(P7,not,bracket(P5,UVE)) -> NVE)
           ||
             where(VE -> quantified(P22,Q2,TS2,R2))
             where(UVE -> NVE)
           |)
           where(PROPERTY_DECLS'list(property_def(P,Id,Sys,application(P3,Fun,list(fun_arg(P4,list(NVE,VERest)),FARest))),nil) -> Unfolded) --'
         ||
           where(PROPERTY_DECLS'list(property_def(P,Id,Sys,application(P3,Fun,list(fun_arg(P4,list(VE,VERest)),FARest))),nil) -> Unfolded) --'
         |)
         /* MY CODE END */        
	     -- Removing this "fake" environment
	     Current -> current_env(CE, C1)
	     Current <- C1
	     Extend_paths <- Paths  


  'rule' unfold_property_decl(property_def(P,Id,Sys,Prop) -> list(NPD,nil)):
         (|
           UnfoldGenericVariableRefsWanted()
           rewrite_generic_references_in_property(property_def(P,Id,Sys,Prop) -> NPD)
         ||
           where(property_def(P,Id,Sys,Prop) -> NPD)
         |)


'action' unfold_property(PROPERTY_DECL, SUBSTITUTES_LIST -> PROPERTY_DECLS)
        
  'rule' unfold_property(PD, list(Subs,nil) -> list(NPD,nil)):
         make_substitution_in_property(PD,Subs -> NPD)
        
  'rule' unfold_property(PD, list(Subs,Rest) -> list(NPD,NRest)):
         make_substitution_in_property(PD,Subs -> NPD)
         unfold_property(PD, Rest -> NRest)

  'rule' unfold_property(PD, nil -> nil):


'action' unfold_inner_quantification_property(POS, VALUE_EXPR, SUBSTITUTES_LIST -> VALUE_EXPR)
        
  'rule' unfold_inner_quantification_property(P, VE, list(Subs,nil) -> NVE):
         make_substitution_in_inner_quantification_property(VE,Subs -> NVE)
        
  'rule' unfold_inner_quantification_property(P, VE, list(Subs,Rest) -> ax_infix(P,NVE,and,NRest,P)):
         make_substitution_in_inner_quantification_property(VE,Subs -> NVE)
         unfold_inner_quantification_property(P, VE, Rest -> NRest)

        
'action' unfold_transsys_defs(TRANSITION_SYS_DEFS -> TRANSITION_SYS_DEFS)

  'rule' unfold_transsys_defs(nil -> nil):

  'rule' unfold_transsys_defs(list(TS,TSs) -> list(UTS, UTSs)):
         unfold_transsys_def(TS -> UTS)
         unfold_transsys_defs(TSs -> UTSs)

/* TODO: Right now, going through and making a local environment again, in order to have the local
   generic variables, so they can be looked up in case of a generic variable access looking like 
   an array access. Decide how much of this is really needed, and if can be done in a better way. 
   Maybe generic variable access can be distinguished in another way? 
   If this part has to stay, it is a TODO to include the other kinds of transition system definitions
   as well. */
'action' unfold_transsys_def(TRANSITION_SYS_DEF -> TRANSITION_SYS_DEF)

  'rule' unfold_transsys_def(trans_sys_def(P, Id, Desc) -> trans_sys_def(P, Id, UDesc)):
     (| where(Desc -> no_input(Local, Transitions)) || where(Desc -> with_constraint(Local, _, Transitions)) |)
-----------------
     Get_current_values(-> VAL)
	 Get_current_with(-> WITH)
     Get_current_transition_rules(top -> TR) 
	 Current -> C
	 Current <- current_env(basic_env(nil,VAL,nil,nil,nil,nil,nil,nil,TR,nil,WITH,nil), C)
	 Extend_paths -> Paths
	 Extend_paths <- list(nil,Paths)
	 /* Add implicitely the 'primed variables' (future state vars in SAL) */
	 where(Local -> variable_decl(PL, LocalDecl))

     (|
       TransformToTransrelWanted()
       /* Code for transformation to transition relation (taken from Resolve_trans_sys_def in cc.g).
          This is for rewriting prioritised transitions. */
       Get_priority_vars(Transitions, 1, PL -> PossibleDecl, _, _)
       Concat_Vars(LocalDecl, PossibleDecl -> NewLocalDecl)
       where(variable_decl(PL, NewLocalDecl) -> NewLocal)
                    
       Generate_Primes(NewLocalDecl -> LocalPrimes)
                    
       Concat_Vars(LocalPrimes, PossibleDecl -> NewLocalVars)
       where(DECLS'list(Local,list(variable_decl(PL, NewLocalVars), nil)) -> DS) --'

	   Make_basic_env(basic(DS))
	   Complete_type_env(basic(DS))
	   Make_value_env(basic(DS))
	   Check_value_env(basic(DS))
                        
	   /* Resolve_class(basic(DS)) <-- seems to no be needed. */
       GetExtraCommands(PossibleDecl, nil -> EU)
       /* Call Jacob's resolve transitions functionality from cc.g for handling prioritised rules. */
	   Resolve_transitions(Transitions, 1, nil, EU, Id -> RTrans, _, _, ExtraProps)  

       /* This gives the transition system without priorities and with added (necessary) variables) */
       where(SYSTEM_DESCRIPTION'no_input(NewLocal, RTrans) -> UDesc) --'
       /* Code for transformation to transition relation end. */
     ||
       Generate_Primes(LocalDecl -> LocalPrimes)
	   /* Collect the input and local declarations */
	   where(DECLS'list(Local,list(variable_decl(PL, LocalPrimes), nil)) -> DS) --'

       Make_basic_env(basic(DS))
	   Complete_type_env(basic(DS))
	   Make_value_env(basic(DS))

	   /* My unfolding code. */
       unfold_sys(Desc -> UDesc)
	   /* My unfolding code end. */
     |)
----------------------------
	 Current -> current_env(CE, C1)
	 Current <- C1
	 Extend_paths <- Paths


'action' unfold_sys(SYSTEM_DESCRIPTION -> SYSTEM_DESCRIPTION)

  'rule' unfold_sys(no_input(VDs, TR) -> no_input(UVDs, UTR)):
         (|
           /* Third unfolding where generic variable refs are unfolded. */
           UnfoldGenericVariableRefsWanted()
           unfold_var_decls(VDs -> UVDs)
         ||
           /* Other unfoldings, don't do anything to the generic variable declararions. */
           where(VDs -> UVDs)
         |)
         unfold_trans_system(TR -> UTR)

  'rule' unfold_sys(with_constraint(VDs, C, TR) -> Result):
         unfold_trans_system(TR -> UTR) /* TODO: Okay that this happens first?*/
         (|
           /* Third unfolding where generic variable refs are rewritten. */
           UnfoldGenericVariableRefsWanted()
           unfold_var_decls(VDs -> UVDs)
           unfold_constraint(C -> UC)
           make_var_decls_from_constraint(UC, UVDs -> CVDs)
           where(SYSTEM_DESCRIPTION'no_input(CVDs, UTR) -> Result) --'
         ||
           /* Other unfoldings, don't do anything to the generic variable declararions. */
           unfold_constraint(C -> UC)
           where(with_constraint(VDs, UC, UTR) -> Result)
         |)


'action' unfold_constraint(CONSTRAINT -> CONSTRAINT)

  'rule' unfold_constraint(constraint(P, Cs) -> constraint(P, UCs)):
         unfold_conjunction_list(Cs -> UCs)

'action' unfold_conjunction_list(CONJUNCTION_LIST -> CONJUNCTION_LIST)

  'rule' unfold_conjunction_list(list(VE, Rest) -> Result):
         (|
           UnfoldGenericRulesPropsWanted() /* Second unfolding step. */
           (|
             where(VE -> quantified(P,all,TS,R))
             generate_substitutions(TS -> Subs)
             cartesian_of_N_substitutions(Subs -> SubsList)
             unfold_restriction(R, SubsList -> UnfoldedList) /* Conjunction of unfolded constraints. */
           ||
             unfold_value_expr(VE, nil -> UVE)
             where(CONJUNCTION_LIST'list(UVE,nil) -> UnfoldedList) --'
           |)
           unfold_conjunction_list(Rest -> URest)
           concat_conj_lists(UnfoldedList, URest -> Result)
         ||
           UnfoldGenericVariableRefsWanted() /* Third unfolding step. */
           rewrite_value_expr(VE -> UVE)
           unfold_conjunction_list(Rest -> URest)
           where(CONJUNCTION_LIST'list(UVE,URest) -> Result) --'
         ||
           where(CONJUNCTION_LIST'list(VE,Rest) -> Result) --'
         |)

  'rule' unfold_conjunction_list(nil -> nil)


'action' unfold_trans_system(TRANSITION_OPERATOR -> TRANSITION_OPERATOR)

  'rule' unfold_trans_system(equal_priority(L, R, G) -> equal_priority(UL, UR, G)):
         unfold_trans_system(L -> UL)
         unfold_trans_system(R -> UR)
        
  'rule' unfold_trans_system(greater_priority(L, R, G) -> greater_priority(UL, UR, G)):
         unfold_trans_system(L -> UL)
         unfold_trans_system(R -> UR)

  'rule' unfold_trans_system(bracketed(C, G) -> bracketed(UC, G)):
         unfold_trans_system(C -> UC)

  /* The interesting part is if the guarded command is a comprehended command */
  'rule' unfold_trans_system(guarded_command(C, G) -> UC):
         unfold_guarded_command(C, G -> UC)

  /* Assuming that trans namings are always only top-level, TODO: ensure in type checker. */
  /* Should only occur in the first unfolding step. After that the named collections of transition rules
     have been unfolded. */
  'rule' unfold_trans_system(trans_naming(TR, NTL) -> UTR):
         (|
           UnfoldTransCollectionNamesWanted()
           unfold_trans_system(TR -> UTR)
         ||
           where(TR -> UTR)
         |)

          
  /* Should only occur in the first unfolding step. After that the named collections of transition rules
     have been unfolded. */
  'rule' unfold_trans_system(trans_ident(I) -> Result):
         (|
           UnfoldTransCollectionNamesWanted()
           Get_current_transition_rules(all -> TR_env)
           Get_Transition_Rule(I, TR_env -> OptTRId)
           where(OptTRId -> tr_id(Tid))
           Tid'Body -> TOP --'
           (|
             where(TOP -> bracketed(TrOp,EG)) /* TODO: Handle extra guard? */
           ||
             where(TOP -> TrOp)
           |)
           (|
             has_trans_idents(TrOp)
             unfold_trans_system(TrOp -> Unfolded)
             where(Unfolded -> Result)
           ||
             where(TrOp -> Result)
           |)
         ||
           where(trans_ident(I) -> Result)
         |)

'condition' has_trans_idents(TRANSITION_OPERATOR)

     'rule' has_trans_idents(equal_priority(L, R, G)):
            (|
              has_trans_idents(L)
            ||
              has_trans_idents(R)
            |)
        
     'rule' has_trans_idents(greater_priority(L, R, G)):
            (|
              has_trans_idents(L)
            ||
              has_trans_idents(R)
            |)

     'rule' has_trans_idents(bracketed(C, G)):
            has_trans_idents(C)

     'rule' has_trans_idents(trans_ident(I)):
            eq(1,1)
            /* TODO: Other way of representing true? */


'action' unfold_guarded_command(GUARDED_COMMAND, EXTRA_GUARD -> TRANSITION_OPERATOR)

  /* Comprehended commands should only be taken into account in the first unfolding. In the second unfolding, there 
  shouldn't be any comprehended commands left as they have been unfolded at that point by the first unfolding. */
  'rule' unfold_guarded_command(comprehended_cmd(TS,P,CMD), EG -> Unfolded) /* TODO: Handle extra guard, EG. */
         (|
           UnfoldGenericRulesPropsWanted()
           generate_substitutions(TS -> Subs)
           /* Make all the possible substitution lists as combinations of the possible substitutions for each
           binding in the typings of the comprehended command. */
           cartesian_of_N_substitutions(Subs -> SubsList)
           unfold_rule(CMD,SubsList -> Unfolded)
         ||
           UnfoldGenericVariableRefsWanted()
           where(guarded_command(comprehended_cmd(TS,P,CMD),EG) -> Unfolded)
         |)

        /* TODO: This could technically also refer to generic variables in quantifications, so a first unfolding
        might be necessary (?), but should that just be disallowed? */
  'rule' unfold_guarded_command(CMD, EG -> guarded_command(NCMD,EG))
         (|
           UnfoldGenericVariableRefsWanted()
           rewrite_generic_references(CMD -> NCMD)
         ||
           where(CMD -> NCMD)
         |)
                    

'action' rewrite_generic_references(GUARDED_COMMAND -> GUARDED_COMMAND)

  'rule' rewrite_generic_references(else_cmd(Id,Cs) -> else_cmd(Id,NCs)):
         rewrite_commands(Cs -> NCs)

  'rule' rewrite_generic_references(guarded_cmd(Id,G,Cs) -> guarded_cmd(Id,NG,NCs)):
         rewrite_value_expr(G -> NG) -- call unfold value expr
         rewrite_commands(Cs -> NCs) -- call unfold commands


'action' rewrite_commands(COMMANDS -> COMMANDS)

  'rule' rewrite_commands(Cs -> NCs):
         unfold_commands(Cs, nil -> NCs)


'action' rewrite_value_expr(VALUE_EXPR -> VALUE_EXPR)

  'rule' rewrite_value_expr(VE -> NVE)      
         unfold_value_expr(VE, nil -> NVE)


'action' rewrite_generic_references_in_property(PROPERTY_DECL -> PROPERTY_DECL)

  'rule' rewrite_generic_references_in_property(property_def(P,Id,Sys,Prop) -> property_def(P,Id,Sys,NProp)):
         rewrite_value_expr(Prop -> NProp) -- call unfold value expr

'action' rewrite_generic_references_in_test_case(TEST_CASE_DEF -> TEST_CASE_DEF)

  'rule' rewrite_generic_references_in_test_case(test_case_def(P,ON,VE) -> test_case_def(P,ON,NVE)):
         rewrite_value_expr(VE -> NVE) -- call unfold value expr


'action' unfold_rule(GUARDED_COMMAND, SUBSTITUTES_LIST -> TRANSITION_OPERATOR)
        
  'rule' unfold_rule(guarded_cmd(OptId,G,CMD), list(Subs,nil) -> guarded_command(NGC,nil)):
         make_substitution_in_rule(guarded_cmd(OptId,G,CMD),Subs -> NGC)
        
  'rule' unfold_rule(guarded_cmd(OptId,G,CMD), list(Subs,Rest) -> equal_priority(guarded_command(Left,nil),Right,nil)):
         make_substitution_in_rule(guarded_cmd(OptId,G,CMD),Subs -> Left)
         unfold_rule(guarded_cmd(OptId,G,CMD), Rest -> Right)

  'rule' unfold_rule(guarded_cmd(OptId,G,CMD), nil -> guarded_command(guarded_cmd(OptId,G,CMD),nil)):


'action' unfold_value_exprs(VALUE_EXPRS, SUBSTITUTE -> VALUE_EXPRS)

  'rule' unfold_value_exprs(nil, Sub -> nil):
        
  'rule' unfold_value_exprs(list(VE,VEs), Sub -> list(NVE,NVEs)):
         unfold_value_expr(VE, Sub -> NVE) 
         unfold_value_exprs(VEs, Sub -> NVEs)
        
/* Handles all VALUE_EXPRs which may have one or more nested VALUE_EXPRs, as these may contain references 
   to generic variables. Ignores all other VALUE_EXPRS. TODO: This does not handle VALUE_EXPRs from theorems 
   etc (not part of scheme and object) -- this should be disallowed in the type checker (if it isn't already). 
   For now also doesn't handle (as they are not supported by the SAL translator):
   - pre names - skip, stop, chaos, swap - all list expressions - post expressions - disambiguation
   - stmt infix - comprehended exprs - channel expr - local_expr - while_expr - until_expr - for_expr
   Also does not handle: - array_ass_occ 
*/        
'action' unfold_value_expr(VALUE_EXPR, SUBSTITUTE -> VALUE_EXPR)

  'rule' unfold_value_expr(named_val(P,N), Sub -> Result):
         /* Only handle if it's the unfolding where generic rules and properties are unfolded. */
         (|
           UnfoldGenericRulesPropsWanted()
           where(Sub -> substitution(SId,New))
           /* TODO: take qualified name into account? */
           where(N -> name(P2,id_op(Id)))
           (|
             eq(Id,SId)
             string_to_id(New -> NewId)
             (|
               /* If the substitution string is actually an integer, return a literal integer expression. */
               Is_number(New)
               where(literal_expr(P,int(NewId)) -> Result)
             ||
               /* If the substitution is indeed a string, return a named value. */
               where(name(P2,id_op(NewId)) -> NN)
               where(named_val(P,NN) -> Result)
             |)
             /* Debugging */
             /*Putmsg("REPLACE:")
             Print_id(Id)
             Putmsg(" -> ")
             Print_id(NewId)
             Putnl()*/
           ||
             where(named_val(P,N) -> Result)
           |)
         ||
           where(named_val(P,N) -> Result)
         |)
         
        
  'rule' unfold_value_expr(product(P,VEs), Sub -> product(P,NVEs)):
         unfold_value_exprs(VEs, Sub -> NVEs)        
         
  'rule' unfold_value_expr(ranged_set(P,VE1,VE2), Sub -> ranged_set(P,NVE1,NVE2)):
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)
                               
  'rule' unfold_value_expr(enum_set(P,VEs), Sub -> enum_set(P,NVEs)):
         unfold_value_exprs(VEs, Sub -> NVEs) 

  'rule' unfold_value_expr(comp_set(P,VE,L), Sub -> comp_set(P,NVE,NL)):
         unfold_value_expr(VE, Sub -> NVE)
         where(L -> set_limit(P2,Tys,restriction(P3,LVE)))
         unfold_value_expr(LVE, Sub -> NLVE)
         where(set_limit(P2,Tys,restriction(P3,NLVE)) -> NL)
                                                                
  'rule' unfold_value_expr(enum_map(P,VEPs), Sub -> enum_map(P,NVEPs)):
         unfold_value_expr_pairs(VEPs, Sub -> NVEPs) 
                                                                    
  'rule' unfold_value_expr(comp_map(P,VEP,L), Sub -> comp_map(P,NVEP,NL)):
         unfold_value_expr_pair(VEP, Sub -> NVEP)
         where(L -> set_limit(P2,Tys,restriction(P3,LVE)))
         unfold_value_expr(LVE, Sub -> NLVE)
         where(set_limit(P2,Tys,restriction(P3,NLVE)) -> NL)
                                                                              
  'rule' unfold_value_expr(function(P,Par,VE), Sub -> function(P,Par,NVE)):
         unfold_value_expr(VE, Sub -> NVE)   
                                                                               
  'rule' unfold_value_expr(application(P,VE,A), Sub -> Result):
         unfold_value_expr(VE, Sub -> NVE)
--         (|
--           where(VE -> named_val(_, name(_, id_op(Id))))
--           id_to_string(Id -> S)
           /* LTL formulas */
--           (| eq(S, "U") || eq(S, "G") || eq(S, "F") || eq(S, "X") |) 
           unfold_function_params(A, Sub -> NA)
           where(application(P,NVE,NA) -> Result)
--         ||
--           unfold_function_params(A, Sub -> NA)
--           unfold_function_application(NVE, NA -> Result)
--         |)
         /* TODO: call unfold (for substitution) on result from unfolding function application? */
                                                                                             
  'rule' unfold_value_expr(quantified(P,Q,TS,R), Sub -> quantified(P,Q,TS,NR)):
         where(R -> restriction(P2,VE))
         unfold_value_expr(VE, Sub -> NVE)
         where(restriction(P2,NVE) -> NR)

  'rule' unfold_value_expr(equivalence(P,VE1,VE2,Pre), Sub -> equivalence(P,NVE1,NVE2,NPre)):
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)         
         where(Pre -> pre_cond(P2,VE))
         unfold_value_expr(VE, Sub -> NVE)
         where(pre_cond(P2,NVE) -> NPre)

  'rule' unfold_value_expr(bracket(P,VE), Sub -> bracket(P,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_value_expr(ax_infix(P,VE1,C,VE2,P2), Sub -> ax_infix(P,NVE1,C,NVE2,P2)):
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)
                             
  'rule' unfold_value_expr(val_infix(P,VE1,O,VE2), Sub -> val_infix(P,NVE1,O,NVE2)):
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)

  'rule' unfold_value_expr(ax_prefix(P,C,VE), Sub -> ax_prefix(P,C,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_value_expr(val_prefix(P,O,VE), Sub -> val_prefix(P,O,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  /* TODO: consider if this name should be tested for substitution as well? */
  'rule' unfold_value_expr(assignment(P,N,VE), Sub -> assignment(P,N,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_value_expr(let_expr(P,D,VE), Sub -> let_expr(P,ND,NVE)):
         unfold_let_defs(D, Sub -> ND)
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_value_expr(if_expr(P,I,T,R,EIs,E), Sub -> if_expr(P,NI,NT,R,NEIs,NE)):
         unfold_value_expr(I, Sub -> NI)
         unfold_value_expr(T, Sub -> NT)
         unfold_elsif_branches(EIs, Sub-> NEIs)
         where(E -> else(P2,VE))
         unfold_value_expr(VE, Sub -> NVE)
         where(else(P2,NVE) -> NE)

  'rule' unfold_value_expr(case_expr(P,VE,P2,CBs), Sub -> case_expr(P,NVE,P2,NCBs)):
         unfold_value_expr(VE, Sub -> NVE)
         unfold_case_branches(CBs, Sub -> NCBs)

  'rule' unfold_value_expr(array_access(P,VE1,VE2), Sub -> Result):
         (|
           where(VE1 -> named_val(_, Name))
           (|
             Lookup_variable_name(Name -> variable_id(Id))
             Id'Type -> Type  --'
           ||
             Lookup_value_name(P,Name -> list(Id2,_))
             Id2'Type -> Type  --'
           |)
           /* Check if it is actually a generic variable/value access by checking if the type matches */
           Match(Type,down,generic(any,any))
           unfold_value_expr(genvar_access(P, VE1, list(VE2,nil)), Sub -> Result)
         ||
           unfold_value_expr(VE1, Sub -> NVE1)
           unfold_value_expr(VE2, Sub -> NVE2)
           where(array_access(P,NVE1,NVE2) -> Result)
         |)

  'rule' unfold_value_expr(array_assignment(P,N,VEs,VE), Sub -> array_assignment(P,N,NVEs,NVE)):
         unfold_value_exprs(VEs, Sub -> NVEs)
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_value_expr(array_expr(P,T,VE), Sub -> array_expr(P,T,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  /* TODO: assuming that the VE is a named_val (name of the generic variable). */
  'rule' unfold_value_expr(genvar_access(P,VE,VEs), Sub -> Result):
         (|
           UnfoldGenericVariableRefsWanted()
           /* TODO: Right now it is assumed that the VEs are either literals or named values. 
              This excludes expressions where the indexing is done by using another generic 
              variable's value, e.g.: route[t,index[t]]. 
              This can be rewritten to route[t,i] /\ i = index[t], where i is added to the 
              comprehended rule as i : Index. */
           rewrite_genvar_access(VE,VEs -> NewName)

           where(named_val(P,NewName) -> Result)
         ||
           unfold_value_expr(VE, Sub -> NVE)
           unfold_value_exprs(VEs, Sub -> NVEs)
           where(genvar_access(P,NVE,NVEs) -> Result)
         |)

  /* If the value expression is not one of the ones allowed or if nothing should be changed (e.g. 
     as in a literal value, then just pass the same value expression. */
  'rule' unfold_value_expr(Other, Sub -> Other):
  /* TODO: Detect if there is a value expression which ccannot be unfolded - then print warning? */


'action' unfold_function_application(VALUE_EXPR, ACTUAL_FUNCTION_PARAMETERS -> VALUE_EXPR)

  'rule' unfold_function_application(VE, ActualParms -> Replaced):
         (|
           Get_current_values(-> list(Val,_))
           where(VE -> named_val(_,name(_,Id)))
           Lookup_id_or_op1(Id, Val -> list(ValId,_))
           ValId'Def -> Defn --'
           where(Defn -> expl_fun(FormalParms,BodyVE,_,_,_,_)) /* TODO: SUBTYPE ARGS/RES? */
           /* TODO/NOTE: Only the first item in the list of formal and actual parameters seems to be relevant 
            (first element contains a list of the bindings and list of value expressions, respectively). */
           where(FormalParms -> list(form_parm(_,Bindings),FT))
           where(ActualParms -> list(fun_arg(_,Args),AT))
           replace_formal_with_actual(BodyVE, Bindings, Args -> Replaced)
         ||
           where(VE -> Replaced)
         |)


'action' replace_formal_with_actual(VALUE_EXPR, BINDINGS, VALUE_EXPRS -> VALUE_EXPR)

  'rule' replace_formal_with_actual(VE, nil, nil -> VE):
                                            
  'rule' replace_formal_with_actual(VE, list(Binding,BT), list(AVE,AT) -> R):
         (|
           where(Binding -> single(_,id_op(Id)))
           replace_id_with_value_expr(Id, AVE, VE -> Temp) 
         ||
           /* No product bindings allowed*/
           /* TODO: print warning. */
           where(VE -> Temp)
         |)
         replace_formal_with_actual(Temp, BT, AT -> R)

  /* TODO: Handle properly */
  'rule' replace_formal_with_actual(VE, Binds, AVEs -> VE):
         Putmsg("Not same number of actual and formal parameters")
         Putnl()


/* TODO: only replacing in a subset of value expressions which make sense according to which expressions are 
   included in the subset covered by Peter's parser. This may need to be extended. */
'action' replace_id_with_value_expr(IDENT, VALUE_EXPR, VALUE_EXPR -> VALUE_EXPR)

  'rule' replace_id_with_value_expr(Id, Repl, named_val(P,N) -> Result):
         /* TODO: take qualified name into account? */
         where(N -> name(P2,id_op(NId)))
         (|
           eq(Id,NId)
           where(Repl -> Result)
           /* Debugging */
           /*Putmsg("REPLACE:")
           Print_id(Id)
           Putmsg(" -> ")
           Print_id(NewId)
           Putnl()*/
         ||
           where(named_val(P,N) -> Result)
         |)
                                                                               
  'rule' replace_id_with_value_expr(Id, Repl, application(P,VE,A) -> Result): 
         replace_id_with_value_expr_fun_params(Id, Repl, A -> NA)
         unfold_function_application(VE, NA -> Result)

  'rule' replace_id_with_value_expr(Id, Repl, bracket(P,VE) -> bracket(P,NVE)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)

  'rule' replace_id_with_value_expr(Id, Repl, ax_infix(P,VE1,C,VE2,P2) -> ax_infix(P,NVE1,C,NVE2,P2)):
         replace_id_with_value_expr(Id, Repl, VE1 -> NVE1)
         replace_id_with_value_expr(Id, Repl, VE2 -> NVE2)
                             
  'rule' replace_id_with_value_expr(Id, Repl, val_infix(P,VE1,O,VE2) -> val_infix(P,NVE1,O,NVE2)):
         replace_id_with_value_expr(Id, Repl, VE1 -> NVE1)
         replace_id_with_value_expr(Id, Repl, VE2 -> NVE2)

  'rule' replace_id_with_value_expr(Id, Repl, ax_prefix(P,C,VE) -> ax_prefix(P,C,NVE)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)

  'rule' replace_id_with_value_expr(Id, Repl, val_prefix(P,O,VE) -> val_prefix(P,O,NVE)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)

  'rule' replace_id_with_value_expr(Id, Repl, if_expr(P,I,T,R,EIs,E) -> if_expr(P,NI,NT,R,NEIs,NE)):
         replace_id_with_value_expr(Id, Repl, I -> NI)
         replace_id_with_value_expr(Id, Repl, T -> NT)
         replace_id_with_value_expr_elsif_branches(Id, Repl, EIs-> NEIs)
         where(E -> else(P2,VE))
         replace_id_with_value_expr(Id, Repl, VE -> NVE)
         where(else(P2,NVE) -> NE)

  'rule' replace_id_with_value_expr(Id, Repl, case_expr(P,VE,P2,CBs) -> case_expr(P,NVE,P2,NCBs)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)
         replace_id_with_value_expr_case_branches(Id, Repl, CBs -> NCBs)

  'rule' replace_id_with_value_expr(Id, Repl, array_access(P,VE1,VE2) -> Result):
  /* TODO: Not handling if it is a generic variable access. It (probably) never will be inside a function. 
     The function should only refer to local variables. The approach with checking if an array access
     is actually a generic access does not work here, because local parameter named may coincide with
     generic variable names. This created problems in later passes. */
         replace_id_with_value_expr(Id, Repl, VE1 -> NVE1)
         replace_id_with_value_expr(Id, Repl, VE2 -> NVE2)
         where(array_access(P,NVE1,NVE2) -> Result)

  'rule' replace_id_with_value_expr(Id, Repl, array_expr(P,T,VE) -> array_expr(P,T,NVE)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)

  'rule' replace_id_with_value_expr(Id, Repl, genvar_access(P,VE,VEs) -> genvar_access(P,NVE,NVEs)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)
         replace_id_with_value_expr_value_exprs(Id, Repl, VEs -> NVEs)

  /* TODO: For now, just ignoring everything for which a rule is not defined. */ 
  'rule' replace_id_with_value_expr(Id, Repl, Other -> Other):
         /* Putmsg("OTHER:")
         Print_expr(Other)
         Putnl() */
                                            
'action' replace_id_with_value_expr_elsif_branches(IDENT, VALUE_EXPR, ELSIF_BRANCHES -> ELSIF_BRANCHES)

  'rule' replace_id_with_value_expr_elsif_branches(Id, Repl, nil -> nil)

  'rule' replace_id_with_value_expr_elsif_branches(Id, Repl, list(EI, EIs) -> list(NEI,NEIs)):
         replace_id_with_value_expr_elsif_branch(Id, Repl, EI -> NEI)
         replace_id_with_value_expr_elsif_branches(Id, Repl, EIs -> NEIs)


'action' replace_id_with_value_expr_elsif_branch(IDENT, VALUE_EXPR, ELSIF_BRANCH -> ELSIF_BRANCH)

  'rule' replace_id_with_value_expr_elsif_branch(Id, Repl, elsif(P,VE1,VE2,P2) -> elsif(P,NVE1,NVE2,P2))
         replace_id_with_value_expr(Id, Repl, VE1 -> NVE1)
         replace_id_with_value_expr(Id, Repl, VE2 -> NVE2)


'action' replace_id_with_value_expr_case_branches(IDENT, VALUE_EXPR, CASE_BRANCHES -> CASE_BRANCHES)

  'rule' replace_id_with_value_expr_case_branches(Id, Repl, nil -> nil)

  'rule' replace_id_with_value_expr_case_branches(Id, Repl, list(CB,CBs) -> list(NCB, NCBs)):
         replace_id_with_value_expr_case_branch(Id, Repl, CB -> NCB)
         replace_id_with_value_expr_case_branches(Id, Repl, CBs -> NCBs)


'action' replace_id_with_value_expr_case_branch(IDENT, VALUE_EXPR, CASE_BRANCH -> CASE_BRANCH)

  'rule' replace_id_with_value_expr_case_branch(Id, Repl, case(P,Pa,VE,P2) -> case(P,Pa,NVE,P2)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE)
                                            

/* Ignoring the rest of the function params - seems that the first element contains the list of relevant value expressions. */
'action' replace_id_with_value_expr_fun_params(IDENT, VALUE_EXPR, ACTUAL_FUNCTION_PARAMETERS -> ACTUAL_FUNCTION_PARAMETERS)

  'rule' replace_id_with_value_expr_fun_params(Id, Repl, list(fun_arg(P,VEs),Rest) -> list(fun_arg(P,NVEs),Rest)):
         replace_id_with_value_expr_value_exprs(Id, Repl, VEs -> NVEs)


'action' replace_id_with_value_expr_value_exprs(IDENT, VALUE_EXPR, VALUE_EXPRS -> VALUE_EXPRS)

  'rule' replace_id_with_value_expr_value_exprs(Id, Repl, nil -> nil):
        
  'rule' replace_id_with_value_expr_value_exprs(Id, Repl, list(VE,VEs) -> list(NVE,NVEs)):
         replace_id_with_value_expr(Id, Repl, VE -> NVE) 
         replace_id_with_value_expr_value_exprs(Id, Repl, VEs -> NVEs)


'action' unfold_restriction(RESTRICTION, SUBSTITUTES_LIST -> CONJUNCTION_LIST)

  'rule' unfold_restriction(R, list(Subs,nil) -> list(NR,nil)):
         make_substitution_in_restriction(R,Subs -> NR)

  'rule' unfold_restriction(R, list(Subs,Rest) -> list(NR,NRest)):
         where(R -> restriction(P,VE))
         make_substitution_in_restriction(R,Subs -> NR)
         unfold_restriction(R, Rest -> NRest)


'action' unfold_function_params(ACTUAL_FUNCTION_PARAMETERS, SUBSTITUTE -> ACTUAL_FUNCTION_PARAMETERS)

  'rule' unfold_function_params(nil, Sub -> nil):

  'rule' unfold_function_params(list(A,As), Sub -> list(NA,NAs)):
         where(A -> fun_arg(P,VEs))
         unfold_value_exprs(VEs, Sub -> NVEs)
         where(fun_arg(P,NVEs) -> NA)
         unfold_function_params(As, Sub -> NAs)


'action' unfold_let_defs(LET_DEFS, SUBSTITUTE -> LET_DEFS)

  'rule' unfold_let_defs(nil, Sub -> nil)

  'rule' unfold_let_defs(list(D,Ds), Sub -> list(ND,NDs)):
         unfold_let_def(D, Sub -> ND)
         unfold_let_defs(Ds, Sub -> NDs)


'action' unfold_let_def(LET_DEF, SUBSTITUTE -> LET_DEF)

  'rule' unfold_let_def(explicit(P,B,VE), Sub -> explicit(P,B,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_let_def(implicit(P,T,R), Sub -> implicit(P,T,NR)):
         where(R -> restriction(P2,VE))
         unfold_value_expr(VE, Sub -> NVE)
         where(restriction(P2,NVE) -> NR)


'action' unfold_else_branch(ELSE_BRANCH, SUBSTITUTE -> ELSE_BRANCH)

  'rule' unfold_else_branch(else(P,VE), Sub -> else(P,NVE)):
         unfold_value_expr(VE, Sub -> NVE)        


'action' unfold_elsif_branches(ELSIF_BRANCHES, SUBSTITUTE -> ELSIF_BRANCHES)

  'rule' unfold_elsif_branches(nil, Sub -> nil)

  'rule' unfold_elsif_branches(list(EI, EIs), Sub -> list(NEI,NEIs)):
         unfold_elsif_branch(EI, Sub -> NEI)
         unfold_elsif_branches(EIs, Sub -> NEIs)


'action' unfold_elsif_branch(ELSIF_BRANCH, SUBSTITUTE -> ELSIF_BRANCH)

  'rule' unfold_elsif_branch(elsif(P,VE1,VE2,P2), Sub -> elsif(P,NVE1,NVE2,P2))
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)


'action' unfold_case_branches(CASE_BRANCHES, SUBSTITUTE -> CASE_BRANCHES)

  'rule' unfold_case_branches(nil, Sub -> nil)

  'rule' unfold_case_branches(list(CB,CBs), Sub -> list(NCB, NCBs)):
         unfold_case_branch(CB, Sub -> NCB)
         unfold_case_branches(CBs, Sub -> NCBs)


'action' unfold_case_branch(CASE_BRANCH, SUBSTITUTE -> CASE_BRANCH)

  'rule' unfold_case_branch(case(P,Pa,VE,P2), Sub -> case(P,Pa,NVE,P2)):
         unfold_value_expr(VE, Sub -> NVE)


'action' unfold_value_expr_pairs(VALUE_EXPR_PAIRS, SUBSTITUTE -> VALUE_EXPR_PAIRS)

  'rule' unfold_value_expr_pairs(nil, Sub -> nil):
        
  'rule' unfold_value_expr_pairs(list(VEP,VEPs), Sub -> list(NVEP,NVEPs)):
         unfold_value_expr_pair(VEP, Sub -> NVEP) 
         unfold_value_expr_pairs(VEPs, Sub -> NVEPs)


'action' unfold_value_expr_pair(VALUE_EXPR_PAIR, SUBSTITUTE -> VALUE_EXPR_PAIR)

  'rule' unfold_value_expr_pair(pair(VE1,VE2), Sub -> pair(NVE1,NVE2)):
         unfold_value_expr(VE1, Sub -> NVE1)
         unfold_value_expr(VE2, Sub -> NVE2)


'action' unfold_commands(COMMANDS, SUBSTITUTE -> COMMANDS)

  'rule' unfold_commands(nil, Sub -> nil):

  'rule' unfold_commands(list(C,Cs), Sub -> list(NC, NCs)):
         unfold_command(C, Sub -> NC)
         unfold_commands(Cs, Sub -> NCs)


'action' unfold_command(COMMAND, SUBSTITUTE -> COMMAND)

  'rule' unfold_command(cmd(P,N,VE), Sub -> cmd(P,N,NVE)):
         unfold_value_expr(VE, Sub -> NVE)

  'rule' unfold_command(array_cmd(P,N,VEs,VE), Sub -> Result):
         (|
           Lookup_variable_name(N -> variable_id(Id))
           Id'Type -> Type  --'
           /* Check if it is actually a generic cmd by checking if the type matches */
           Match(Type,down,generic(any,any))
           where(VEs -> list(H,Tail))
           /* If the first access seems to be a generic variable access, just unfold the 
           access and the update (VE) seperately. */
           unfold_value_expr(genvar_access(P,named_val(P,N),list(H,nil)), Sub -> GR)
           unfold_value_expr(VE, Sub -> NVE)
           /* The following two alternatives ignore the case where unfold_value_expr(genvar_access) 
           returns a genvar_access, and not a named_val, but it seems to work anyway. 
           The standard array command case at the bottom will be run for this case. */
           (|
             /* If there are multiple accesses, then unfold these as array commands recursively, 
             and use whatever was generates for the first generic access. */
             ne(Tail, nil)
             where(GR -> named_val(P2,NewName))
             unfold_command(array_cmd(P2,NewName,Tail,NVE), Sub -> Result)
           ||
             /* If there was only one access (and it was generic) just return a command with the
             unfolded generic name. */
             where(GR -> named_val(P2,NewName))
             where(cmd(P2,NewName,NVE) -> Result)
           |)
         ||
           /* Standard array command. */
           unfold_value_expr(VE, Sub -> NVE)
           unfold_value_exprs(VEs, Sub -> NVEs)
           where(array_cmd(P,N,NVEs,NVE) -> Result)
         |)

  'rule' unfold_command(genvar_cmd(P,N,VEs,VE), Sub -> Result):
         unfold_value_expr(VE, Sub -> NVE)
         (|
           /* TODO: Assuming that the VEs are either literals or named_vals for now. */
           UnfoldGenericVariableRefsWanted()
           rewrite_genvar_cmd(N,VEs -> NewName)
           where(cmd(P,NewName,NVE) -> Result)
         ||
           unfold_value_exprs(VEs, Sub -> NVEs)
           where(genvar_cmd(P,N,NVEs,NVE) -> Result)
         |)     


'action' unfold_rule_name(OPT_IDENT, SUBSTITUTE -> OPT_IDENT)

  'rule' unfold_rule_name(nil, Sub -> nil)

  'rule' unfold_rule_name(ident(Id), Sub -> ident(NewId)):
         unfold_name(Id, Sub -> NewId)


'action' unfold_name(IDENT, SUBSTITUTE -> IDENT)

  'rule' unfold_name(Id, substitution(SId,Extra) -> NewId):
         id_to_string(Id -> S)
         Concatenate(S,"_" -> Temp)
         Concatenate(Temp, Extra -> NewNameString)
         string_to_id(NewNameString -> NewId)


'action' make_var_decls_from_constraint(CONSTRAINT, DECL -> DECL)

  'rule' make_var_decls_from_constraint(constraint(_,Cs), variable_decl(P,VDs) -> variable_decl(P,MVDs)):
         make_var_defs_from_constraint(Cs, VDs -> MVDs)

/* TODO: Handle array access in init constraint. What variable defs should we create based on this? */
'action' make_var_defs_from_constraint(CONJUNCTION_LIST, VARIABLE_DEFS -> VARIABLE_DEFS)

  'rule' make_var_defs_from_constraint(list(VE,nil), VDs -> IVDs):
         where(VE -> val_infix(_, Left, eq, Val))
         (|
           where(Left -> named_val(_, name(_, id_op(Id))))
           init_var_def_with_value(VDs, Id, Val -> IVDs)
         ||
           where(Left -> array_access(_,N,Idx))
           where(VDs -> IVDs)
         |)

  'rule' make_var_defs_from_constraint(list(VE,Rest), VDs -> MVDs):
         where(VE -> val_infix(_, Left, eq, Val))
         (|
           where(Left -> named_val(_, name(_, id_op(Id))))
           init_var_def_with_value(VDs, Id, Val -> IVDs)
         ||
           where(Left -> array_access(_,N,Idx))
           where(VDs -> IVDs)
         |)
         make_var_defs_from_constraint(Rest, IVDs -> MVDs)


'action' init_var_def_with_value(VARIABLE_DEFS, IDENT, VALUE_EXPR -> VARIABLE_DEFS)

  'rule' init_var_def_with_value(list(H,Tail), Id, InitVal -> list(IH, ITail)):
         where(H -> single(P, VId, T, _)) /* TODO: should this go inside the "if"? */
         (|
           eq(Id, VId)
           where(VARIABLE_DEF'single(P, VId, T, initial(InitVal)) -> IH) --'
           where(Tail -> ITail)
         ||
           where(H -> IH)
           init_var_def_with_value(Tail, Id, InitVal -> ITail)
         |)

  'rule' init_var_def_with_value(nil, Id, InitVal -> nil):


'action' make_value_defs_from_axioms(AXIOM_DEFS, VALUE_DEFS -> VALUE_DEFS)

  'rule' make_value_defs_from_axioms(list(axiom_def(_,_,VE),nil), VDs -> IVDs):
         where(VE -> val_infix(_, Left, eq, Val))
         (|
           where(Left -> named_val(_, name(_, id_op(Id))))
           init_value_def_with_value(VDs, Id, Val -> IVDs)
         ||
           where(Left -> array_access(_,N,Idx))
           where(VDs -> IVDs)
         |)

  'rule' make_value_defs_from_axioms(list(axiom_def(_,_,VE),Rest), VDs -> MVDs):
         where(VE -> val_infix(_, Left, eq, Val))
         (|
           where(Left -> named_val(_, name(_, id_op(Id))))
           init_value_def_with_value(VDs, Id, Val -> IVDs)
         ||
           where(Left -> array_access(_,N,Idx))
           where(VDs -> IVDs)
         |)
         make_value_defs_from_axioms(Rest, IVDs -> MVDs)


'action' init_value_def_with_value(VALUE_DEFS, IDENT, VALUE_EXPR -> VALUE_DEFS)

  'rule' init_value_def_with_value(list(H,Tail), Id, InitVal -> list(IH, ITail)):
         (|
           where(H -> typing(P,single(_, single(_, id_op(VId)), T)))
           eq(Id, VId)
           where(VALUE_DEF'exp_val(P, TYPING'single(P,BINDING'single(P,id_op(VId)),T), InitVal) -> IH) --'
           where(Tail -> ITail)
         ||
           where(H -> IH)
           init_value_def_with_value(Tail, Id, InitVal -> ITail)
         |)

  'rule' init_value_def_with_value(nil, Id, InitVal -> nil):


'action' rewrite_genvar_cmd(NAME, VALUE_EXPRS -> NAME)

  'rule' rewrite_genvar_cmd(name(P,id_op(GVId)), Idxs -> NN)
         id_to_string(GVId -> GVS)
         make_new_name(GVS, Idxs -> NNS)
         string_to_id(NNS -> NId)
         where(name(P,id_op(NId)) -> NN)


'action' rewrite_genvar_access(VALUE_EXPR, VALUE_EXPRS -> NAME)

  'rule' rewrite_genvar_access(named_val(P,GVName), Idxs -> NN):
         rewrite_genvar_cmd(GVName, Idxs -> NN)

/*  'rule' rewrite_genvar_access(genvar_access(P,Name,Idx), Idxs -> name(P,id_op(A))):
         Puterror(P)
         Print_expr(Name)
         Putmsg(":")
         Print_exprs(Idx)
         Putnl()
         string_to_id("A" -> A)*/

/* TODO: no rule applicable here */

'action' make_new_name(STRING, VALUE_EXPRS -> STRING)

  'rule' make_new_name(Id, list(Idx,nil) -> NNS):
         concat_name(Id,Idx -> NNS)
         /* DEBUGGING */
         /*
         Putmsg("NEW NAME IS:")
         Putmsg(NNS)
         Putnl()
         */

  'rule' make_new_name(Id, list(Idx,Idxs) -> NNS):
         concat_name(Id,Idx -> NS)
         make_new_name(NS, Idxs -> NNS)


'action' concat_name(STRING, VALUE_EXPR -> STRING)

  'rule' concat_name(S, Idx -> NS):
        (|
          Is_primed(S)
          Remove_Prime(S -> Unprimed)
          concat_name2(Unprimed, Idx -> Temp)
          Concatenate(Temp,"'" -> NS)
        ||
          concat_name2(S, Idx -> NS)
        |)


'action' concat_name2(STRING, VALUE_EXPR -> STRING)

  'rule' concat_name2(S, Idx -> NS):
         (|
           where(Idx -> named_val(_,name(_,id_op(IId))))
         ||
           where(Idx -> literal_expr(_,int(IId)))
         ||
           /* Handle if there is a simple arithmetic expression, TODO: subtraction, right now only addition. */
            where(Idx -> val_infix(_,L,OP,R))
            where(L -> literal_expr(_,int(IntLId)))
            where(R -> literal_expr(_,int(IntRId)))
            id_to_string(IntLId -> IntLS)
            id_to_string(IntRId -> IntRS)
            String_to_int(IntLS -> IntL)
            String_to_int(IntRS -> IntR)
            where(IntL + IntR -> ResInt)
            Int_to_string(ResInt -> ResS)
            string_to_id(ResS -> IId)            
         |)
         id_to_string(IId -> IS)
         Concatenate(S, "_" -> Temp)
         Concatenate(Temp, IS -> NS)


/* Generate the new variables based on the identifier of the generic variable and the 
   list of lists of possible values for each type from the typing. */
'action' generate_new_variables(POS,IDENT,STRINGS_LIST,TYPE_EXPR -> VARIABLE_DEFS)
  'rule' generate_new_variables(P,Id,Vals,T -> Defs):
         /* Generate a list of postfixes for the new variable names. */
         cartesian_of_N(Vals,0 -> NewPostfixes)
         /* Use the postfixes to generate the new variable names with correct type etc. */
         generate_variable_defs(P,Id,NewPostfixes,T -> Defs)

  'rule' generate_new_variables(P,Id,list(nil,nil),T -> nil):


'action' generate_variable_defs(POS,IDENT,STRINGS,TYPE_EXPR -> VARIABLE_DEFS)

  /* For each element in the strings list (postfixes) create a new variable */      
  'rule' generate_variable_defs(P,Id,list(Pf,Rest),T -> list(Def,RestDef)):       
         id_to_string(Id -> IdStr)
         Concatenate(IdStr, "_" -> Temp)
         Concatenate(Temp, Pf -> NewIdStr)
		 string_to_id(NewIdStr -> NewIdent)
         where(VARIABLE_DEF'single(P, NewIdent, T, nil) -> Def) --'

         /* Debug printing */
         /* Print_variable_def(Def)*/

         generate_variable_defs(P,Id,Rest,T -> RestDef)

  'rule' generate_variable_defs(P,Id,nil,T -> nil)


/* Generate the new values based on the identifier of the generic value and the 
   list of lists of possible values for each type from the typing. */
'action' generate_new_values(POS,IDENT,STRINGS_LIST,TYPE_EXPR -> VALUE_DEFS)
  'rule' generate_new_values(P,Id,Vals,T -> Defs):
         /* Generate a list of postfixes for the new value names. */
         cartesian_of_N(Vals,0 -> NewPostfixes)
         /* Use the postfixes to generate the new value names with correct type etc. */
         generate_value_defs(P,Id,NewPostfixes,T -> Defs)

  'rule' generate_new_values(P,Id,list(nil,nil),T -> nil):


'action' generate_value_defs(POS,IDENT,STRINGS,TYPE_EXPR -> VALUE_DEFS)

  /* For each element in the strings list (postfixes) create a new value */      
  'rule' generate_value_defs(P,Id,list(Pf,Rest),T -> list(Def,RestDef)):       
         id_to_string(Id -> IdStr)
         Concatenate(IdStr, "_" -> Temp)
         Concatenate(Temp, Pf -> NewIdStr)
		 string_to_id(NewIdStr -> NewIdent)
         where(typing(P,single(P, single(P, id_op(NewIdent)), T)) -> Def)

         /* Debug printing */
         /* Print_value_def(Def)*/

         generate_value_defs(P,Id,Rest,T -> RestDef)

  'rule' generate_value_defs(P,Id,nil,T -> nil)

-----------------------------------------------------------------------------
-- UNFOLDED VARIABLE NAMES GENERATION
-----------------------------------------------------------------------------

'action' generate_values_from_typings(TYPINGS -> STRINGS_LIST)

  'rule' generate_values_from_typings(list(Ty,Rest) -> Result):
         generate_values_from_typing(Ty -> TValsList)
         generate_values_from_typings(Rest -> RValsList)
         concat_strings_lists(TValsList,RValsList -> Result)
    
  'rule' generate_values_from_typings(nil -> nil)


'action' generate_values_from_typing(TYPING -> STRINGS_LIST)

  'rule' generate_values_from_typing(single(P,B,T) -> list(TVals,nil)):
         generate_possible_values_of_type(T -> TVals)

  'rule' generate_values_from_typing(multiple(P,list(B,Bs),T) -> list(TVals,TValsList)):
         generate_values_from_typing(single(P,B,T) -> list(TVals,nil))
         generate_values_from_typing(multiple(P,Bs,T) -> TValsList)

  'rule' generate_values_from_typing(multiple(P,nil,T) -> nil):


'action' generate_possible_values_of_type(TYPE_EXPR -> STRINGS)

  'rule' generate_possible_values_of_type(subtype(Typing,Restriction) -> Vals):
         (|
           Unify_typing_with(Typing,TYPE_EXPR'int) --'
           generate_possible_int_values(Restriction -> Vals)
         ||
           where(Typing -> single(_,_,TE))
           where(TE -> defined(I,Q))
           I'Type -> T --'
           generate_possible_type_values(T -> TooManyVals)
           remove_restricted_from_string_list(TooManyVals, Restriction -> Vals)
         |)


  'rule' generate_possible_values_of_type(named_type(Name) -> Vals):
         Lookup_type_name(Name -> type_id(I))
         I'Type -> T --'
         generate_possible_type_values(T -> Vals)

/* TODO: Currently only handling subtypes where the restriction excludes a single value, x, by using ~= x. */
'action' remove_restricted_from_string_list(STRINGS, RESTRICTION -> STRINGS)

  'rule' remove_restricted_from_string_list(list(S,Ss), restriction(P,VE) -> Result):
         where(VE -> val_infix(_,VEL,neq,VER))
         where(VER -> named_val(_,name(_,id_op(Id))))
         id_to_string(Id -> IdS)
         (|
           eq(S,IdS)
           /* Debugging */
           /*
           Putmsg("removing:")
           Putmsg(S)
           Putnl() 
           */
           where(Ss -> Result)
         ||
           remove_restricted_from_string_list(Ss, restriction(P,VE) -> PartRes)
           where(STRINGS'list(S,PartRes) -> Result) --'
         |)
         

/* TODO: Accept subtypes of variant types as well (?) */
'action' generate_possible_type_values(TYPE -> STRINGS)

  'rule' generate_possible_type_values(sort(Kind) -> Vals):
         where(Kind -> variant(Vs))
         generate_possible_variant_values(Vs -> Vals)

  'rule' generate_possible_type_values(abbrev(TE) -> Vals):
         generate_possible_values_of_type(TE -> Vals)

                                

/* TODO: this is assuming that the operator is ISIN for the ranged and enum sets. */
'action' generate_possible_int_values(RESTRICTION -> STRINGS)
  'rule' generate_possible_int_values(restriction(P,VE) -> Vals):
         (|
           where(VE -> val_infix(P1,VEL,OP,VER))
           (|
             where(VER -> ranged_set(P2,VEL1,VER1)) /* TODO: Require in TC that VEL1 and VER1 are literals? */
             unpack_range(VEL1,VER1 -> From, To)
             generate_all_nums(From,To -> Vals) /* AllNums is the result? */
           ||
             where(VER -> enum_set(P2,VEs)) /* TODO: Require in TC that VE's in VE1 are literals? */
             generate_all_vals(VEs -> Vals)
           |) 
         ||
           where(VE -> ax_infix(P1,VEL,CONN,VER,_))
           where(CONN -> CONNECTIVE'and) --'
           where(VEL -> val_infix(_,VEL1,OP1,VER1))
           where(VER -> val_infix(_,VEL2,OP2,VER2))
           where(OP1 -> OP'ge) --' /* TODO: take into account strictly greater than? */
           where(OP2 -> OP'lt) --'
           unpack_range(VER1,VER2 -> From, To)
           generate_all_nums(From + 1, To - 1 -> Vals)
         |)

'action' generate_all_vals(VALUE_EXPRS -> STRINGS)
  'rule' generate_all_vals(list(VE,VEs) -> list(Val,Rest)):
         where(VE -> literal_expr(P,VL))
         where(VL -> int(IV))
         id_to_string(IV -> Val)
         generate_all_vals(VEs -> Rest)

  'rule' generate_all_vals(nil -> nil)
                                                
'action' generate_all_nums(INT,INT -> STRINGS)
  'rule' generate_all_nums(From,To -> Vals):
         (|
           eq(From,To)
           Int_to_string(To -> Num)
           where(STRINGS'nil -> Rest) --'
           where(STRINGS'list(Num,Rest) -> Vals) --'
         ||
           gt(To,From)
           Int_to_string(From -> Num)
           generate_all_nums(From+1,To -> Rest)
           where(STRINGS'list(Num,Rest) -> Vals) --'
         ||
           where(STRINGS'nil -> Vals) --'
         |)

/* TODO: take into account expressions such as named constants (values) */
'action' unpack_range(VALUE_EXPR, VALUE_EXPR -> INT, INT)
  'rule' unpack_range(VEL, VER -> From, To)
         where(VEL -> literal_expr(P1,VL1))
         where(VL1 -> int(IV1))
         where(VER -> literal_expr(P2,VL2))
         where(VL2 -> int(IV2))
         id_to_string(IV1 -> S1)
         id_to_string(IV2 -> S2)
         String_to_int(S1 -> From)
         String_to_int(S2 -> To)
                                                
'action' generate_possible_variant_values(VARIANTS -> STRINGS)
  'rule' generate_possible_variant_values(list(H,Tail) -> list(S,ValsRest)):
         where(H -> record(_,C,_))
         where(C -> constructor(_,Id_or_op))
         where(Id_or_op -> id_op(Id))
         id_to_string(Id -> S)
         generate_possible_variant_values(Tail -> ValsRest)

  'rule' generate_possible_variant_values(nil -> nil):


'action' from_value_expr_to_axiom_def(POS, OPT_IDENT, CONJUNCTION_LIST -> AXIOM_DEFS)

  'rule' from_value_expr_to_axiom_def(P, OptId, list(VE,Rest) -> list(A,As)):
         where(axiom_def(P,OptId,VE) -> A)
         from_value_expr_to_axiom_def(P, OptId, Rest -> As)

  'rule' from_value_expr_to_axiom_def(P, OptId, nil -> nil)

-----------------------------------------------------------------------------
-- STRING CONCATENATION AND LIST OPERATIONS
-----------------------------------------------------------------------------
                                                                
/* Generate strings based on a list of lists of strings. Take each combination. */            
'action' cartesian_of_N(STRINGS_LIST,INT -> STRINGS)
  'rule' cartesian_of_N(Vals,Times -> NewNames):
        (|
          where(Vals -> list(NewNames,nil))
        ||
          where(Vals -> list(H,Tail))
          cartesian_of_N(Tail,Times+1 -> Res)
          cartesian(H,Res -> NewNames)
        |)

/* Make the possible combinations of strings from two string lists. */            
'action' cartesian(STRINGS, STRINGS -> STRINGS)
  'rule' cartesian(list(HFirst,TFirst),Second -> NewPostfixes):
         concat_each_string(HFirst,Second -> FirstRes)
         cartesian(TFirst,Second -> RestRes)
         concat_string_lists(FirstRes,RestRes -> NewPostfixes)

  /* If first list is empty, we're done going through. */          
  'rule' cartesian(nil,Second -> nil) 

'action' concat_each_string(STRING, STRINGS -> STRINGS)
  'rule' concat_each_string(S,list(H,Tail) -> list(NewS,NewRest)):
         Concatenate(S,"_" -> Temp)
         Concatenate(Temp,H -> NewS)
         concat_each_string(S,Tail -> NewRest)

  'rule' concat_each_string(S, nil -> nil)

'action' concat_string_lists(STRINGS, STRINGS -> STRINGS)
  'rule' concat_string_lists(nil,nil -> nil):

  'rule' concat_string_lists(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_string_lists(list(H,T),nil -> list(H,T)):

  'rule' concat_string_lists(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_string_lists(T,list(H2,T2) -> CT)

'action' concat_strings_lists(STRINGS_LIST, STRINGS_LIST -> STRINGS_LIST)
  'rule' concat_strings_lists(nil,nil -> nil):

  'rule' concat_strings_lists(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_strings_lists(list(H,T),nil -> list(H,T)):

  'rule' concat_strings_lists(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_strings_lists(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- CONJUNCTION LIST CONCATENATION
-----------------------------------------------------------------------------

'action' concat_conj_lists(CONJUNCTION_LIST, CONJUNCTION_LIST -> CONJUNCTION_LIST)
  'rule' concat_conj_lists(nil,nil -> nil):

  'rule' concat_conj_lists(nil,list(H,T) -> list(H,T)):

  'rule' concat_conj_lists(list(H,T),nil -> list(H,T)):

  'rule' concat_conj_lists(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_conj_lists(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- VALUE DEF CONCATENATION
-----------------------------------------------------------------------------

'action' concat_value_defs(VALUE_DEFS, VALUE_DEFS -> VALUE_DEFS)
  'rule' concat_value_defs(nil,nil -> nil):

  'rule' concat_value_defs(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_value_defs(list(H,T),nil -> list(H,T)):

  'rule' concat_value_defs(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_value_defs(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- VARIABLE DEF CONCATENATION
-----------------------------------------------------------------------------

'action' concat_var_defs(VARIABLE_DEFS, VARIABLE_DEFS -> VARIABLE_DEFS)
  'rule' concat_var_defs(nil,nil -> nil):

  'rule' concat_var_defs(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_var_defs(list(H,T),nil -> list(H,T)):

  'rule' concat_var_defs(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_var_defs(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- AXIOM DEF CONCATENATION
-----------------------------------------------------------------------------

'action' concat_axiom_defs(AXIOM_DEFS, AXIOM_DEFS -> AXIOM_DEFS)
  'rule' concat_axiom_defs(nil,nil -> nil):

  'rule' concat_axiom_defs(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_axiom_defs(list(H,T),nil -> list(H,T)):

  'rule' concat_axiom_defs(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_axiom_defs(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- PROPERTY DECL CONCATENATION
-----------------------------------------------------------------------------

'action' concat_property_decls(PROPERTY_DECLS, PROPERTY_DECLS -> PROPERTY_DECLS)
  'rule' concat_property_decls(nil,nil -> nil):

  'rule' concat_property_decls(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_property_decls(list(H,T),nil -> list(H,T)):

  'rule' concat_property_decls(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_property_decls(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- SUBSTITUTION GENERATION
-----------------------------------------------------------------------------
'action' make_substitution_in_restriction(RESTRICTION, SUBSTITUTES -> VALUE_EXPR)

  'rule' make_substitution_in_restriction(restriction(P,VE),nil -> VE):

  'rule' make_substitution_in_restriction(restriction(P,VE),list(Sub,Subs) -> Result):
         unfold_value_expr(VE, Sub -> NVE)
         make_substitution_in_restriction(restriction(P,NVE), Subs -> Result)


'action' make_substitution_in_inner_quantification_property(VALUE_EXPR, SUBSTITUTES -> VALUE_EXPR)

  'rule' make_substitution_in_inner_quantification_property(VE, nil -> VE):

  'rule' make_substitution_in_inner_quantification_property(VE, list(Sub,Subs) -> Result):
         unfold_value_expr(VE,Sub -> NVE)
         make_substitution_in_inner_quantification_property(NVE, Subs -> Result)

'action' make_substitution_in_property(PROPERTY_DECL, SUBSTITUTES -> PROPERTY_DECL)

  'rule' make_substitution_in_property(property_def(P,Id,Sys,Prop),nil -> property_def(P,Id,Sys,Prop)):
        
  'rule' make_substitution_in_property(property_def(P,Id,Sys,Prop),list(Sub,Subs) -> Result):
         unfold_name(Id, Sub -> NId)
         unfold_value_expr(Prop, Sub -> NProp)
         make_substitution_in_property(property_def(P,NId,Sys,NProp), Subs -> Result)

                                                                
'action' make_substitution_in_rule(GUARDED_COMMAND, SUBSTITUTES -> GUARDED_COMMAND)

  'rule' make_substitution_in_rule(guarded_cmd(OptId,G,CMD),nil -> guarded_cmd(OptId,G,CMD)):
        
  'rule' make_substitution_in_rule(guarded_cmd(OptId,G,CMD),list(Sub,Subs) -> Result):
         unfold_rule_name(OptId, Sub -> NId)
         unfold_value_expr(G, Sub -> NG)
         unfold_commands(CMD, Sub -> NCMD)
         make_substitution_in_rule(guarded_cmd(NId,NG,NCMD), Subs -> Result)


'action' generate_substitutions(TYPINGS -> SUBSTITUTES_LIST)

  'rule' generate_substitutions(nil -> nil):

  'rule' generate_substitutions(list(H,Tail) -> Subs):
         (|
           where(H -> single(P,B,T))
           generate_single_substitutions(B,T -> S)
           where(SUBSTITUTES_LIST'list(S,nil) -> SL) --'
         ||
           where(H -> multiple(P,Bs,T))
           generate_multi_substitutions(Bs,T -> SL)
         |)
         generate_substitutions(Tail -> Rest)
         concat_substitutions_lists(SL, Rest -> Subs)


'action' generate_single_substitutions(BINDING, TYPE_EXPR -> SUBSTITUTES)

  'rule' generate_single_substitutions(single(P,id_op(Id)), T -> S):
         generate_possible_values_of_type(T -> TVals)
         generate_substitutions_for(Id,TVals -> S)


'action' generate_multi_substitutions(BINDINGS, TYPE_EXPR -> SUBSTITUTES_LIST)

  'rule' generate_multi_substitutions(nil, T -> nil):
        
  'rule' generate_multi_substitutions(list(B,Bs), T -> list(S,Rest)):
         generate_possible_values_of_type(T -> TVals)
         generate_single_substitutions(B, T -> S)
         generate_multi_substitutions(Bs, T -> Rest)

'action' generate_substitutions_for(IDENT, STRINGS -> SUBSTITUTES)

  'rule' generate_substitutions_for(Id, nil -> nil):
        
  'rule' generate_substitutions_for(Id, list(H,Tail) -> list(S,Rest)):
         where(substitution(Id, H) -> S)
         generate_substitutions_for(Id, Tail -> Rest)

-----------------------------------------------------------------------------
-- SUBSTITUTION LIST OPERATIONS
-----------------------------------------------------------------------------

/* Generate substitutions lists based on a list of lists of substitutions. */
'action' cartesian_of_N_substitutions(SUBSTITUTES_LIST -> SUBSTITUTES_LIST)

  'rule' cartesian_of_N_substitutions(nil -> nil):
            
  'rule' cartesian_of_N_substitutions(Vals -> NewVals):
        (|
          where(Vals -> list(Val,nil))
          make_lists_of_each_substitution(Val -> NewVals)
        ||
          where(Vals -> list(H1,list(H2,nil)))
          cartesian_substitutions(H1, H2 -> NewVals)
        ||
          where(Vals -> list(H1,list(H2,list(H3,Tail))))
          cartesian_substitutions(H1, H2 -> TempRes)
          cartesian_rest_substitutions(TempRes,list(H3,Tail) -> NewVals)
        |)


'action' make_lists_of_each_substitution(SUBSTITUTES -> SUBSTITUTES_LIST)

  'rule' make_lists_of_each_substitution(nil -> nil):

  'rule' make_lists_of_each_substitution(list(Sub,Subs) -> list(list(Sub,nil),Rest)):
         make_lists_of_each_substitution(Subs -> Rest)
                                                                    
'action' cartesian_rest_substitutions(SUBSTITUTES_LIST, SUBSTITUTES_LIST -> SUBSTITUTES_LIST)

  'rule' cartesian_rest_substitutions(TempRes, nil -> TempRes): 

  'rule' cartesian_rest_substitutions(TempRes, list(H,Tail) -> Result):
         call_append_on_each_substitutions(H, TempRes -> Appended)
         cartesian_rest_substitutions(Appended, Tail -> Result)

'action' call_append_on_each_substitutions(SUBSTITUTES, SUBSTITUTES_LIST -> SUBSTITUTES_LIST)

  'rule' call_append_on_each_substitutions(VE, list(H,nil) -> Result):
         append_elems_substitutions(H, VE -> Result)

  'rule' call_append_on_each_substitutions(VE, list(H,Tail) -> Result):
         append_elems_substitutions(H, VE -> ResStart)
         call_append_on_each_substitutions(VE, Tail -> ResEnd)
         concat_substitutions_lists(ResStart, ResEnd -> Result)

'action' append_elems_substitutions(SUBSTITUTES, SUBSTITUTES -> SUBSTITUTES_LIST)

  'rule' append_elems_substitutions(ToThisList, nil -> nil):
    
  'rule' append_elems_substitutions(ToThisList, FromThisList -> list(ResH,ResT)):
         where(FromThisList -> list(H,Tail))
         where(SUBSTITUTES'list(H,nil) -> NewTail) --'
         concat_substitutions(ToThisList,NewTail -> ResH)
         append_elems_substitutions(ToThisList,Tail -> ResT)

/* Make the possible combinations of substitutions from two substitution lists. */            
'action' cartesian_substitutions(SUBSTITUTES, SUBSTITUTES -> SUBSTITUTES_LIST)
  'rule' cartesian_substitutions(list(HFirst,TFirst),Second -> Result):
         concat_each_substitution(HFirst,Second -> FirstRes)
         cartesian_substitutions(TFirst,Second -> RestRes)
         concat_substitutions_lists(FirstRes,RestRes -> Result)

  /* If first list is empty, we're done going through. */          
  'rule' cartesian_substitutions(nil,Second -> nil) 

'action' concat_each_substitution(SUBSTITUTE, SUBSTITUTES -> SUBSTITUTES_LIST)

  'rule' concat_each_substitution(VE,list(H,Tail) -> list(FirstList,RestLists)):
         where(SUBSTITUTES'list(VE,list(H,nil)) -> FirstList) --'
         concat_each_substitution(VE,Tail -> RestLists)

  'rule' concat_each_substitution(VE,nil -> nil)
                                                                                                                        
'action' concat_substitutions_lists(SUBSTITUTES_LIST, SUBSTITUTES_LIST -> SUBSTITUTES_LIST)
  'rule' concat_substitutions_lists(nil,nil -> nil):

  'rule' concat_substitutions_lists(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_substitutions_lists(list(H,T),nil -> list(H,T)):

  'rule' concat_substitutions_lists(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_substitutions_lists(T,list(H2,T2) -> CT)

'action' concat_substitutions(SUBSTITUTES, SUBSTITUTES -> SUBSTITUTES)
  'rule' concat_substitutions(nil,nil -> nil):

  'rule' concat_substitutions(nil,list(H,T) -> list(H,T)):
         
  'rule' concat_substitutions(list(H,T),nil -> list(H,T)):

  'rule' concat_substitutions(list(H,T), list(H2,T2) -> list(H,CT)):
         concat_substitutions(T,list(H2,T2) -> CT)

-----------------------------------------------------------------------------
-- CHECKS BEFORE UNFOLDING
-----------------------------------------------------------------------------
'action' make_checks(SCHEME_DEF -> INT)

  'rule' make_checks(sdef(P, Id, Params, C) -> ErrCount):
         check_class(C -> ErrCount)


'action' check_class(CLASS -> INT)

  'rule' check_class(basic(Ds) -> ErrCount):
         check_decls(Ds, 0 -> ErrCount)

  'rule' check_class(extend(Left,Right) -> ErrCount):
         check_class(Left -> ErrCount1) 
         check_class(Right -> ErrCount2)
         where(ErrCount1 + ErrCount2 -> ErrCount)

  'rule' check_class(hide(Hs,C) -> ErrCount):
         check_class(C -> ErrCount)

  'rule' check_class(rename(Rs,C) -> ErrCount):
         check_class(C -> ErrCount)

  'rule' check_class(with(P,OE,C) -> ErrCount):
         check_class(C -> ErrCount)

  'rule' check_class(instantiation(Name,Parm) -> 0):

  'rule' check_class(nil -> 0):


'action' check_decls(DECLS, INT -> INT)

  'rule' check_decls(list(value_decl(P, VDs), Ds), CurrCount -> ErrCount):
         check_for_circular_funcs(VDs, VDs, CurrCount -> CircCount)
         check_decls(Ds, CircCount -> ErrCount)

  'rule' check_decls(list(variable_decl(P, VDs), Ds), CurrCount -> ErrCount):
         check_array_index_types(VDs, CurrCount -> ArrCount)
         check_decls(Ds, ArrCount -> ErrCount)

  'rule' check_decls(list(O,Ds), CurrCount -> ErrCount):
         check_decls(Ds, CurrCount -> ErrCount)

  'rule' check_decls(nil, CurrCount -> CurrCount)

-----------------------------------------------------------------------------
-- ARRAY INDEX TYPE CHECKING
-----------------------------------------------------------------------------

'action' check_array_index_types(VARIABLE_DEFS, INT -> INT)

  'rule' check_array_index_types(list(VD,VDs), CurrCount -> Total):
         (|
           where(VD -> single(P,Id,T,Init))
           check_array_type_expr(T, CurrCount -> Count)
         ||
           /* TODO: Ignoring multiple variable defs. Handle? Also ignoring generic variable defs, they 
              should be unfolded at this point. */
           where(CurrCount -> Count)
         |)
         check_array_index_types(VDs, Count -> Total)

  'rule' check_array_index_types(nil, CurrCount -> CurrCount):


'action' check_array_type_expr(TYPE_EXPR, INT -> INT)

  'rule' check_array_type_expr(array(Dom,Rng), CurrCount -> Count)
         check_index_type_expr(Dom, CurrCount -> Count)

  'rule' check_array_type_expr(named_type(Name), CurrCount -> Count)
         where(Name -> name(P,id_op(Id)))
         Lookup_type_id(P, Id -> type_id(I))
         I'Def -> TE --'
         where(TE -> abbreviation(T)) /* Could also be no_def. */
         /* Basically, only do something if it's an abbreviation for an array type. */
         check_array_type_expr(T, CurrCount -> Count) 

  'rule' check_array_type_expr(O, CurrCount -> CurrCount):
         /* DEBUG */
         /* Putmsg("No array type") */


'action' check_index_type_expr(TYPE_EXPR, INT -> INT)

  'rule' check_index_type_expr(subtype(T,R), CurrCount -> Count):
         /* Check if the typing is Int, Nat or a subtype thereof (can be unified with int) 
            TODO: check correctness. */
         (|
           Unify_typing_with(T, TYPE_EXPR'int) --'
           check_int_restriction(R, CurrCount -> Count)
         ||
           where(R -> restriction(P,_))
           Puterror(P)
           Putmsg("Array index type must be an integer subtype")
           Putnl()
           where(CurrCount + 1 -> Count)
         |)

  'rule' check_index_type_expr(named_type(Name), CurrCount -> Count):
         where(Name -> name(P,id_op(Id)))
         Lookup_type_id(P, Id -> type_id(I))
         I'Def -> TE --'
         where(TE -> abbreviation(T)) /* Could also be no_def. */
         /* Basically, only do something if it's a subtype. */
         check_index_type_expr(T, CurrCount -> Count) 


'action' check_int_restriction(RESTRICTION, INT -> INT)

  'rule' check_int_restriction(restriction(P,VE), CurrCount -> Count):
         (|
           where(VE -> val_infix(P1,VEL,OP,ranged_set(P2,VEL1,VER1)))
           where(OP -> isin)
           where(VEL -> literal_expr(_,int(Id)))
           id_to_string(Id -> SId)
           String_to_int(SId -> I)
           eq(I,0)
           where(CurrCount -> Count) 
         ||
           where(VE -> ax_infix(P1,VEL,CONN,VER,_))
           where(CONN -> CONNECTIVE'and) --'
           where(VEL -> val_infix(_,VEL1,OP1,VER1))
           where(VER -> val_infix(_,VEL2,OP2,VER2))
           where(OP1 -> OP'ge) --'
           where(VER1 -> literal_expr(_,int(Id)))
           id_to_string(Id -> SId)
           String_to_int(SId -> I)
           eq(I,0)
           where(OP2 -> OP'lt) --'
           where(CurrCount -> Count)
         ||
           Puterror(P)
           Putmsg("Array index type must be a finite range of integers starting at zero (either membership of {0..n} or restricted by an expression of the form 'idx >= 0 /\ idx < n' where n is the dimension of the array).")
           Putnl()
           where(CurrCount + 1 -> Count)
         |)
-----------------------------------------------------------------------------
-- CIRCULARITY CHECKING IN FUNCTIONS (ALSO RECURSIVENESS)
-----------------------------------------------------------------------------

'action' check_for_circular_funcs(VALUE_DEFS, VALUE_DEFS, INT -> INT)

  'rule' check_for_circular_funcs(list(VD,VDs), AllValueDefs, CurrCount -> Total):
         (|
           where(VD -> exp_fun(P,T,A,Body,Po,Pr,R))
           check_for_circular_body(exp_fun(P,T,A,Body,Po,Pr,R),AllValueDefs, CurrCount -> Count)
         ||
           where(CurrCount -> Count)
         |)
         check_for_circular_funcs(VDs, AllValueDefs, Count -> Total)

  'rule' check_for_circular_funcs(nil, _, CurrCount -> CurrCount):

'action' check_for_circular_body(VALUE_DEF, VALUE_DEFS, INT -> INT)

  'rule' check_for_circular_body(exp_fun(P,T,A,Body,Po,Pr,R), VDs, CurrCount -> Count):
         where(A -> form_appl(_,id_op(Id),_))
         check_expr_for_circularity(list(Id,nil), Body, VDs, CurrCount -> Count)


/* TODO: only looking at a subset of value expressions which make sense according to which expressions are 
   included in the subset covered by Peter's parser and what can occur in function bodies. 
   This may need to be extended. */
/* NOTE: this uses the same approach as checking for circular named transition operator definitions in the 
   type checker. */
'action' check_expr_for_circularity(IDENTS, VALUE_EXPR, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity(Ids, application(P,VE,A), VDs, CurrCount -> Total): 
         check_expr_for_circularity_fun_params(Ids, A, VDs, CurrCount -> Count)
         where(VE -> named_val(_,name(_,id_op(NId))))
         (|
           is_id_in_idents(NId,Ids)
           Puterror(P)
           Putmsg("Circular reference found in function: ")
           Print_id(NId)
           Putnl()
           where(Count + 1 -> Total)
         ||
           check_def_of_id_for_circularity(list(NId,Ids),NId,VDs, Count -> Total)
         |)

  'rule' check_expr_for_circularity(Ids, bracket(P,VE), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> Total)

  'rule' check_expr_for_circularity(Ids, ax_infix(P,VE1,C,VE2,P2), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE1, VDs, CurrCount -> TempCount)
         check_expr_for_circularity(Ids, VE2, VDs, TempCount -> Total)

  'rule' check_expr_for_circularity(Ids, val_infix(P,VE1,O,VE2), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE1, VDs, CurrCount -> TempCount)
         check_expr_for_circularity(Ids, VE2, VDs, TempCount -> Total)

  'rule' check_expr_for_circularity(Ids, ax_prefix(P,C,VE), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> Total)

  'rule' check_expr_for_circularity(Ids, val_prefix(P,O,VE), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> Total)

  'rule' check_expr_for_circularity(Ids, if_expr(P,I,T,R,EIs,E), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, I, VDs, CurrCount -> TempCount)
         check_expr_for_circularity(Ids, T, VDs, TempCount -> TempCount2)
         check_expr_for_circularity_elsif_branches(Ids, EIs, VDs, TempCount2 -> TempCount3)
         where(E -> else(P2,VE))
         check_expr_for_circularity(Ids, VE, VDs, TempCount3 -> Total)

  'rule' check_expr_for_circularity(Ids, case_expr(P,VE,P2,CBs), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> TempCount)
         check_expr_for_circularity_case_branches(Ids, CBs, VDs, TempCount -> Total)

  'rule' check_expr_for_circularity(Ids, array_access(P,VE1,VE2), VDs, CurrCount -> Total):
         (|
           where(VE1 -> named_val(_, Name))
           Lookup_variable_name(Name -> variable_id(NId))
           NId'Type -> Type  --'
           /* Check if it is actually a generic variable access by checking if the type matches */
           Match(Type,down,generic(any,any))
           check_expr_for_circularity(Ids, genvar_access(P, VE1, list(VE2,nil)), VDs, CurrCount -> Total)
         ||
           check_expr_for_circularity(Ids, VE1, VDs, CurrCount -> TempCount)
           check_expr_for_circularity(Ids, VE2, VDs, TempCount -> Total)
         |)

  'rule' check_expr_for_circularity(Ids, array_expr(P,T,VE), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> Total)

  'rule' check_expr_for_circularity(Ids, genvar_access(P,VE,VEs), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> TempCount)
         check_expr_for_circularity_value_exprs(Ids, VEs, VDs, TempCount -> Total)

  /* TODO: For now, just ignoring everything for which a rule is not defined. */ 
  'rule' check_expr_for_circularity(Ids, Other, VDs, CurrCount -> CurrCount):


'action' check_expr_for_circularity_elsif_branches(IDENTS, ELSIF_BRANCHES, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_elsif_branches(Ids, nil, VDs, CurrCount -> CurrCount)

  'rule' check_expr_for_circularity_elsif_branches(Ids, list(EI, EIs), VDs, CurrCount -> Total):
         check_expr_for_circularity_elsif_branch(Ids, EI, VDs, CurrCount -> TempCount)
         check_expr_for_circularity_elsif_branches(Ids, EIs, VDs, TempCount -> Total)


'action' check_expr_for_circularity_elsif_branch(IDENTS, ELSIF_BRANCH, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_elsif_branch(Ids, elsif(P,VE1,VE2,P2), VDs, CurrCount -> Total)
         check_expr_for_circularity(Ids, VE1, VDs, CurrCount -> TempCount)
         check_expr_for_circularity(Ids, VE2, VDs, TempCount -> Total)


'action' check_expr_for_circularity_case_branches(IDENTS, CASE_BRANCHES, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_case_branches(Ids, nil, VDs, CurrCount -> CurrCount)

  'rule' check_expr_for_circularity_case_branches(Ids, list(CB,CBs), VDs, CurrCount -> Total):
         check_expr_for_circularity_case_branch(Ids, CB, VDs, CurrCount -> TempCount)
         check_expr_for_circularity_case_branches(Ids, CBs, VDs, TempCount -> Total)


'action' check_expr_for_circularity_case_branch(IDENTS, CASE_BRANCH, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_case_branch(Ids, case(P,Pa,VE,P2), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> Total)


/* Ignoring the rest of the function params - seems that the first element contains the list of relevant value expressions. */
'action' check_expr_for_circularity_fun_params(IDENTS, ACTUAL_FUNCTION_PARAMETERS, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_fun_params(Ids, list(fun_arg(P,VEs),Rest), VDs, CurrCount -> Total):
         check_expr_for_circularity_value_exprs(Ids, VEs, VDs, CurrCount -> Total)


'action' check_expr_for_circularity_value_exprs(IDENTS, VALUE_EXPRS, VALUE_DEFS, INT -> INT)

  'rule' check_expr_for_circularity_value_exprs(Ids, nil, VDs, CurrCount -> CurrCount):

  'rule' check_expr_for_circularity_value_exprs(Ids, list(VE,VEs), VDs, CurrCount -> Total):
         check_expr_for_circularity(Ids, VE, VDs, CurrCount -> TempCount) 
         check_expr_for_circularity_value_exprs(Ids, VEs, VDs, TempCount -> Total)


'action' check_def_of_id_for_circularity(IDENTS, IDENT, VALUE_DEFS, INT -> INT)

  'rule' check_def_of_id_for_circularity(Ids, Id, list(H,Tail), CurrCount -> Total):
         check_def_of_id_for_circularity2(Ids, Id, H, list(H,Tail), CurrCount -> TempCount)
         check_def_of_id_for_circularity(Ids, Id, Tail, TempCount -> Total)

  'rule' check_def_of_id_for_circularity(Ids, Id, nil, CurrCount -> CurrCount):


'action' check_def_of_id_for_circularity2(IDENTS, IDENT, VALUE_DEF, VALUE_DEFS, INT -> INT)

  'rule' check_def_of_id_for_circularity2(Ids, Id, exp_fun(P,T,A,Body,Po,Pr,R), VDs, CurrCount -> Total):
         (|
           where(A -> form_appl(_,id_op(Id2),_))
           eq(Id,Id2)
           check_expr_for_circularity(Ids,Body,VDs, CurrCount -> Total)
         ||
           where(CurrCount -> Total)
         |)

  'rule' check_def_of_id_for_circularity2(Ids, Id, Other, VDs, CurrCount -> CurrCount):


'condition' is_id_in_idents(IDENT, IDENTS)

     'rule' is_id_in_idents(NId,list(Id,Ids)):
            (|
              eq(NId,Id)
            ||
              is_id_in_idents(NId,Ids)
            |)
