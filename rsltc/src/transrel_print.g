'module' transrel_print

'use' ast ext types print pp

'export'
    tr_write_scheme_def

'action' tr_write_scheme_def(SCHEME_DEF)

  'rule' tr_write_scheme_def(sdef(P, ID, PARMS, C)):
         tr_write_class(C)

'action' tr_write_class(CLASS)

  'rule' tr_write_class(basic(DS)):
         WriteFile("SYM_TABLE_DECL\n")
         tr_write_sym_table_decls(DS)
         WriteFile("\nSYM_TABLE_DECL_END\n\nINIT_VAL\n") 
         tr_write_init_values(DS)
         WriteFile("\nINIT_VAL_END\n\nTRANS_REL\n")
         tr_write_transition_relations(DS)
         WriteFile("\nTRANS_REL_END\n\nPROP_SPEC\n") 
         tr_write_property_specifications(DS) 
         WriteFile("\nPROP_SPEC_END")
        
'action' tr_write_sym_table_decls(DECLS)

  'rule' tr_write_sym_table_decls(nil):

  'rule' tr_write_sym_table_decls(list(type_decl(_, TDs), Ds)): 
         tr_write_type_defs(TDs) 
         tr_write_sym_table_decls(Ds)

  'rule' tr_write_sym_table_decls(list(value_decl(_, VDs), Ds)):
         tr_write_value_defs(VDs)
         tr_write_sym_table_decls(Ds)

  'rule' tr_write_sym_table_decls(list(trans_system_decl(_, TSs), Ds)):
         tr_write_transition(TSs, sym_table_decl)
         tr_write_sym_table_decls(Ds)

  'rule' tr_write_sym_table_decls(list(D, Ds)):
         tr_write_sym_table_decls(Ds)


'action' tr_write_init_values(DECLS)

  'rule' tr_write_init_values(nil):

  'rule' tr_write_init_values(list(trans_system_decl(_, TSs), Ds)):
         tr_write_transition(TSs, init_val)
         tr_write_init_values(Ds)

  'rule' tr_write_init_values(list(D, Ds)):
         tr_write_init_values(Ds)


'action' tr_write_transition_relations(DECLS)

  'rule' tr_write_transition_relations(nil):

  'rule' tr_write_transition_relations(list(trans_system_decl(_, TSs), Ds)):
         tr_write_transition(TSs, trans_rel)

  'rule' tr_write_transition_relations(list(D, Ds)):
         tr_write_transition_relations(Ds)


'action' tr_write_property_specifications(DECLS)

  'rule' tr_write_property_specifications(nil):

  'rule' tr_write_property_specifications(list(property_decl(_, P), Ds)):
         tr_write_assertion(P)

  'rule' tr_write_property_specifications(list(D, Ds)):
         tr_write_property_specifications(Ds)


'action' tr_write_type_defs(TYPE_DEFS)

  'rule' tr_write_type_defs(list(H, nil)):
         tr_write_type_def(H)
         WriteFile("\n")

  'rule' tr_write_type_defs(list(H, T)):
         tr_write_type_def(H)
         WriteFile("\n")
         tr_write_type_defs(T)

'action' tr_write_type_def(TYPE_DEF)

  'rule' tr_write_type_def(abbrev(P, ID, T)):
         tr_write_id(ID)
         WriteFile(" == ")
         tr_write_type(T)

  'rule' tr_write_type_def(variant(P, ID, VS)):
         tr_write_id(ID)
         WriteFile(" == ")
         tr_write_variants(VS)


'action' tr_write_variants(VARIANTS)

  'rule' tr_write_variants(list(H, nil)):
         tr_write_variant(H)

  'rule' tr_write_variants(list(H, T)):
         tr_write_variant(H)
         WriteFile(" | ")
         tr_write_variants(T)


'action' tr_write_variant(VARIANT)

  'rule' tr_write_variant(record(P, C, CS)):
         tr_write_constructor(C)


'action' tr_write_constructor(CONSTRUCTOR)

  'rule' tr_write_constructor(constructor(P, ID)):
         tr_write_id_or_op(ID)


'action' tr_write_value_defs(VALUE_DEFS)

  'rule' tr_write_value_defs(list(H, nil)):
         tr_write_value_def(H)

  'rule' tr_write_value_defs(list(H, T)):
         tr_write_value_def(H)
         tr_write_value_defs(T)


