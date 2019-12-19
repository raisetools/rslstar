'module' transrel

'use' ast ext env print

'export' make_transrel


'action' make_transrel(LIB_MODULE -> LIB_MODULE)

  'rule' make_transrel(scheme(P, Ctx, Octx, Def) -> scheme(P, Ctx, Octx, TRDef)):
         make_scheme(Def -> TRDef)


'action' make_scheme(SCHEME_DEF -> SCHEME_DEF)

  'rule' make_scheme(sdef(P, Id, Params, C) -> sdef(P, Id, Params, TRC)):
         make_class(C -> TRC)

/* TODO: Right now only accepting basic classes. */
'action' make_class(CLASS -> CLASS)

  'rule' make_class(basic(Ds) -> basic(TRDs)):
         make_transition_relations(Ds -> TRDs) 

        
'action' make_transition_relations(DECLS -> DECLS)

  'rule' make_transition_relations(nil -> nil):

  'rule' make_transition_relations(list(trans_system_decl(P, TSs), Ds) -> list(trans_system_decl(P, TRTSs), TRDs)):
         make_transition_systems(TSs -> TRTSs)
         make_transition_relations(Ds -> TRDs)

  'rule' make_transition_relations(list(property_decl(P, Pr), Ds) -> list(property_decl(P, Pr), TRDs)):
         make_transition_relations(Ds -> TRDs)
        
  'rule' make_transition_relations(list(D, Ds) -> list(D, TRDs)):
         make_transition_relations(Ds -> TRDs)


'action' make_transition_systems(TRANSITION_SYS_DEFS -> TRANSITION_SYS_DEFS)

  'rule' make_transition_systems(nil -> nil):

  'rule' make_transition_systems(list(TS, TSs) -> list(TRTS, TRTSs)):
         make_transition_system(TS -> TRTS)
         make_transition_systems(TSs -> TRTSs)


'action' make_transition_system(TRANSITION_SYS_DEF -> TRANSITION_SYS_DEF)

  'rule' make_transition_system(trans_sys_def(P, Id, S) -> trans_sys_def(P, Id, TRS)):
         make_system(S -> TRS)

/* TODO: Also handle other types of system description. */
'action' make_system(SYSTEM_DESCRIPTION -> SYSTEM_DESCRIPTION)

  'rule' make_system(no_input(L, TR) -> as_relation(TRL, C, TRel)):
         retrieve_idents_from_local_decls(L -> Is)
         make_local_decls(L -> TRL, C) /* TODO: is this right for init constraint? */
         make_transition_relation(TR, Is -> TRel)


'action' make_local_decls(DECL -> DECL, CONSTRAINT)

  'rule' make_local_decls(variable_decl(P, VD) -> variable_decl(P, TRVD), constraint(P, Cs)):
         make_variable_defs(VD -> TRVD, Cs)


