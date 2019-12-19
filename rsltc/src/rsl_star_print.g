'module' rsl_star_print

'use' ast ext types print pp

'export'
    write_scheme_def

'action' write_scheme_def(SCHEME_DEF)

  'rule' write_scheme_def(sdef(P, ID, PARMS, C)):
         [|
           where(C -> extend(instantiation(N,_),_))
           write_name(N)
           WriteFile("\n")
         |]
         WriteFile("scheme ")
         write_id(ID)
         /* TODO: Skipped object defs (parms) */
         WriteFile(" = \n")
         write_class(C)

'action' write_class(CLASS)

  'rule' write_class(basic(DS)):
         WriteFile("class\n")
         write_decls(DS)
         WriteFile("\nend")

  'rule' write_class(extend(L, R)):
         WriteFile("extend ")
         write_class(L)
         WriteFile(" with \n")
         write_class(R)

/* TODO: Skipped for now. */
  'rule' write_class(hide(DEFS, C)):
         WriteFile("hide ")
         write_defineds(DEFS)
         WriteFile(" in ")
         write_class(C)

  'rule' write_class(rename(RS, C)):
         WriteFile("use ")
         write_renames(RS)
         WriteFile(" in ")
         write_class(C)

  'rule' write_class(with(P, OS, C)):
         WriteFile("with ")
         write_objects(OS)
         WriteFile(" in ")
         write_class(C)

  'rule' write_class(instantiation(N, nil)):
         write_name(N)

  'rule' write_class(instantiation(N, OS)):
         write_name(N)
         WriteFile("(")
         write_objects(OS)
         WriteFile(")")

'action' write_renames(RENAMES)

  'rule' write_renames(list(H, nil)):
         write_rename(H)
         
  'rule' write_renames(list(H, T)):
         write_rename(H)
         WriteFile(", ")
         write_renames(T)
        
'action' write_rename(RENAME)

  'rule' write_rename(rename(L, R)):
         write_defined(L)
         WriteFile(" for ")
         write_defined(R)

'action' write_defineds(DEFINEDS)

  'rule' write_defineds(list(H, nil)):
         write_defined(H)

  'rule' write_defineds(list(H, T)):
         write_defined(H)
         WriteFile(", ")
         write_defineds(T)

'action' write_defined(DEFINED)

  'rule' write_defined(def_name(P, ID)):
         write_id_or_op(ID)

  'rule' write_defined(disamb(P, ID, T)):
         write_id_or_op(ID)
         WriteFile(" : ")
         write_type(T)
        
'action' write_decls(DECLS)

  'rule' write_decls(list(H, nil)):
         write_decl(H)

  'rule' write_decls(list(H, T)):
         write_decl(H)
         WriteFile("\n")
         write_decls(T)

  'rule' write_decls(nil):

'action' write_decl(DECL)

  'rule' write_decl(type_decl(P, DS)):
         WriteFile("type\n")
         write_type_defs(DS)

  'rule' write_decl(value_decl(P, DS)):
         WriteFile("value\n")
         write_value_defs(DS)

  'rule' write_decl(variable_decl(P, DS)):
         WriteFile("variable\n")
         write_variable_defs(DS)

/*  'rule' write_decl(channel_decl(P, DS)):
         WriteFile("channel ")
         write_channel_defs(DS)

  'rule' write_decl(object_decl(P, DS)):
         WriteFile("object ")
         write_object_defs(DS)*/

  'rule' write_decl(axiom_decl(P, DS)):
         /* Don't write the axiom defs, they should have been unfolded to "initialisations" 
            of unfolded generic values (constants). */

  'rule' write_decl(test_case_decl(P, DS)):
         WriteFile("test_case ")
         write_test_case_defs(DS)

  'rule' write_decl(trans_system_decl(P, DS))
	 WriteFile("transition_system\n")
	 write_transition(DS)

  'rule' write_decl(property_decl(P, DS))
	 WriteFile("ltl_assertion\n")
	 write_assertion(DS)

'action' write_type_defs(TYPE_DEFS)

  'rule' write_type_defs(list(H, nil)):
         write_type_def(H)
         WriteFile("\n")

  'rule' write_type_defs(list(H, T)):
         write_type_def(H)
         WriteFile(",\n")
         write_type_defs(T)

'action' write_type_def(TYPE_DEF)

  'rule' write_type_def(sort(P, ID)):
         write_id(ID)

  'rule' write_type_def(abbrev(P, ID, T)):
         write_id(ID)
         WriteFile(" = ")
         write_type(T)

  'rule' write_type_def(variant(P, ID, VS)):
         write_id(ID)
         WriteFile(" == ")
         write_variants(VS)

  'rule' write_type_def(record(P, ID, CS)):
         write_id(ID)
         WriteFile(" :: ")
         write_record_components(CS)

  'rule' write_type_def(union(P, ID, CS)):
         write_id(ID)
         WriteFile(" = ")
         write_choices(CS)

'action' write_variants(VARIANTS)

  'rule' write_variants(list(H, nil)):
         write_variant(H)

  'rule' write_variants(list(H, T)):
         write_variant(H)
         WriteFile(" | ")
         write_variants(T)

'action' write_variant(VARIANT)

  'rule' write_variant(record(P, C, CS)):
         write_constructor(C)
         [|
           ne(CS, nil)
           WriteFile("(")
           write_components(CS)
           WriteFile(")")
         |]

'action' write_components(COMPONENTS)

  'rule' write_components(list(H, nil)):
         write_component(H)

  'rule' write_components(list(H, T)):
         write_component(H)
         WriteFile(", ")
         write_components(T)

  'rule' write_components(nil):
        
'action' write_record_components(COMPONENTS)

  'rule' write_record_components(list(H, nil)):
         write_component(H)

  'rule' write_record_components(list(H, T)):
         write_component(H)
         WriteFile("\n")
         write_record_components(T)

  'rule' write_record_components(nil):

'action' write_component(COMPONENT)

  'rule' write_component(component(P, D, T, R)):
         [|
           ne(D, nil)
           write_destructor(D)
           WriteFile(" : ")
         |]
         write_type(T)
         [|
           ne(R, nil)
           WriteFile(" <-> ")
           write_reconstructor(R)
         |]

'action' write_constructor(CONSTRUCTOR)

  'rule' write_constructor(constructor(P, ID)):
         write_id_or_op(ID)

  'rule' write_constructor(con_ref(I))
	     I'Ident -> ID --'
         write_id_or_op(ID)

  'rule' write_constructor(wildcard):
         WriteFile("_")

'action' write_destructor(DESTRUCTOR)

  'rule' write_destructor(destructor(P, ID)):
         write_id_or_op(ID)

  'rule' write_destructor(dest_ref(I))
	     I'Ident -> ID --'
         write_id_or_op(ID)