'action' tr_write_value_def(VALUE_DEF)

  'rule' tr_write_value_def(typing(P, T)):
         tr_write_typing(T)
         WriteFile("\n")

  'rule' tr_write_value_def(exp_val(P, T, E)):
         WriteFile("const ")
         tr_write_typing(T)
         WriteFile(" == ")
         tr_write_expr(E)
         WriteFile("\n")

  'rule' tr_write_value_def(exp_fun(P,T,A,E,Po,Pr,Re)):
         /* Do not write functions as they are unfoled/inlined. */


'action' tr_write_transition(TRANSITION_SYS_DEFS, CTX)

  'rule' tr_write_transition(list(trans_sys_def(_, _, Desc), Rest), Ctx):
         tr_write_transition_system_description(Desc, Ctx)
	     tr_write_transition(Rest, Ctx)
        
  'rule' tr_write_transition(nil, _):

'action' tr_write_transition_system_description(SYSTEM_DESCRIPTION, CTX)

  'rule' tr_write_transition_system_description(as_relation(VarDecls, Constraint, TransRel), init_val):
         tr_write_constraint(Constraint)

  'rule' tr_write_transition_system_description(as_relation(VarDecls, Constraint, TransRel), sym_table_decl):
         where(VarDecls -> variable_decl(_, VDs))
         tr_write_variable_defs(VDs)

  'rule' tr_write_transition_system_description(as_relation(VarDecls, Constraint, TransRel), trans_rel):
         tr_write_transrel(TransRel)


'action' tr_write_variable_defs(VARIABLE_DEFS)

  'rule' tr_write_variable_defs(list(H, nil)):
         tr_write_variable_def(H)

  'rule' tr_write_variable_defs(list(H, T)):
         tr_write_variable_def(H)
         WriteFile("\n")
         tr_write_variable_defs(T)

'action' tr_write_variable_def(VARIABLE_DEF)

  'rule' tr_write_variable_def(single(_, ID, T, _)):
         tr_write_type(T)
         WriteFile(" ")
         tr_write_id(ID)


'action' tr_write_constraint(CONSTRAINT)

  'rule' tr_write_constraint(constraint(_, Cs))
         tr_write_conjunctions(Cs)


'action' tr_write_conjunctions(CONJUNCTION_LIST)

  'rule' tr_write_conjunctions(list(VE, nil)):
         tr_write_expr(VE)
   
  'rule' tr_write_conjunctions(list(VE, Rest)):
         tr_write_expr(VE)
         WriteFile("\n")
         tr_write_conjunctions(Rest)


'action' tr_write_transrel(TRANSREL)

  'rule' tr_write_transrel(transrel(_, VE))
         tr_write_expr(VE)


'action' tr_write_assertion(PROPERTY_DECLS)


  'rule' tr_write_assertion(list(PD, nil)):
         tr_write_assert(PD)
                
  'rule' tr_write_assertion(list(PD, PDs)):
         tr_write_assert(PD)
         WriteFile("\n")
         tr_write_assertion(PDs)


'action' tr_write_assert(PROPERTY_DECL)

  'rule' tr_write_assert(property_def(_, _, _, VE)):
         tr_write_expr(VE)


'action' tr_write_type(TYPE_EXPR)

  'rule' tr_write_type(bool):
         WriteFile("bool")

  'rule' tr_write_type(int):
         WriteFile("int")

  'rule' tr_write_type(nat):
         WriteFile("nat")

  'rule' tr_write_type(real):
         WriteFile("real")

  /* TODO: Ignoring optional qualification. */
  'rule' tr_write_type(defined(I, _)):
        
         I'Ident -> Id --'
         tr_write_id(Id)

  'rule' tr_write_type(named_type(N)):
         tr_write_name(N)

  'rule' tr_write_type(subtype(T,R)):
         tr_write_typing(T)
         WriteFile(" where " )
         tr_write_restriction(R)

  'rule' tr_write_type(array(D,R)):
         WriteFile("array with index-type ")
         tr_write_type(D)
         WriteFile(" and value-type ")
         tr_write_type(R)

  'rule' tr_write_type(function(T,A,R)):
         /* Do not print functions (as they are unfolded/inlined instead). */