'action' make_variable_defs(VARIABLE_DEFS -> VARIABLE_DEFS, CONJUNCTION_LIST)

  'rule' make_variable_defs(list(VD, nil) -> list(TRVD,nil), list(VE,nil)):
         make_variable_def(VD -> TRVD, VE)

  'rule' make_variable_defs(list(VD, VDs) -> TRVD, Cs):
         make_variable_def(VD -> TRVD1, VE1)
         make_variable_defs(VDs -> TRVD2, VE2)
         (|
           where(VE1 -> no_val)
           where(VE2 -> Cs)
         ||
           where(CONJUNCTION_LIST'list(VE1,VE2) -> Cs) --'
         |)
         where(VARIABLE_DEFS'list(TRVD1, TRVD2) -> TRVD)--'


'action' make_variable_def(VARIABLE_DEF -> VARIABLE_DEF, VALUE_EXPR)

  'rule' make_variable_def(single(P, Id, Type, Init) -> single(P, Id, Type, nil), NVE):
         where(named_val(P, name(P, id_op(Id))) -> N)
         (|
           where(Init -> initial(VE))
           make_value_expr(VE -> VE2)
           where(val_infix(P, N, eq, VE2) -> NVE)
         ||
           where(no_val -> NVE)
           Putwarning(P)
           Putmsg("No variable init for ")
           Print_id(Id)
           Putnl()
         |)


/* TODO: Handle extra guard? */
'action' make_transition_relation(TRANSITION_OPERATOR, IDENTS -> TRANSREL)

  'rule' make_transition_relation(equal_priority(L, R, _), Is -> transrel(P1, VE)):
         make_transition_relation(L, Is -> transrel(P1, LVE))
         make_transition_relation(R, Is -> transrel(P2, RVE))
         where(ax_infix(P1, LVE, or, RVE, P1) -> VE)

  'rule' make_transition_relation(guarded_command(C, _), Is -> transrel(P, VE)):
         make_transition(C, Is -> P, VE)


'action' make_transition(GUARDED_COMMAND, IDENTS -> POS, VALUE_EXPR)

  'rule' make_transition(guarded_cmd(_, G, U), Is -> P, VE):
         make_transition_final(G, U, Is -> P, VE)


'action' make_transition_final(VALUE_EXPR, COMMANDS, IDENTS -> POS, VALUE_EXPR)
/* TODO: handle if the guard has an if-expression */
  'rule' make_transition_final(VE, Cs, Is -> P, Rule):
          (|
            has_if(VE)
            remake_if_expr(VE -> VE1)
            make_value_expr(VE1 -> VE2)
          ||
            make_value_expr(VE -> VE2)
          |)

          make_commands(Cs -> P, CVE1)
          make_remaining_variables(P, CVE1, Cs, Is -> CVE)            
          where(ax_infix(P, VE2, and, CVE, P) -> Rule)
            

'action' make_commands(COMMANDS -> POS, VALUE_EXPR)

  'rule' make_commands(list(C, nil) -> P, VE):
         make_command(C -> P, VE)
         
  'rule' make_commands(list(C, Cs) -> P, VE):
         make_command(C -> P, VE1)
         make_commands(Cs -> P2, VE2)
         where(ax_infix(P, VE1, and, VE2, P) -> VE)


'action' make_command(COMMAND -> POS, VALUE_EXPR)

  'rule' make_command(r_cmd(ass_occ(P, I, Q, V)) -> P, CVE):
         I'Ident -> Id --'
         (|
           has_if(V)
           remake_if_expr(val_infix(P, named_val(P, name(P, id_op(Id))), eq, V) -> VE1)
           make_value_expr(VE1 -> CVE)
         ||
           where(val_infix(P, named_val(P, name(P, id_op(Id))), eq, V) -> CVE)
         |)

  /* TODO: Not handling ifs in arrays. */
  'rule' make_command(r_cmd(array_ass_occ(P, I, Q, Is, V)) -> P, CVE):
         I'Ident -> Id --'
         (|
           has_if(V)
           remake_if_expr(array_assignment(P, name(P, id_op(Id)), Is, V) -> VE1)
           make_value_expr(VE1 -> CVE)
         ||
           where(array_assignment(P, name(P, id_op(Id)), Is, V) -> CVE)
         |)

'action' make_value_expr(VALUE_EXPR -> VALUE_EXPR)

  'rule' make_value_expr(case_expr(P, VE, P2, Bs) -> NVE):
         convert_case_if(case_expr(P, VE, P2, Bs) -> IF)
         make_value_expr(IF -> NVE)

  'rule' make_value_expr(if_expr(_, G, T, _, EIs, E) -> NVE):
         make_if(G, T, EIs, E -> NVE)

  'rule' make_value_expr(VE -> VE):


'action' make_if(VALUE_EXPR, VALUE_EXPR, ELSIF_BRANCHES, ELSE_BRANCH -> VALUE_EXPR)

  'rule' make_if(G, T, EIs, else(P, VE) -> NVE):
         make_value_expr(G -> NG)
         make_value_expr(T -> NT)
         where(VALUE_EXPR'bracket(P, ax_infix(P, NG, and, NT, P)) -> VE1) --'
         make_elsifs(VE1, EIs -> VE2)
         where(VALUE_EXPR'bracket(P, ax_prefix(P, not, NG)) -> VE3) --'
         where(VALUE_EXPR'bracket(P, ax_infix(P, VE3, and, VE, P)) -> VE4) --'
         where(VALUE_EXPR'bracket(P, ax_infix(P, VE2, or, VE4, P)) -> NVE) --'


'action' make_elsifs(VALUE_EXPR, ELSIF_BRANCHES -> VALUE_EXPR)

  'rule' make_elsifs(VE, nil -> VE):
            
  'rule' make_elsifs(VE, list(B, Bs) -> NVE):
         make_elsif(VE, B -> BVE)
         make_elsifs(BVE, Bs -> NVE)


'action' make_elsif(VALUE_EXPR, ELSIF_BRANCH -> VALUE_EXPR)

  'rule' make_elsif(VE, elsif(P, G, T, _) -> NVE):
         make_value_expr(G -> NG)
         make_value_expr(T -> NT)
         where(VALUE_EXPR'bracket(P, ax_infix(P, NG, and, NT, P)) -> VE1) --'
         where(VALUE_EXPR'bracket(P, ax_infix(P, VE, or, VE1, P)) -> NVE) --'


'action' make_remaining_variables(POS, VALUE_EXPR, COMMANDS, IDENTS -> VALUE_EXPR)

  'rule' make_remaining_variables(P, VE, Cs, nil -> VE):

  'rule' make_remaining_variables(P, VE, Cs, list(I, Is) -> NVE): 
          id_to_string(I -> S)
          (|
            is_pt_of_commands(S, Cs)
            where(VE -> VE2)
          ||
            Concatenate(S, "'" -> NS)
            string_to_id(NS -> Id)
            where(val_infix(P, named_val(P, name(P, id_op(Id))), eq, named_val(P, name(P, id_op(I)))) -> VE1)
            where(ax_infix(P, VE, and, VE1, P) -> VE2)
          |)
          make_remaining_variables(P, VE2, Cs, Is -> NVE)
            
---------------------------------------------------------------------------
--             AUXILIARY                                                 --
---------------------------------------------------------------------------            

'action' retrieve_idents_from_local_decls(DECL -> IDENTS)

  'rule' retrieve_idents_from_local_decls(variable_decl(_, VD) -> Is):
         retrieve_idents_from_var_defs(VD, nil -> Is)


'action' retrieve_idents_from_var_defs(VARIABLE_DEFS, IDENTS -> IDENTS)

  'rule' retrieve_idents_from_var_defs(nil, Ids -> Ids):

  'rule' retrieve_idents_from_var_defs(list(VD, VDs), Ids1 -> Ids3):
         retrieve_idents_from_var_def(VD, Ids1 -> Ids2)
         retrieve_idents_from_var_defs(VDs, Ids2 -> Ids3)


'action' retrieve_idents_from_var_def(VARIABLE_DEF, IDENTS -> IDENTS)

  'rule' retrieve_idents_from_var_def(single(_, Id, _, _), Ids -> Ids2):
         where(IDENTS'list(Id, Ids) -> Ids2) --'


'action' remake_if_expr(VALUE_EXPR -> VALUE_EXPR)

  'rule' remake_if_expr(if_expr(P, G, T, P2, nil, else(P3, E)) -> if_expr(P, G2, T2, P2, nil, else(P3,E2))):
         remake_if_expr(G -> G2)
         remake_if_expr(T -> T2)
         remake_if_expr(E -> E2)

  'rule' remake_if_expr(if_expr(P, G, T, P2, EIs, else(P3, E)) -> NewIf): 
         remake_expr_with_elsif(if_expr(P, G, T, P2, EIs, else(P3, E)) -> NewIf)

  'rule' remake_if_expr(val_infix(_, if_expr(Pl, Gl, Tl, P2l, EIsl, El), Op, if_expr(Pr, Gr, Tr, P2r, EIsr, Er)) -> NewIf): 
         remake_if_expr(if_expr(Pl, Gl, Tl, P2l, EIsl, El) -> FixedIfLeft) 
         where(FixedIfLeft -> if_expr(_, _, _, _, _, else(P3l, E2l)))             
         remake_if_expr(if_expr(Pr, Gr, Tr, P2r, EIsr, Er) -> FixedIfRight) 
         where(FixedIfRight -> if_expr(_, _, _, _, _, else(P3r, E2r)))          
         where(if_expr(Pl, ax_infix(Pl, Gl, and, Gr, Pl), val_infix(Pl, Tl, Op, Tr), P2l, nil, 
         else(P3l, if_expr(Pl, ax_infix(Pl, Gl, and, ax_prefix(Pl, not, Gr), Pl), val_infix(Pl, Tl, Op, E2r), P2l, nil, 
         else(P3l, if_expr(Pl, ax_infix(Pl, ax_prefix(Pl, not, Gl), and, Gr, Pl), val_infix(Pl, E2l, Op, Tr), P2l, nil, else(P3l, val_infix(Pl, E2l, Op, E2r))))))) -> NewIf)

  'rule' remake_if_expr(val_infix(_, if_expr(P, G, T, P2, EIs, else(P4, E)), Op, Right) -> NewIf): 
         (|
           has_if(Right) 
           remake_if_expr(Right -> Right2)
           remake_if_expr(if_expr(P, G, T, P2, EIs, else(P4, E)) -> FixedIf) 
           where(FixedIf -> if_expr(_, _, _, _, _, else(P3, E2)))
           remake_if_expr(val_infix(P, T, Op, Right2) -> NewThen)
           remake_if_expr(val_infix(P, E2, Op, Right2) -> NewElse)
           where(if_expr(P, G, NewThen, P2, nil, else(P3, NewElse)) -> NewIf) 
         ||
           remake_if_expr(if_expr(P, G, T, P2, EIs, else(P4, E)) -> FixedIf)
           where(FixedIf -> if_expr(_, _, _, _, _, else(P3, E2))) 
           remake_if_expr(val_infix(P, T, Op, Right) -> NewThen)
           remake_if_expr(val_infix(P, E2, Op, Right) -> NewElse)
           where(if_expr(P, G, NewThen, P2, nil, else(P3, NewElse)) -> NewIf)
         |)

  'rule' remake_if_expr(val_infix(_, Left, Op, if_expr(P, G, T, P2, EIs, else(P4, E))) -> NewIf): 
         (|
           has_if(Left) 
           remake_if_expr(Left -> Left2)
           remake_if_expr(if_expr(P, G, T, P2, EIs, else(P4, E)) -> FixedIf) 
           where(FixedIf -> if_expr(_, _, _, _, _, else(P3, E2))) 
           remake_if_expr(val_infix(P, Left2, Op, T) -> NewThen)
           remake_if_expr(val_infix(P, Left2, Op, E2) -> NewElse)
           where(if_expr(P, G, NewThen, P2, nil, else(P3, NewElse)) -> NewIf) 
         ||
           remake_if_expr(if_expr(P, G, T, P2, EIs, else(P4, E)) -> FixedIf)
           where(FixedIf -> if_expr(_, _, _, _, _, else(P3, E2))) 
           remake_if_expr(val_infix(P, Left, Op, T) -> NewThen)
           remake_if_expr(val_infix(P, Left, Op, E2) -> NewElse)
           where(if_expr(P, G, NewThen, P2, nil, else(P3, NewElse)) -> NewIf)
         |)

  'rule' remake_if_expr(ax_prefix(P, not, VE) -> ax_prefix(P, not, VE2)):
         (|
           has_if(VE)
           remake_if_expr(VE -> VE2)
         ||
           where(VE -> VE2)
          |)
            
  'rule' remake_if_expr(val_infix(P, Left, Op, Right) -> NewIf): 
         (|
           has_if(Left)
           has_if(Right)
           remake_if_expr(Left -> Left2)
           remake_if_expr(Right -> Right2)
           remake_if_expr(val_infix(P, Left2, Op, Right2) -> NewIf)
         ||
           has_if(Left)
           remake_if_expr(Left -> Left2)
           remake_if_expr(val_infix(P, Left2, Op, Right) -> NewIf)
         ||
           has_if(Right)
           remake_if_expr(Right -> Right2)
           remake_if_expr(val_infix(P, Left, Op, Right2) -> NewIf)
         ||
           where(val_infix(P, Left, Op, Right) -> NewIf)
         |)

  'rule' remake_if_expr(case_expr(P, VE, P2, Bs) -> IF):
         convert_case_if(case_expr(P, VE, P2, Bs) -> IF)

  'rule' remake_if_expr(VE -> VE): 


'action' remake_expr_with_elsif(VALUE_EXPR -> VALUE_EXPR)

  'rule' remake_expr_with_elsif(if_expr(P, G, T, P2, nil, else(P3, E)) -> if_expr(P, G, T, P2, nil, else(P3, E))):

  'rule' remake_expr_with_elsif(if_expr(P, G, T, P2, list(EI, EIs), else(P3, E)) ->
                    if_expr(P, G, T, P2, nil, else(P3, NewElse))): 
         where(EI -> elsif(_, G2, T2, _))
         remake_expr_with_elsif(if_expr(P, G2, T2, P2, EIs, else(P3, E)) -> NewElse)


'action' convert_case_if(VALUE_EXPR -> VALUE_EXPR)

  'rule' convert_case_if(case_expr(P, VE, P2, Bs) -> if_expr(P, G, T, region(P, P2), EIs, E)):
         retrieve_guard(VE, Bs -> G)
         retrieve_then(Bs -> Bs2, T)
         retrieve_elsif(VE, Bs2, nil -> EIs)
         retrieve_else(Bs2 -> E)


'action' retrieve_guard(VALUE_EXPR, CASE_BRANCHES -> VALUE_EXPR)

  'rule' retrieve_guard(VE, list(case(P, literal_pattern(_, VL), _, _), _) -> val_infix(P, VE, eq, literal_expr(P, VL))):

  'rule' retrieve_guard(VE, list(case(P, name_pattern(_, N), _, _), _) -> val_infix(P, VE, eq, named_val(P, N))):

/* TODO: Added by Signe */
  'rule' retrieve_guard(VE, list(case(P, name_occ_pattern(_, Id, _), _, _), _) -> val_infix(P, VE, eq, named_val(P, name(P, IdOp)))):
         Id'Ident -> IdOp --'


'action' retrieve_then(CASE_BRANCHES -> CASE_BRANCHES, VALUE_EXPR)

  'rule' retrieve_then(list(case(_, _, VE, _), Bs) -> Bs, VE):


'action' retrieve_elsif(VALUE_EXPR, CASE_BRANCHES, ELSIF_BRANCHES -> ELSIF_BRANCHES)

  'rule' retrieve_elsif(VE, list(case(P, literal_pattern(P2, VL), VE2, _), Bs), EIs -> EIs3):
         where(ELSIF_BRANCHES'list(elsif(P, val_infix(P, VE, eq, literal_expr(P2, VL)), VE2, P), EIs) -> EIs2) --'
         retrieve_elsif(VE, Bs, EIs2 -> EIs3)

  'rule' retrieve_elsif(VE, list(case(P, name_pattern(P2, N), VE2, _), Bs), EIs -> EIs3):
         where(ELSIF_BRANCHES'list(elsif(P, val_infix(P, VE, eq, named_val(P2, N)), VE2, P), EIs) -> EIs2) --'
         retrieve_elsif(VE, Bs, EIs2 -> EIs3)

/* TODO: Added by Signe */
  'rule' retrieve_elsif(VE, list(case(P, name_occ_pattern(P2, Id, _), VE2, _), Bs), EIs -> EIs3):
         Id'Ident -> IdOp --'
         where(ELSIF_BRANCHES'list(elsif(P, val_infix(P, VE, eq, named_val(P2, name(P2,IdOp))), VE2, P), EIs) -> EIs2) --'
         retrieve_elsif(VE, Bs, EIs2 -> EIs3)

  'rule' retrieve_elsif(_, list(case(P, wildcard_pattern(_), _, _), _), EIs -> EIs): 


'action' retrieve_else(CASE_BRANCHES -> ELSE_BRANCH)

  'rule' retrieve_else(list(case(P, wildcard_pattern(_), VE, _), _) -> else(P, VE)):

  'rule' retrieve_else(list(B, Bs) -> E):
         retrieve_else(Bs -> E)


'condition' has_if(VALUE_EXPR)

     'rule' has_if(if_expr(_, _, _, _, _, _)):

     'rule' has_if(case_expr(_, _, _, _)):

     'rule' has_if(val_infix(_, Left, _, Right)):
            (| has_if(Left) || has_if(Right) |)

     'rule' has_if(application(_, VE, _)):
            has_if(VE)

     'rule' has_if(equivalence(_, Left, Right, _)):
            (| has_if(Left) || has_if(Right) |)


'condition' is_pt_of_commands(STRING, COMMANDS)

     'rule' is_pt_of_commands(S, list(C, Cs)):
            (| is_pt_of_command(S, C) || is_pt_of_commands(S, Cs) |)


'condition' is_pt_of_command(STRING, COMMAND)

     'rule' is_pt_of_command(S, C):
            where(C -> r_cmd(VE))
            where(VE -> ass_occ(P, I, Q, V))                   
            I'Ident -> Id --'
            id_to_string(Id -> SP)
            Remove_Prime(SP -> S1)
            eq(S1, S)