'action' write_reconstructor(RECONSTRUCTOR)

  'rule' write_reconstructor(reconstructor(P, ID)):
         write_id_or_op(ID)

  'rule' write_reconstructor(recon_ref(I))
	     I'Ident -> ID --'
         write_id_or_op(ID)

'action' write_choices(CHOICES)

  'rule' write_choices(list(H, nil)):
         write_choice(H)

  'rule' write_choices(list(H, T)):
         write_choice(H)
         WriteFile(" | ")
         write_choices(T)

'action' write_choice(CHOICE)

  'rule' write_choice(choice(P, N)):
         write_name(N)
  
  'rule' write_choice(nil):
         WriteFile("_")

'action' write_value_defs(VALUE_DEFS)

  'rule' write_value_defs(list(H, nil)):
         write_value_def(H)

  'rule' write_value_defs(list(H, T)):
         write_value_def(H)
         WriteFile(",\n\n")
         write_value_defs(T)

'action' write_value_def(VALUE_DEF)

  'rule' write_value_def(typing(P, T)):
         write_typing(T)

  'rule' write_value_def(exp_val(P, T, E)):
         write_typing(T)
         WriteFile(" = ")
         write_expr(E)

  'rule' write_value_def(imp_val(P, T, R)):
         write_typing(T)
         write_restriction(R)

  'rule' write_value_def(exp_fun(P, T, A, E, POST, PRE, _)):
         write_typing(T)
         WriteFile("\n")
         write_formal_function_application(A)
         WriteFile(" is\n  ")
	     (|
           Lower_expr_precedence(E, 14)
           where(E -> E1)
         ||
           where(VALUE_EXPR'bracket(P,E) -> E1) --'
    	 |)
         write_expr(E1)
         write_opt_post_condition(POST)
         write_pre_condition(PRE)

  'rule' write_value_def(imp_fun(P, T, A, POST, PRE)):
         write_typing(T)
         WriteFile(" ")
         write_formal_function_application(A)
         write_post_condition(POST)
         write_pre_condition(PRE)

  'rule' write_value_def(gen_val(P, Id, TS, T)):
         write_id(Id)
         WriteFile("[")
         write_typings(TS)
         WriteFile("] : ")
         write_type(T)

'action' write_formal_function_application(FORMAL_FUNCTION_APPLICATION)

  'rule' write_formal_function_application(form_appl(P, id_op(ID), PARMS)):
         write_id(ID)
         write_formal_function_parameters(PARMS)

  'rule' write_formal_function_application(form_appl(P, op_op(OP), PARMS)):
         where(PARMS -> list(PS, nil))
         (|
           where(PS -> form_parm(P1, list(B, nil)))
           write_op(OP)
           WriteFile(" ")
           write_binding(B)
         ||
           where(PS -> form_parm(P1, list(L, list(R, nil))))
           write_binding(L)
           WriteFile(" ")
           write_op(OP)
           WriteFile(" ")
           write_binding(R)
         |)

'action' write_formal_function_parameters(FORMAL_FUNCTION_PARAMETERS)

  'rule' write_formal_function_parameters(list(H, T)):
         write_formal_function_parameter(H)
         write_formal_function_parameters(T)

  'rule' write_formal_function_parameters(nil):


'action' write_formal_function_parameter(FORMAL_FUNCTION_PARAMETER)

  'rule' write_formal_function_parameter(form_parm(P, BS)):
         WriteFile("(")
         write_bindings(BS)
         WriteFile(")")


'action' write_variable_defs(VARIABLE_DEFS)

  'rule' write_variable_defs(list(H, nil)):
         write_variable_def(H)

  'rule' write_variable_defs(list(H, T)):
         write_variable_def(H)
         WriteFile(",\n")
         write_variable_defs(T)

'action' write_variable_def(VARIABLE_DEF)

  'rule' write_variable_def(single(P, ID, T, INIT)):
         write_id(ID)
         WriteFile(" : ")
         write_type(T)
         write_initialisation(INIT)

  'rule' write_variable_def(multiple(P, IDS, T)):
         write_ids(IDS)
         WriteFile(" : ")
         write_type(T)

  'rule' write_variable_def(Other):

'action' write_test_case_defs(TEST_CASE_DEFS)

  'rule' write_test_case_defs(list(H, nil)):
         write_test_case_def(H)

  'rule' write_test_case_defs(list(H, T)):
         write_test_case_def(H)
         WriteFile(",\n")
         write_test_case_defs(T)

'action' write_test_case_def(TEST_CASE_DEF)

  'rule' write_test_case_def(test_case_def(P, ON, E)):
         [|
           where(ON -> ident(ID))
           WriteFile("[")
           write_id(ID)
           WriteFile("]\n  ")
         |]
         write_expr(E)

'action' write_initialisation(INITIALISATION)

  'rule' write_initialisation(initial(E)):
         WriteFile(" := ")
         write_expr(E)

  'rule' write_initialisation(nil):

-------------------------------------------------
-- Transition systems and assertions
-------------------------------------------------
'action' write_transition(TRANSITION_SYS_DEFS)

  'rule' write_transition(list(trans_sys_def(_, Ident,Desc), Rest)):
	 WriteFile("[")
	 write_id(Ident)
     WriteFile("]\n")
     write_transition_system_description(Desc)
	 write_transition(Rest)
  'rule' write_transition(nil):

'action' write_transition_system_description(SYSTEM_DESCRIPTION)

  'rule' write_transition_system_description(no_input(VarDecls, TransOp)):
         WriteFile("local\n")
         where(VarDecls -> variable_decl(P, DS))
         write_variable_defs(DS)
         WriteFile("\nin\n")
         write_trans_op(TransOp)
         WriteFile("\nend\n")

  'rule' write_transition_system_description(with_constraint(VarDecls, Constraint, TransOp)):
         WriteFile("variable\n")
         where(VarDecls -> variable_decl(P, DS))
         write_variable_defs(DS)
         WriteFile("\ninit_constraint\n")
         write_constraint(Constraint)
         WriteFile("\ntransition_rules\n")
         write_trans_op(TransOp)
         WriteFile("\nend\n")


  'rule' write_transition_system_description(as_relation(VarDecls, Constraint, TransRel)):
         WriteFile("variable\n")
         where(VarDecls -> variable_decl(P, DS))
         write_variable_defs(DS)
         WriteFile("\ninit_constraint\n")
         write_constraint(Constraint)
         WriteFile("\ntransition_relation\n")
         write_transrel(TransRel)
         WriteFile("\nend\n")


'action' write_constraint(CONSTRAINT)

  'rule' write_constraint(constraint(_, Cs))
         write_conjunctions(Cs)


'action' write_conjunctions(CONJUNCTION_LIST)

  'rule' write_conjunctions(list(VE, nil)):
         write_expr(VE)
   
  'rule' write_conjunctions(list(VE, Rest)):
         write_expr(VE)
         WriteFile(" /\\\n")
         write_conjunctions(Rest)


'action' write_transrel(TRANSREL)

  'rule' write_transrel(transrel(_, VE))
         write_expr(VE)


'action' write_trans_op(TRANSITION_OPERATOR)

  'rule' write_trans_op(equal_priority(L, R, G)):
         write_trans_op(L)
         WriteFile("\n[=]\n")
         write_trans_op(R)
        
  'rule' write_trans_op(greater_priority(L, R, G)):
         write_trans_op(L)
         WriteFile("\n[>]\n")
         write_trans_op(R)

  'rule' write_trans_op(bracketed(C, G)):
         WriteFile("(")
         write_trans_op(C)
         WriteFile(")")
            
  'rule' write_trans_op(guarded_command(C, G)):
         write_guarded_command(C)

  'rule' write_trans_op(trans_naming(C, G)):
         WriteFile("trans naming")

  'rule' write_trans_op(trans_ident(C)):
         WriteFile("IDENT:")
         write_id(C)
            
'action' write_guarded_command(GUARDED_COMMAND)

  'rule' write_guarded_command(guarded_cmd(Id,G,Cs)):
         [|
           ne(Id,nil)
           WriteFile("[")
           write_optid(Id)
           WriteFile("]\n")
         |]
         WriteFile("  ")
         write_expr(G)
         WriteFile("\n  ==>\n  ")
         write_commands(Cs)

  'rule' write_guarded_command(else_cmd(Id,Cs)):
         [|
           ne(Id,nil)
           WriteFile("[")
           write_optid(Id)
           WriteFile("]\n")
         |]
         WriteFile("else\n  ==>\n  ")
         write_commands(Cs)

  'rule' write_guarded_command(Other):
         /* TODO: ???*/

            
'action' write_commands(COMMANDS)

  'rule' write_commands(nil):

  'rule' write_commands(list(C,nil)):
         write_command(C)

  'rule' write_commands(list(C,Cs)):
         write_command(C)
         WriteFile(",\n  ")
         write_commands(Cs)

'action' write_command(COMMAND)

  'rule' write_command(cmd(_,N,VE)):
         write_name(N)
         WriteFile(" = ")
         write_expr(VE)

  'rule' write_command(array_cmd(_,N,Is,VE)):
         write_name(N)
         write_array_accesses(Is)
         WriteFile(" = ")
         write_expr(VE)

  'rule' write_command(r_cmd(VE)):
         write_expr(VE)

            
'action' write_assertion(PROPERTY_DECLS)

  'rule' write_assertion(list(property_def(_, Id,TS,VE), nil)):
	 WriteFile("[")
	 write_id(Id)
     WriteFile("] ")
     write_id(TS)
     WriteFile(" |- ")
     write_expr(VE)
            
  'rule' write_assertion(list(property_def(_, Id,TS,VE), Rest)):
	 WriteFile("[")
	 write_id(Id)
     WriteFile("] ")
     write_id(TS)
     WriteFile(" |- ")
     write_expr(VE)
     WriteFile(",\n")
	 write_assertion(Rest)

  'rule' write_assertion(nil):


'action' write_objects(OBJECT_EXPRS)

  'rule' write_objects(list(Object,nil)):
         write_object(Object)

  'rule' write_objects(list(Object,Objects)):
         write_object(Object)
         WriteFile(", ")
         write_objects(Objects)

  'rule' write_objects(nil):

'action' write_object(OBJECT_EXPR)

  'rule' write_object(obj_name(N)):
         write_name(N)

  'rule' write_object(obj_appl(Obj, A)):
         write_object(Obj)
         WriteFile("[")
         write_exprs(A)
         WriteFile("]")

  'rule' write_object(obj_array(TS, Obj)):
         WriteFile("[|")
         write_typings(TS)
         WriteFile(" :- ")
         write_object(Obj)
         WriteFile("|]")

  'rule' write_object(obj_fit(Obj, F)):
         write_object(Obj)
         WriteFile("{")
         write_renames(F)
         WriteFile("}")

  'rule' write_object(obj_occ(_, I)):
--	 [|
--	   I'Qualifier -> list(Id,Ids) --'
--	   write_qualifier(list(Id,Ids))
--	 |]
         I'Ident -> ID --'
         write_id(ID)

  'rule' write_object(qual_occ(_, Obj, I)):
         write_object(Obj)
         WriteFile(".")
         I'Ident -> ID --'
         write_id(ID)   
-------------------------------------------------
-- Type expressions
-------------------------------------------------

'action' write_type(TYPE_EXPR)

  'rule' write_type(unit):
         WriteFile("Unit")

  'rule' write_type(bool):
         WriteFile("Bool")

  'rule' write_type(int):
         WriteFile("Int")

  'rule' write_type(nat):
         WriteFile("Nat")

  'rule' write_type(real):
         WriteFile("Real")

  'rule' write_type(text):
         WriteFile("Text")

  'rule' write_type(char):
         WriteFile("Char")

  'rule' write_type(time):
         WriteFile("Time")

  'rule' write_type(named_type(N)):
         write_name(N)

  'rule' write_type(defined(I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)

  'rule' write_type(product(PR)):
         write_type_prod(PR)

  'rule' write_type(fin_set(T)):
         (|
           Lower_type_precedence(T, 1)
           where(T -> T1)
         ||
           where(TYPE_EXPR'bracket(T) -> T1) --'
         |)
         write_type(T1)
         WriteFile("-set")

  'rule' write_type(infin_set(T)):
         (|
           Lower_type_precedence(T, 1)
           where(T -> T1)
         ||
           where(TYPE_EXPR'bracket(T) -> T1) --'
         |)
         write_type(T1)
         WriteFile("-infset")

  'rule' write_type(fin_list(T)):
         (|
           Lower_type_precedence(T, 1)
           where(T -> T1)
         ||
           where(TYPE_EXPR'bracket(T) -> T1) --'
         |)
         write_type(T1)
         WriteFile("-list")

  'rule' write_type(infin_list(T)):
         (|
           Lower_type_precedence(T, 1)
           where(T -> T1)
         ||
           where(TYPE_EXPR'bracket(T) -> T1) --'
         |)
         write_type(T1)
         WriteFile("-inflist")

  'rule' write_type(fin_map(D,R)):
         (|
           Lower_type_precedence(D, 3)
           where(D -> D1)
         ||
           where(TYPE_EXPR'bracket(D) -> D1) --'
         |)
         write_type(D1)
         WriteFile(" -m-> ") 
         write_type(R)

  'rule' write_type(infin_map(D,R)):
         (|
           Lower_type_precedence(D, 3)
           where(D -> D1)
         ||
           where(TYPE_EXPR'bracket(D) -> D1) --'
         |)
         write_type(D1)
         WriteFile(" -~m-> ") 
         write_type(R)

  'rule' write_type(function(D,A,R)):
         (|
           Lower_type_precedence(D, 3)
           where(D -> D1)
         ||
           where(TYPE_EXPR'bracket(D) -> D1) --'
         |)
         write_type(D1)
         write_arrow(A) 
         write_type_res(R)

  'rule' write_type(fun(D,A,R)):
         (|
           Lower_type_precedence(D, 3)
           where(D -> D1)
         ||
           where(TYPE_EXPR'bracket(D) -> D1) --'
         |)
         write_type(D1)
         write_arrow(A) 
         write_result(R)

  'rule' write_type(subtype(single(P,B,T),R)):
         WriteFile("{| ")
         write_binding(B)
         WriteFile(" : ")
         write_type(T)
         write_restriction(R)
         WriteFile(" |}")

  'rule' write_type(bracket(T)):
         WriteFile("(")
         write_type(T)
         WriteFile(")")

  'rule' write_type(any):
         WriteFile("any")

  'rule' write_type(none):
         WriteFile("none")

  'rule' write_type(array(D,R)):
         WriteFile("array ")
         write_type(D)
         WriteFile(" of ")
         write_type(R)

/*  'rule' write_type(generic(T,TS)):
         WriteFile("generic with type ")
         write_type(T)
         WriteFile(" over types ")
         write_types_for_gen(TS) 

  'rule' write_type(poly(N)):
	     write_poly(N)*/

'action' write_type_prod(PRODUCT_TYPE)

  'rule' write_type_prod(nil):

  'rule' write_type_prod(list(H,nil)):
         (|
           Lower_type_precedence(H, 2)
           where(H -> H1)
         ||
           where(TYPE_EXPR'bracket(H) -> H1) --'
         |)
         write_type(H1)

  'rule' write_type_prod(list(H,T)):
         (|
           Lower_type_precedence(H, 2)
           where(H -> H1)
         ||
           where(TYPE_EXPR'bracket(H) -> H1) --'
         |)
         write_type(H1)
         WriteFile(" >< ")
         write_type_prod(T)

'action' write_arrow(FUNCTION_ARROW)

  'rule' write_arrow(partial):
         WriteFile(" -~-> ")

  'rule' write_arrow(total):
         WriteFile(" -> ")

'action' write_type_res(RESULT_DESC)

  'rule' write_type_res(result(ADS,T))
         write_access_descs(ADS)
         write_type(T)

'action' write_access_descs(ACCESS_DESCS)

  'rule' write_access_descs(list(AD, nil)):
	 write_access_desc(AD)
	 WriteFile(" ")

  'rule' write_access_descs(list(AD,ADS)):
	 write_access_desc(AD)
	 WriteFile(" ")
	 write_access_descs(ADS)

  'rule' write_access_descs(nil):

'action' write_access_desc(ACCESS_DESC)

  'rule' write_access_desc(access(M, AS)):
	 write_access_mode(M)
	 write_accesses(AS)

'action' write_access_mode(ACCESS_MODE)

  'rule' write_access_mode(read):
	 WriteFile("read ")

  'rule' write_access_mode(write):
	 WriteFile("write ")

  'rule' write_access_mode(in):
	 WriteFile("in ")

  'rule' write_access_mode(out):
	 WriteFile("out ")

'action' write_accesses(ACCESSES)

  'rule' write_accesses(list(A, nil)):
         write_access(A)

  'rule' write_accesses(list(A, AS)):
         write_access(A)
         WriteFile(", ")
         write_accesses(AS)

  'rule' write_accesses(nil):

'action' write_access(ACCESS)

  'rule' write_access(named_access(_, N)):
	 write_name(N)

  'rule' write_access(enumerated_access(_, AS)):
	 WriteFile("{")
	 write_accesses(AS)
	 WriteFile("}")

  'rule' write_access(completed_access(_, Q)):
	 write_opt_qualification(Q)
	 WriteFile("any")

  'rule' write_access(comprehended_access(_, A, L)):
	 WriteFile("{")
	 write_access(A)
         WriteFile(" | ")
         write_set_limitation(L)
         WriteFile("}")

  'rule' write_access(variable(_, I, Q)):
         write_opt_qualification(Q)
         I'Ident -> Id --'
         write_id(Id)

  'rule' write_access(channel(_, I, Q)):
         write_opt_qualification(Q)
         I'Ident -> Id --'
         write_id(Id)

  'rule' write_access(free):
         WriteFile("free")

'action' write_result(RESULT)

  'rule' write_result(result(T,RD,WR,IN,OUT)):
         [|
           ne(RD, nil)
           WriteFile("read ")
           write_accesses(RD)
           WriteFile(" ")
         |]
         [|
           ne(WR, nil)
           WriteFile("write ")
           write_accesses(WR)
           WriteFile(" ")
         |]
         [|
           ne(IN, nil)
           WriteFile("in ")
           write_accesses(IN)
           WriteFile(" ")
         |]
         [|
           ne(OUT, nil)
           WriteFile("out ")
           write_accesses(OUT)
           WriteFile(" ")
         |]
         write_type(T)
-------------------------------------------------
-- Value expressions
-------------------------------------------------

'action' write_exprs(VALUE_EXPRS)

  'rule' write_exprs(list(H, nil)):
         write_expr(H)

  'rule' write_exprs(list(H, T)):
         write_expr(H)
         WriteFile(", ")
         write_exprs(T)

  'rule' write_exprs(nil):

'action' write_expr(VALUE_EXPR)

  'rule' write_expr(literal_expr(P, E)):
         write_value_literal(E)

  'rule' write_expr(named_val(P, N)):
         write_name(N)

  'rule' write_expr(pre_name(P, N)):
         write_name(N)
         WriteFile("`")

  'rule' write_expr(chaos):
         WriteFile("chaos")

  'rule' write_expr(skip):
         WriteFile("skip")

  'rule' write_expr(stop):
         WriteFile("stop")

  'rule' write_expr(swap):
         WriteFile("swap")

  'rule' write_expr(product(P, ES)):
         WriteFile("(")
         write_exprs(ES)
         WriteFile(")")

  'rule' write_expr(ranged_set(P, L, R)):
         WriteFile("{")
         write_expr(L)
         WriteFile("..")
         write_expr(R)
         WriteFile("}")

  'rule' write_expr(enum_set(P, ES)):
         WriteFile("{")
         write_exprs(ES)
         WriteFile("}")

  'rule' write_expr(comp_set(P, E, L)):
         WriteFile("{")
         write_expr(E)
         WriteFile(" | ")
         write_set_limitation(L)
         WriteFile("}")

  'rule' write_expr(enum_list(P, ES)):
         WriteFile("<.")
         write_exprs(ES)
         WriteFile(".>")

  'rule' write_expr(ranged_list(P, L, R)):
         WriteFile("<.")
         write_expr(L)
         WriteFile("..")
         write_expr(R)
         WriteFile(".>")

  'rule' write_expr(comp_list(P, E, L)):
         WriteFile("<.")
         write_expr(E)
         WriteFile(" | ")
         write_list_limitation(L)
         WriteFile(".>")

  'rule' write_expr(enum_map(P, PS)):
         WriteFile("[")
         write_value_expr_pairs(PS)
         WriteFile("]")

  'rule' write_expr(comp_map(P, PR, L)):
         WriteFile("[")
         write_value_expr_pair(PR)
         WriteFile(" | ")
         write_set_limitation(L)
         WriteFile("]")

  'rule' write_expr(function(P, PARM, E)):
         WriteFile("-\\")
         write_lambda_parameter(PARM)
         WriteFile(":-")
         write_expr(E)

/*-- special code for printing U, R, and W in LTL as infix
  'rule' write_expr(application(P, E, ARGS)):
  	 Is_LTL_Wanted()
	 where(E -> val_occ(_, I, _))
	 Id_of_U -> U
	 Id_of_R -> R
	 Id_of_W -> W
	 (| eq(I, U) || eq(I, R) || eq(I, W) |)
	 where(ARGS -> list(ARG, nil))
	 where(ARG -> fun_arg(_,list(A1, list(A2, nil))))
	 write_expr(bracket(P,A1))
	 WriteFile(" ")
	 write_expr(E)
	 WriteFile(" ")
	 write_expr(bracket(P,A2))
*/	 

  'rule' write_expr(application(P, E, ARGS)):
	 (|
	   Lower_expr_precedence(E, 1)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)
         write_actual_function_parameters(ARGS)

  'rule' write_expr(quantified(P, Q, TS, R)):
         write_quantifier(Q)
         write_typings(TS)
         write_restriction(R)
         
  'rule' write_expr(equivalence(P, L, R, PRE)):
	 (|
	   Lower_expr_precedence(L, 14)
	   where(L -> L1)
	 ||
	   where(VALUE_EXPR'bracket(P,L) -> L1) --'
	 |)
         write_expr(L1)
         WriteFile(" is ")
	 (|
	   Lower_expr_precedence(R, 14)
	   where(R -> R1)
	 ||
	   where(VALUE_EXPR'bracket(P,R) -> R1) --'
	 |)
         write_expr(R1)
         write_pre_condition(PRE)

  'rule' write_expr(post(P, E, POST, PRE)):
	 (|
	   Lower_expr_precedence(E, 14)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)
         write_post_condition(POST)
         write_pre_condition(PRE)

  'rule' write_expr(disamb(P, E, T)):
	 (|
	   Lower_expr_precedence(E, 3)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)
         WriteFile(" : ")
         write_type(T)

  'rule' write_expr(bracket(P, E)):
         WriteFile("(")
         write_expr(E)
         WriteFile(")")

  'rule' write_expr(ax_infix(P, L, C, R, _)):
	 Connective_precedence(C -> N)
	 (|
	   Lower_expr_precedence(L, N)
	   where(L -> L1)
	 ||
	   where(VALUE_EXPR'bracket(P,L) -> L1) --'
	 |)
         write_expr(L1)
         WriteFile(" ")
         write_connective(C)
         WriteFile("\n  ")
	 (|
	   Lower_expr_precedence(R, N)
	   where(R -> R1)
	 ||
	   where(VALUE_EXPR'bracket(P,R) -> R1) --'
	 |)
         write_expr(R1)

  'rule' write_expr(val_infix(P, L, O, R)):
	 Operator_precedence(O -> N)
	 (|
	   Lower_expr_precedence(L, N)
	   where(L -> L1)
	 ||
	   where(VALUE_EXPR'bracket(P,L) -> L1) --'
	 |)
         write_expr(L1)
         WriteFile(" ")
         write_op(O)
         WriteFile(" ")
	 (|
	   Lower_expr_precedence(R, N)
	   where(R -> R1)
	 ||
	   where(VALUE_EXPR'bracket(P,R) -> R1) --'
	 |)
         write_expr(R1)

  'rule' write_expr(stmt_infix(P, L, C, R)):
	 (|
	   eq(C,sequence)
	   where(12 -> N)
	 ||
	   where(13 -> N)
	 |)
	 (|
	   Lower_expr_precedence(L, N)
	   where(L -> L1)
	 ||
	   where(VALUE_EXPR'bracket(P,L) -> L1) --'
	 |)
         write_expr(L1)
         WriteFile(" ")
         write_combinator(C)
         WriteFile(" ")
	 (|
	   Lower_expr_precedence(R, N)
	   where(R -> R1)
	 ||
	   where(VALUE_EXPR'bracket(P,R) -> R1) --'
	 |)
         write_expr(R1)

  'rule' write_expr(always(P, E)):
         WriteFile("always ")
         write_expr(E)

  'rule' write_expr(ax_prefix(P, C, E)):
         write_connective(C)
	 (|
	   Lower_expr_precedence(E, 3)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)

  'rule' write_expr(val_prefix(P, O, E)):
         write_op(O)
         (|
           (| eq(O, plus) || eq(O, minus) |)
         ||
           WriteFile(" ")
         |)
	 (|
	   Lower_expr_precedence(E, 3)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)

  'rule' write_expr(comprehended(P, C, E, L)):
         write_combinator(C)
         WriteFile("{")
         write_expr(E)
         WriteFile(" | ")
         write_set_limitation(L)
         WriteFile("}")

  'rule' write_expr(initialise(P,O)):
         write_opt_qualification(O)
         WriteFile("initialise")

  'rule' write_expr(assignment(P, N, E)):
         write_name(N)
         WriteFile(" := ")
	 (|
	   Lower_expr_precedence(E, 11)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)

  'rule' write_expr(input(P, N)):
         write_name(N)
         WriteFile("?")

  'rule' write_expr(output(P, N, E)):
         write_name(N)
         WriteFile("!")
	 (|
	   Lower_expr_precedence(E, 11)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)

  'rule' write_expr(local_expr(P, DS, E)):
         WriteFile("local ")
         write_decls(DS)
         WriteFile(" in ")
         write_expr(E)
         WriteFile(" end")
         

  'rule' write_expr(let_expr(P, DS, E)):
         WriteFile("let ")
         write_let_defs(DS)
         WriteFile("\n  in ")
         write_expr(E)
         WriteFile("\n  end")

  'rule' write_expr(if_expr(P, E, THEN, RT, ELSIF, ELSE)):
         WriteFile("if ")
         write_expr(E)
         WriteFile("\n  then ")
         write_expr(THEN)
         write_elsif_branches(ELSIF)
         write_else_branch(ELSE)
         WriteFile("\n  end")

  'rule' write_expr(case_expr(P, E, _, CS)):
         WriteFile("case ")
         write_expr(E)
         WriteFile(" of \n  ")
         write_case_branches(CS)
         WriteFile("\n  end")
/*
  'rule' write_expr(while_expr(P, E, DO)):
         WriteFile("while ")
         write_expr(E)
         WriteFile(" do ")
         write_expr(DO)
         WriteFile(" end")

  'rule' write_expr(until_expr(P, DO, E)):
         WriteFile("do ")
         write_expr(DO)
         WriteFile(" until ")
         write_expr(E)
         WriteFile(" end")

  'rule' write_expr(for_expr(P, L, E)):
         WriteFile("for ")
         write_list_limitation(L)
         WriteFile(" do ")
         write_expr(E)
         WriteFile(" end")

  'rule' write_expr(class_scope_expr(P, C, T)):
         WriteFile("in ")
         write_class(C)
         WriteFile(" |- ")
         write_expr(T)

  'rule' write_expr(env_class_scope(P, C, _, T)):
	 write_expr(class_scope_expr(P, C, T))

  'rule' write_expr(implementation_relation(P, L, R)):
         WriteFile("|- ")
         write_class(L)
         WriteFile(" {= ")
         write_class(R)
         
  'rule' write_expr(implementation_expr(P, L, R)):
         WriteFile("|- ")
         write_object(L)
         WriteFile(" {= ")
         write_object(R)
*/
  'rule' write_expr(val_occ(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)

  'rule' write_expr(var_occ(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
/*         
  'rule' write_expr(pre_occ(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         WriteFile("`")
*/
  'rule' write_expr(ass_occ(P, I, Q, V)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         WriteFile(" = ")
	 (|
	   Lower_expr_precedence(V, 11)
	   where(V -> V1)
	 ||
	   where(VALUE_EXPR'bracket(P,V) -> V1) --'
	 |)
         write_expr(V1)

  'rule' write_expr(infix_occ(P,L,I,Q,R)):
         I'Ident -> Id --'
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id1,Ids) --'
	   Ids_to_object(P, list(Id1,Ids) -> Obj)
	   where(qualification(Obj) -> Q1)
	 ||
	   where(Q -> Q1)
	 |)
         (|
           eq(Q1, nil)
	   where(Id -> op_op(O))
	   Operator_precedence(O -> N)
	   (|
	     Lower_expr_precedence(L, N)
	     where(L -> L1)
	   ||
	     where(VALUE_EXPR'bracket(P,L) -> L1) --'
	   |)
           write_expr(L1)
           WriteFile(" ")
           write_id_or_op(Id)
           WriteFile(" ")
	   (|
	     Lower_expr_precedence(R, N)
	     where(R -> R1)
	   ||
	     where(VALUE_EXPR'bracket(P,R) -> R1) --'
	   |)
           write_expr(R1)
         ||
           WriteFile("(")
           write_opt_qualification(Q1)
           write_id_or_op(Id)
           WriteFile(")(")
           write_expr(L)
           WriteFile(",")
           write_expr(R)
           WriteFile(")")
         |)      

  'rule' write_expr(prefix_occ(P,I,Q,V)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)
         WriteFile(" ")
	 (|
	   Lower_expr_precedence(V, 3)
	   where(V -> V1)
	 ||
	   where(VALUE_EXPR'bracket(P,V) -> V1) --'
	 |)
         write_expr(V1)   
/*
  'rule' write_expr(input_occ(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         WriteFile("?")

  'rule' write_expr(output_occ(P, I, Q, V)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         WriteFile("!")
	 (|
	   Lower_expr_precedence(V, 11)
	   where(V -> V1)
	 ||
	   where(VALUE_EXPR'bracket(P,V) -> V1) --'
	 |)
         write_expr(V1)

  'rule' write_expr(chan_occ(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         

  'rule' write_expr(env_local(P, DS, _, E)):
         write_expr(local_expr(P, DS, E))
*/
  'rule' write_expr(no_val):
         WriteFile("??")
/*
  'rule' write_expr(cc_expr(P, STR, _, E)):
         WriteFile("-- ")
         WriteFile(STR)
         WriteFile("\n")
         write_expr(E)
*/
  'rule' write_expr(array_access(P, N, I)):
         write_expr(N)
         WriteFile("[")
         write_expr(I)
         WriteFile("]")

  'rule' write_expr(array_assignment(P, N, I, V)):
         write_name(N)
         write_array_accesses(I)
         WriteFile(" = ")
         write_expr(V)

  'rule' write_expr(array_expr(P, S, V)):
         WriteFile("[|[")
         write_typing(S)
         WriteFile("]")
         write_expr(V)
         WriteFile("|]")

  'rule' write_expr(array_ass_occ(P, I, Q, Is, V)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id(Id)
         write_array_accesses(Is)
         WriteFile(" = ")
	 (|
	   Lower_expr_precedence(V, 11)
	   where(V -> V1)
	 ||
	   where(VALUE_EXPR'bracket(P,V) -> V1) --'
	 |)
         write_expr(V1)
                                                                                                                                
  'rule' write_expr(local_val_occ(P,I,Q)):
         write_expr(val_occ(P,I,Q))

         
'action' write_array_accesses(VALUE_EXPRS)
  'rule' write_array_accesses(nil)

  'rule' write_array_accesses(list(H,T))
         WriteFile("[")
         write_expr(H)
         WriteFile("]")
         write_array_accesses(T)

'action' write_value_literal(VALUE_LITERAL)

  'rule' write_value_literal(unit):
         WriteFile("()")

  'rule' write_value_literal(bool_true):
         WriteFile("true")

  'rule' write_value_literal(bool_false):
         WriteFile("false")

  'rule' write_value_literal(delta):
         WriteFile("Delta")

  'rule' write_value_literal(int(X)):
         id_to_string(X -> S)
         WriteFile(S)

  'rule' write_value_literal(real(X)):
         id_to_string(X -> S)
         WriteFile(S)

  'rule' write_value_literal(text(S)):
         Putstr(S)

  'rule' write_value_literal(char(C)):
         Putchar(C)

'action' write_set_limitation(SET_LIMITATION)

  'rule' write_set_limitation(set_limit(P, TS, R)):
         write_typings(TS)
         write_restriction(R)

'action' write_restriction(RESTRICTION)

  'rule' write_restriction(restriction(P, E)):
         WriteFile(" :- ")
         write_expr(E)

  'rule' write_restriction(nil):

'action' write_list_limitation(LIST_LIMITATION)

  'rule' write_list_limitation(list_limit(P, B, E, R)):
         write_binding(B)
         WriteFile(" in ")
         write_expr(E)
         write_restriction(R)
  
'action' write_value_expr_pairs(VALUE_EXPR_PAIRS)

  'rule' write_value_expr_pairs(list(E, nil)):
         write_value_expr_pair(E)

  'rule' write_value_expr_pairs(list(E, L)):
         write_value_expr_pair(E)
         WriteFile(",")
         write_value_expr_pairs(L)

  'rule' write_value_expr_pairs(nil):


'action' write_value_expr_pair(VALUE_EXPR_PAIR)

  'rule' write_value_expr_pair(pair(L, R)):
         write_expr(L)
         WriteFile(" +> ")
         write_expr(R)

'action' write_lambda_parameter(LAMBDA_PARAMETER)

  'rule' write_lambda_parameter(l_typing(P, TS)):
         WriteFile("(")
         write_typings(TS)
         WriteFile(")")

  'rule' write_lambda_parameter(s_typing(P, T)):
         write_typing(T)
         
'action' write_actual_function_parameters(ACTUAL_FUNCTION_PARAMETERS)

  'rule' write_actual_function_parameters(list(H, T)):
         WriteFile("(")
         write_actual_function_parameter(H)
         WriteFile(")")
         write_actual_function_parameters(T)

  'rule' write_actual_function_parameters(nil):

'action' write_actual_function_parameter(ACTUAL_FUNCTION_PARAMETER)

  'rule' write_actual_function_parameter(fun_arg(P, ES)):
         write_exprs(ES)

'action' write_quantifier(QUANTIFIER)

  'rule' write_quantifier(all):
         WriteFile("all ")

  'rule' write_quantifier(exists):
         WriteFile("exists ")

  'rule' write_quantifier(exists1):
         WriteFile("exists! ")

'action' write_pre_condition(PRE_CONDITION)

  'rule' write_pre_condition(pre_cond(P, E)):
         WriteFile(" pre ")
	 (|
	   Lower_expr_precedence(E, 14)
	   where(E -> E1)
	 ||
	   where(VALUE_EXPR'bracket(P,E) -> E1) --'
	 |)
         write_expr(E1)

  'rule' write_pre_condition(nil):

'action' write_opt_post_condition(OPT_POST_CONDITION)

  'rule' write_opt_post_condition(post(P)):
	 write_post_condition(P)

  'rule' write_opt_post_condition(nil):

'action' write_post_condition(POST_CONDITION)

  'rule' write_post_condition(post_cond(P, R, E)):
         write_result_naming(R)
         WriteFile(" post ")
         write_expr(E)

'action' write_result_naming(RESULT_NAMING)

  'rule' write_result_naming(result(P, B)):
         WriteFile(" as ")
         write_binding(B)

  'rule' write_result_naming(nil):

'action' write_let_defs(LET_DEFS)

  'rule' write_let_defs(list(H, nil)):
         write_let_def(H)

  'rule' write_let_defs(list(H, T)):
         write_let_def(H)
         WriteFile(", ")
         write_let_defs(T)

'action' write_let_def(LET_DEF)

  'rule' write_let_def(explicit(P, B, E)):
         write_let_binding(B)
         WriteFile(" = ")
         write_expr(E)

  'rule' write_let_def(implicit(P, T, R)):
         write_typing(T)
         write_restriction(R)


'action' write_let_binding(LET_BINDING)

  'rule' write_let_binding(binding(P, B)):
         write_binding(B)

  'rule' write_let_binding(pattern(P, PATT)):
         write_pattern(PATT)

'action' write_elsif_branches(ELSIF_BRANCHES)

  'rule' write_elsif_branches(list(H, T)):
         write_elsif_branch(H)
         write_elsif_branches(T)

  'rule' write_elsif_branches(nil):

'action' write_elsif_branch(ELSIF_BRANCH)

  'rule' write_elsif_branch(elsif(P, E, THEN, _)):
         WriteFile("\n  elsif ")
         write_expr(E)
         WriteFile("\n  then ")
         write_expr(THEN)

'action' write_else_branch(ELSE_BRANCH)

  'rule' write_else_branch(else(P, E)):
         WriteFile("\n  else ")
         write_expr(E)

'action' write_case_branches(CASE_BRANCHES)

  'rule' write_case_branches(list(H, nil)):
         write_case_branch(H)

  'rule' write_case_branches(list(H, T)):
         write_case_branch(H)
         WriteFile(",\n  ")
         write_case_branches(T)


'action' write_case_branch(CASE_BRANCH)

  'rule' write_case_branch(case(P, PATT, E, _)):
         write_pattern(PATT)
         WriteFile(" -> ")
         write_expr(E)

--------------------------------------------------------------
-- Typings and bindings
--------------------------------------------------------------

'action' write_typings(TYPINGS)

  'rule' write_typings(list(T, nil))
         write_typing(T)

  'rule' write_typings(list(T, TS))
         write_typing(T)
         WriteFile(", ")
         write_typings(TS)

  'rule' write_typings(nil):
         
'action' write_typing(TYPING)

  'rule' write_typing(single(P,B,T)):
         write_binding(B)
         WriteFile(" : ")
         write_type(T)

  'rule' write_typing(multiple(P,BS,T)):
         write_bindings(BS)
         WriteFile(" : ")
         write_type(T)

'action' write_bindings(BINDINGS)

  'rule' write_bindings(nil):

  'rule' write_bindings(list(H,nil)):
         write_binding(H)

  'rule' write_bindings(list(H,T)):
         write_binding(H)
         WriteFile(", ")
         write_bindings(T)

'action' write_binding(BINDING)

  'rule' write_binding(single(P,Id_or_op)):
         write_id_or_op(Id_or_op)

  'rule' write_binding(product(P,BS)):
         WriteFile("(")
         write_bindings(BS)
         WriteFile(")")

'action' write_pattern(PATTERN)

  'rule' write_pattern(literal_pattern(P, L)):
         write_value_literal(L)

  'rule' write_pattern(name_pattern(P,N)):
         write_name(N)

  'rule' write_pattern(record_pattern(P, N, ARGS)):
         write_name(N)
         WriteFile("(")
         write_patterns(ARGS)
         WriteFile(")")

  'rule' write_pattern(id_pattern(P, Id)):
         write_id_or_op(Id)

  'rule' write_pattern(wildcard_pattern(P)):
         WriteFile("_")

  'rule' write_pattern(product_pattern(P, PATTS)):
         WriteFile("(")
         write_patterns(PATTS)
         WriteFile(")")

  'rule' write_pattern(enum_list(P, PATTS)):
         WriteFile("<.")
         write_patterns(PATTS)
         WriteFile(".>")

  'rule' write_pattern(conc_list(P, L, R)):
         WriteFile("<.")
         write_patterns(L)
         WriteFile(".> ^ ")
         write_pattern(R)

  'rule' write_pattern(name_occ_pattern(P, I, Q)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)

  'rule' write_pattern(record_occ_pattern(P, I, Q, ARGS)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)
         WriteFile("(")
         write_patterns(ARGS)
         WriteFile(")")

'action' write_patterns(PATTERNS)

  'rule' write_patterns(list(H, nil)):
         write_inner_pattern(H)

  'rule' write_patterns(list(H, T)):
         write_inner_pattern(H)
         WriteFile(",")
         write_patterns(T)

  'rule' write_patterns(nil):

'action' write_inner_pattern(PATTERN)

  'rule' write_inner_pattern(literal_pattern(P, L)):
         write_value_literal(L)

  'rule' write_inner_pattern(name_pattern(P,N)):
         WriteFile("=")
         write_name(N)

  'rule' write_inner_pattern(record_pattern(P, N, ARGS)):
         write_name(N)
         WriteFile("(")
         write_patterns(ARGS)
         WriteFile(")")

  'rule' write_inner_pattern(id_pattern(P, Id)):
         write_id_or_op(Id)

  'rule' write_inner_pattern(wildcard_pattern(P)):
         WriteFile("_")

  'rule' write_inner_pattern(product_pattern(P, PATTS)):
         WriteFile("(")
         write_patterns(PATTS)
         WriteFile(")")

  'rule' write_inner_pattern(enum_list(P, PATTS)):
         WriteFile("(")
         write_patterns(PATTS)
         WriteFile(")")

  'rule' write_inner_pattern(conc_list(P, L, R)):
         write_patterns(L)
         WriteFile(" ^ ")
         write_inner_pattern(R)

  'rule' write_inner_pattern(name_occ_pattern(P,I,Q)):
         WriteFile("=")
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)

  'rule' write_inner_pattern(record_occ_pattern(P, I, Q, ARGS)):
	 (|
	   eq(Q, nil)
	   I'Qualifier -> list(Id,Ids) --'
	   write_qualifier(list(Id,Ids))
	 ||
           write_opt_qualification(Q)
	 |)
         I'Ident -> Id --'
         write_id_or_op(Id)
         WriteFile("(")
         write_patterns(ARGS)
         WriteFile(")")

'action' write_name(NAME)

  'rule' write_name(name(P,id_op(Id))):
         write_id(Id)

  'rule' write_name(name(P,op_op(Op))):
         WriteFile("(")
         write_op(Op)
         WriteFile(")")

  'rule' write_name(qual_name(P, Obj,N)):
         write_object(Obj)
         WriteFile(".")
         (|
           where(N -> op_op(Op))
           WriteFile("(")
           write_op(Op)
           WriteFile(")")
         ||
           where(N -> id_op(Id))
           write_id(Id)
         |)


'action' write_opt_qualification(OPT_QUALIFICATION)

  'rule' write_opt_qualification(qualification(OBJ)):
	 (|
	   Is_dummy(OBJ)
	 ||
           write_object(OBJ)
	   WriteFile(".")
	 |)

  'rule' write_opt_qualification(nil):
 
'action' write_id_or_op(ID_OR_OP)

  'rule' write_id_or_op(id_op(Id)):
         write_id(Id)

  'rule' write_id_or_op(op_op(Op)):
         write_op(Op)

'action' write_ids(IDENTS)

  'rule' write_ids(list(Id,nil)):
         write_id(Id)

  'rule' write_ids(list(Id,Ids)):
         write_id(Id)
         WriteFile(", ")
         write_ids(Ids)

  'rule' write_ids(nil):

'action' write_id(IDENT)

  'rule' write_id(Id)
         id_to_string(Id -> X)
         WriteFile(X)

'action' write_optid(OPT_IDENT)

  'rule' write_optid(ident(Id))
         id_to_string(Id -> X)
         WriteFile(X)

  'rule' write_optid(nil)

'action' write_qualifier(Object_ids)

  'rule' write_qualifier(nil):

  'rule' write_qualifier(list(I, Is)):
         I'Ident -> Id
         write_qualifier1(Is)

'action' write_qualifier1(Object_ids)

  'rule' write_qualifier1(nil):
         
  'rule' write_qualifier1(list(I, Is)):
         I'Ident -> Id
         write_id(Id)
         WriteFile(".")
         write_qualifier(Is)

'action' write_op(OP)

  'rule' write_op(Op):
         Op_to_write_string(Op -> Str)
         WriteFile(Str)

'action' Op_to_write_string(OP -> STRING)

  'rule' Op_to_write_string(eq -> "=")
  'rule' Op_to_write_string(neq -> "~=")
  'rule' Op_to_write_string(eqeq -> "==")
  'rule' Op_to_write_string(gt -> ">")
  'rule' Op_to_write_string(lt -> "<")
  'rule' Op_to_write_string(ge -> ">=")
  'rule' Op_to_write_string(le -> "<=")
  'rule' Op_to_write_string(supset -> ">>")
  'rule' Op_to_write_string(subset -> "<<")
  'rule' Op_to_write_string(supseteq -> ">>=")
  'rule' Op_to_write_string(subseteq -> "<<=")
  'rule' Op_to_write_string(isin -> "isin")
  'rule' Op_to_write_string(notisin -> "~isin")
  'rule' Op_to_write_string(rem -> "\\")
  'rule' Op_to_write_string(caret -> "^")
  'rule' Op_to_write_string(union -> "union")
  'rule' Op_to_write_string(override -> "!!")
  'rule' Op_to_write_string(mult -> "*")
  'rule' Op_to_write_string(div -> "/")
  'rule' Op_to_write_string(hash -> "#")
  'rule' Op_to_write_string(inter -> "inter")
  'rule' Op_to_write_string(exp -> "**")
  'rule' Op_to_write_string(abs -> "abs")
  'rule' Op_to_write_string(int -> "int")
  'rule' Op_to_write_string(real -> "real")
  'rule' Op_to_write_string(card -> "card")
  'rule' Op_to_write_string(len -> "len")
  'rule' Op_to_write_string(inds -> "inds")
  'rule' Op_to_write_string(elems -> "elems")
  'rule' Op_to_write_string(hd -> "hd")
  'rule' Op_to_write_string(tl -> "tl")
  'rule' Op_to_write_string(dom -> "dom")
  'rule' Op_to_write_string(rng -> "rng")
  'rule' Op_to_write_string(wait -> "wait")
  'rule' Op_to_write_string(plus -> "+")
  'rule' Op_to_write_string(minus -> "-")

'action' write_combinator(COMBINATOR)

  'rule' write_combinator(int_choice):          WriteFile("|^|")
  'rule' write_combinator(ext_choice):          WriteFile("|=|")
  'rule' write_combinator(parallel):            WriteFile("||")
  'rule' write_combinator(interlock):           WriteFile("++")
  'rule' write_combinator(sequence):            WriteFile(";")

'action' write_connective(CONNECTIVE)

  'rule' write_connective(implies):             WriteFile("=>")
  'rule' write_connective(or):                  WriteFile("\\/")
  'rule' write_connective(and):                 WriteFile("/\\")
  'rule' write_connective(not):                 WriteFile("~")