'action' tr_write_expr(VALUE_EXPR)

  'rule' tr_write_expr(literal_expr(P, E)):
         tr_write_value_literal(E)

  'rule' tr_write_expr(named_val(P, N)):
         tr_write_name(N)

  'rule' tr_write_expr(application(P, VE, ARGS)):
         is_ltl_formula(VE)
         tr_write_pathformula(VE, ARGS)

  'rule' tr_write_expr(bracket(P, E)):
         WriteFile("(")
         tr_write_expr(E)
         WriteFile(")")

  'rule' tr_write_expr(ax_infix(P, L, C, R, X)):
         tr_write_expr(L)
         WriteFile(" ")
         tr_write_connective(C)
         WriteFile("\n  ")
         tr_write_expr(R)

  'rule' tr_write_expr(val_infix(P, L, O, R)):
         tr_write_expr(L)
         WriteFile(" ")
         tr_write_op(O)
         WriteFile(" ")
         tr_write_expr(R)

  'rule' tr_write_expr(ax_prefix(P, C, E)):
         tr_write_connective(C)
         tr_write_expr(E)

  'rule' tr_write_expr(val_prefix(P, O, E)):
         tr_write_op(O)
         tr_write_expr(E)

  'rule' tr_write_expr(if_expr(P, E, THEN, RT, ELSIF, ELSE)):
         WriteFile("if ")
         tr_write_expr(E)
         WriteFile("\n  then ")
         tr_write_expr(THEN)
         tr_write_elsif_branches(ELSIF)
         tr_write_else_branch(ELSE)
         WriteFile("\n  end")

  /* TODO: Ignoring the possible qualification here. Somehow disallow qualified names. */
  'rule' tr_write_expr(val_occ(_, I, _)):
         I'Ident -> Id --'
         tr_write_id_or_op(Id)

  'rule' tr_write_expr(var_occ(_, I, _)):
         I'Ident -> Id --'
         tr_write_id(Id)

  'rule' tr_write_expr(infix_occ(P,L,I,Q,R)):
         I'Ident -> Id --'
          tr_write_expr(L)
          WriteFile(" ")
          tr_write_id_or_op(Id)
          WriteFile(" ")
          tr_write_expr(R)

  'rule' tr_write_expr(disamb(P,E,T)):
         tr_write_expr(E)

  'rule' tr_write_expr(array_access(P, N, I)):
         tr_write_expr(N)
         WriteFile("[")
         tr_write_expr(I)
         WriteFile("]")

  'rule' tr_write_expr(array_assignment(P, N, I, V)):
         tr_write_name(N)
         tr_write_array_accesses(I)
         WriteFile(" = ")
         tr_write_expr(V)

  'rule' tr_write_expr(VE):
         WriteFile("??")


'action' tr_write_array_accesses(VALUE_EXPRS)
  'rule' tr_write_array_accesses(nil)

  'rule' tr_write_array_accesses(list(H,T))
         WriteFile("[")
         tr_write_expr(H)
         WriteFile("]")


'action' tr_write_value_literal(VALUE_LITERAL)


  'rule' tr_write_value_literal(bool_true):
         WriteFile("true")

  'rule' tr_write_value_literal(bool_false):
         WriteFile("false")

  'rule' tr_write_value_literal(int(X)):
         id_to_string(X -> S)
         WriteFile(S)

  'rule' tr_write_value_literal(real(X)):
         id_to_string(X -> S)
         WriteFile(S)

                                                                                                
'action' tr_write_restriction(RESTRICTION)

  'rule' tr_write_restriction(restriction(_, E)):
         tr_write_expr(E)

  'rule' tr_write_restriction(nil):


'action' tr_write_pathformula(VALUE_EXPR, ACTUAL_FUNCTION_PARAMETERS)

  'rule' tr_write_pathformula(named_val(_, name(_, id_op(ID))), FPs): 
          id_to_string(ID -> S) 
          (| eq(S, "U")
             where(FPs->list(FP,_))
             tr_write_ltl_until(FP)
          || 
            (| eq(S, "G")
               WriteFile("Globally")
            || eq(S, "F")
               WriteFile("Finally")
            || eq(S, "X")
               WriteFile("Next") 
            |)
            WriteFile("[")
            tr_write_function_parameters(FPs)
            WriteFile("]") 
          |)


'action' tr_write_ltl_until(ACTUAL_FUNCTION_PARAMETER)

  'rule' tr_write_ltl_until(fun_arg(P, list(VE,nil))):
         WriteFile("Until")
         WriteFile("[")
         tr_write_expr(VE)
         WriteFile("]")

  'rule' tr_write_ltl_until(fun_arg(P, list(VE,VEs))):
         WriteFile("[")
         tr_write_expr(VE)
         WriteFile("]") 
         tr_write_ltl_until(fun_arg(P, VEs))

         
'action' tr_write_function_parameters(ACTUAL_FUNCTION_PARAMETERS)

  'rule' tr_write_function_parameters(nil):

  'rule' tr_write_function_parameters(list(FP, nil)):
         tr_write_function_parameter(FP)

  'rule' tr_write_function_parameters(list(FP, FPs)):
         tr_write_function_parameter(FP)
         tr_write_function_parameters(FPs)


'action' tr_write_function_parameter(ACTUAL_FUNCTION_PARAMETER)

  'rule' tr_write_function_parameter(fun_arg(_, list(VE,nil))):
         tr_write_expr(VE)

  'rule' tr_write_function_parameter(fun_arg(P, list(VE,VEs))):
         tr_write_expr(VE)
         WriteFile(",")
         tr_write_function_parameter(fun_arg(P, VEs))


'action' tr_write_elsif_branches(ELSIF_BRANCHES)

  'rule' tr_write_elsif_branches(list(H, T)):
         tr_write_elsif_branch(H)
         tr_write_elsif_branches(T)

  'rule' tr_write_elsif_branches(nil):

'action' tr_write_elsif_branch(ELSIF_BRANCH)

  'rule' tr_write_elsif_branch(elsif(P, E, THEN, _)):
         WriteFile("\n  elsif ")
         tr_write_expr(E)
         WriteFile("\n  then ")
         tr_write_expr(THEN)

'action' tr_write_else_branch(ELSE_BRANCH)

  'rule' tr_write_else_branch(else(P, E)):
         WriteFile("\n  else ")
         tr_write_expr(E)


'action' tr_write_typings(TYPINGS)

  'rule' tr_write_typings(list(T, nil))
         tr_write_typing(T)

  'rule' tr_write_typings(list(T, TS))
         tr_write_typing(T)
         WriteFile(", ")
         tr_write_typings(TS)

  'rule' tr_write_typings(nil):


'action' tr_write_typing(TYPING)

  'rule' tr_write_typing(single(P,B,T)):
         tr_write_type(T)
         WriteFile(" ")
         tr_write_binding(B)


'action' tr_write_binding(BINDING)

  'rule' tr_write_binding(single(P,Id_or_op)):
         tr_write_id_or_op(Id_or_op)


'action' tr_write_name(NAME)

  'rule' tr_write_name(name(P,id_op(Id))):
         tr_write_id(Id)


'action' tr_write_id_or_op(ID_OR_OP)

  'rule' tr_write_id_or_op(id_op(I)):
         tr_write_id(I)

  'rule' tr_write_id_or_op(op_op(Op)):
         tr_write_op(Op)

        
'action' tr_write_id(IDENT)

  'rule' tr_write_id(Id)
         id_to_string(Id -> X)
         WriteFile(X)


'action' tr_write_op(OP)

  'rule' tr_write_op(Op):
         Op_to_tr_write_string(Op -> Str)
         WriteFile(Str)

'action' Op_to_tr_write_string(OP -> STRING)

  'rule' Op_to_tr_write_string(eq -> "==")
  'rule' Op_to_tr_write_string(neq -> "!=")
  'rule' Op_to_tr_write_string(eqeq -> "==")
  'rule' Op_to_tr_write_string(gt -> ">")
  'rule' Op_to_tr_write_string(lt -> "<")
  'rule' Op_to_tr_write_string(ge -> ">=")
  'rule' Op_to_tr_write_string(le -> "<=")
  'rule' Op_to_tr_write_string(mult -> "*")
  'rule' Op_to_tr_write_string(div -> "/")
  'rule' Op_to_tr_write_string(plus -> "+")
  'rule' Op_to_tr_write_string(minus -> "-")
  'rule' Op_to_tr_write_string(isin -> "isin")


'action' tr_write_connective(CONNECTIVE)

  'rule' tr_write_connective(or):                  WriteFile("||")
  'rule' tr_write_connective(and):                 WriteFile("&&")
  'rule' tr_write_connective(not):                 WriteFile("!")


'condition' is_ltl_formula(VALUE_EXPR)

  'rule' is_ltl_formula(named_val(_, name(_, id_op(ID)))): 
          id_to_string(ID -> S) 
          (| eq(S, "G") 
          || eq(S, "F") 
          || eq(S, "X")
          || eq(S, "U") |)
                
                
'type' CTX

       sym_table_decl
       init_val
       trans_rel
