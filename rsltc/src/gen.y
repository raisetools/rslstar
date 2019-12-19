%{
typedef long * yy;
#define yyu (-2147483647L)
static yy yynull;
extern yy yyh;
extern yy yyhx;
static yyErr(n,l)
{
yyAbort(n,"grammar", l);
}
/* start */
/* end */
extern yy yyglov_SAL_TYPES_Constants;
extern yy yyglov_SAL_RSL_is_Nat_Vid;
extern yy yyglov_SAL_RSL_is_Int_Vid;
extern yy yyglov_SwapNav;
extern yy yyglov_InvalidCollectionInsertionNav;
extern yy yyglov_ArrayApplicationNav;
extern yy yyglov_MapApplicationNav;
extern yy yyglov_Current_cid_stack;
extern yy yyglov_SAL_Current_Reconstructor;
extern yy yyglov_Collected_Lifted_Destructors;
extern yy yyglov_Collected_Lifted_Constructors;
extern yy yyglov_Collected_Is_Type_Functions;
extern yy yyglov_Collected_Reconstructors;
extern yy yyglov_SAL_Types_Extra_Defs;
extern yy yyglov_Disamb_Stack;
extern yy yyglov_SAL_Nav_Tid;
extern yy yyglov_Current_CC_Lifted_Types;
extern yy yyglov_Current_Array_Types;
extern yy yyglov_Current_Map_Types;
extern yy yyglov_Current_Set_Types;
extern yy yyglov_Current_List_Types;
extern yy yyglov_Default_Bool_Tid;
extern yy yyglov_Default_Bool_Cid;
extern yy yyglov_IntLowVal;
extern yy yyglov_IntLowIdent;
extern yy yyglov_IntHighVal;
extern yy yyglov_IntHighIdent;
extern yy yyglov_NatHighVal;
extern yy yyglov_NatHighIdent;
extern yy yyglov_Default_Nat_Tid;
extern yy yyglov_Default_Nat_Cid;
extern yy yyglov_Default_Int_Tid;
extern yy yyglov_Default_Int_Cid;
extern yy yyglov_Global_Constant_Table;
extern yy yyglov_Global_TS_Table;
extern yy yyglov_Global_Var_Table;
extern yy yyglov_Global_Oid_Table;
extern yy yyglov_Global_Vid_Table;
extern yy yyglov_Global_CC_Tid_Table;
extern yy yyglov_Global_Tid_Table;
extern yy yyglov_Global_Cid_Table;
extern yy yyglov_Generated_CC_Operation_Contexts;
extern yy yyglov_Generated_Operation_Contexts;
extern yy yyglov_Generated_CC_Contexts;
extern yy yyglov_Generated_Contexts;
extern yy yyglov_Generated_Constants;
extern yy yyglov_SortIndex;
extern yy yyglov_TypeIndex;
extern yy yyglov_ParamIndex;
extern yy yyglov_LetIndex;
extern yy yyglov_Current_LBS_Env;
extern yy yyglov_SAL_Current_CC_Cid;
extern yy yyglov_SAL_Current_Cid;
extern yy yyglov_Global_CC_Model;
extern yy yyglov_Global_Model;
extern yy yyglov_SAL_CC_TYPES_Cid;
extern yy yyglov_SAL_CC_GLOBAL_Cid;
extern yy yyglov_SAL_TYPES_Cid;
extern yy yyglov_SAL_GLOBAL_Cid;
extern yy yyglov_TheoryIndex;
extern yy yyglov_TotalDeclareds;
extern yy yyglov_Importings;
extern yy yyglov_TopIsTheoryOrDevtReln;
extern yy yyglov_IsTheoryOrDevtReln;
extern yy yyglov_Id_of_W;
extern yy yyglov_Id_of_R;
extern yy yyglov_Id_of_U;
extern yy yyglov_Id_of_X;
extern yy yyglov_Id_of_F;
extern yy yyglov_Id_of_G;
extern yy yyglov_Id_of_rsl_is_int;
extern yy yyglov_Id_of_rsl_is_nat;
extern yy yyglov_Id_of_minus_inf_int;
extern yy yyglov_Id_of_tl;
extern yy yyglov_Id_of_hd_list;
extern yy yyglov_Id_of_hd_set;
extern yy yyglov_Id_of_inds;
extern yy yyglov_Id_of_len;
extern yy yyglov_Id_of_card;
extern yy yyglov_Id_of_exp_real;
extern yy yyglov_Id_of_exp_int;
extern yy yyglov_Id_of_div_real;
extern yy yyglov_Id_of_div_int;
extern yy yyglov_Id_of_union_set;
extern yy yyglov_Id_of_rem_int;
extern yy yyglov_Id_of_notisin_map;
extern yy yyglov_Id_of_notisin_list;
extern yy yyglov_Id_of_notisin_set;
extern yy yyglov_Id_of_isin_map;
extern yy yyglov_Id_of_isin_list;
extern yy yyglov_Id_of_isin_set;
extern yy yyglov_Id_of_subseteq;
extern yy yyglov_Id_of_le_int;
extern yy yyglov_Id_of_ge_real;
extern yy yyglov_Id_of_ge_int;
extern yy yyglov_Id_of_lt_int;
extern yy yyglov_Id_of_gt_int;
extern yy yyglov_Id_of_neq;
extern yy yyglov_Id_of_eq;
extern yy yyglov_Time_id;
extern yy yyglov_Dummy_id2;
extern yy yyglov_Dummy_id1;
extern yy yyglov_Polynum;
extern yy yyglov_Type_numbers;
extern yy yyglov_Module_name;
extern yy yyglov_Extend_paths;
extern yy yyglov_Current;
extern yy yyglov_Parameters;
extern yy yyglov_Globals;
typedef struct {long attr[3];} yyATTRIBUTES;
#define YYSTYPE yyATTRIBUTES
extern YYSTYPE yylval;

%}
%start ROOT_
%token id 257
%token int_lit 258
%token real_lit 259
%token text_lit 260
%token char_lit 261
%token eofile 262
%token nextunit 263
%token filename 264
%token yytk_SEMICOLON 265
%token yytk_PLUS_PLUS 266
%token yytk_BAR_BAR 267
%token yytk_BAR_POWER_BAR 268
%token yytk_BAR_EQUAL_BAR 269
%token yytk_TILDE 270
%token yytk_BACKSLASH_SLASH 271
%token yytk_EQUAL_GREATER 272
%token yytk_MINUS 273
%token yytk_PLUS 274
%token yykw_wait 275
%token yykw_rng 276
%token yykw_dom 277
%token yykw_tl 278
%token yykw_hd 279
%token yykw_elems 280
%token yykw_inds 281
%token yykw_len 282
%token yykw_card 283
%token yykw_real 284
%token yykw_int 285
%token yykw_abs 286
%token yytk_ASTERISK_ASTERISK 287
%token yykw_inter 288
%token yytk_SHARP 289
%token yytk_SLASH 290
%token yytk_ASTERISK 291
%token yytk_EXCLAM_EXCLAM 292
%token yykw_union 293
%token yytk_BACKSLASH 294
%token yytk_TILDE_i_BLANK_s_BLANK_i_BLANK_n_BLANK 295
%token yykw_isin 296
%token yytk_LESS_LESS_EQUAL 297
%token yytk_GREATER_GREATER_EQUAL 298
%token yytk_LESS_LESS 299
%token yytk_GREATER_GREATER 300
%token yytk_LESS_EQUAL 301
%token yytk_GREATER_EQUAL 302
%token yytk_LESS 303
%token yytk_GREATER 304
%token yytk_TILDE_EQUAL 305
%token yytk_DOT 306
%token yytk_POWER 307
%token yykw_until 308
%token yykw_do 309
%token yykw_while 310
%token yykw_case 311
%token yykw_elsif 312
%token yykw_then 313
%token yykw_if 314
%token yykw_let 315
%token yytk_EXCLAM 316
%token yytk_QUESTIONM 317
%token yykw_initialise 318
%token yykw_always 319
%token yykw_as 320
%token yykw_post 321
%token yykw_pre 322
%token yytk_e_BLANK_x_BLANK_i_BLANK_s_BLANK_t_BLANK_s_BLANK_EXCLAM 323
%token yykw_exists 324
%token yytk_MINUS_BACKSLASH 325
%token yytk_PLUS_GREATER 326
%token yytk_DOT_GREATER 327
%token yytk_LESS_DOT 328
%token yytk_DOT_DOT 329
%token yykw_swap 330
%token yykw_stop 331
%token yykw_skip 332
%token yykw_chaos 333
%token yytk_BACKQUOTE 334
%token yykw_false 335
%token yykw_true 336
%token yykw_any 337
%token yykw_out 338
%token yykw_write 339
%token yykw_read 340
%token yykw_of 341
%token yykw_array 342
%token yytk_BAR_RBRACE 343
%token yytk_LBRACE_BAR 344
%token yytk_MINUS_GREATER 345
%token yytk_MINUS_TILDE_MINUS_GREATER 346
%token yytk_MINUS_TILDE_m_BLANK_MINUS_GREATER 347
%token yytk_MINUS_m_BLANK_MINUS_GREATER 348
%token yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_l_BLANK_i_BLANK_s_BLANK_t_BLANK 349
%token yytk_MINUS_l_BLANK_i_BLANK_s_BLANK_t_BLANK 350
%token yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_s_BLANK_e_BLANK_t_BLANK 351
%token yytk_MINUS_s_BLANK_e_BLANK_t_BLANK 352
%token yytk_GREATER_LESS 353
%token yykw_Char 354
%token yykw_Text 355
%token yykw_Real 356
%token yykw_Nat 357
%token yykw_Int 358
%token yykw_Bool 359
%token yykw_Unit 360
%token yytk_RBRACE 361
%token yytk_LBRACE 362
%token yytk_BAR_RBRACKET 363
%token yytk_LBRACKET_BAR 364
%token yykw_use 365
%token yykw_hide 366
%token yykw_with 367
%token yykw_extend 368
%token yykw_class 369
%token yytk_l_BLANK_t_BLANK_l_BLANK_UNDERSCORE_a_BLANK_s_BLANK_s_BLANK_e_BLANK_r_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK 370
%token yykw_all 371
%token yytk_COLON_MINUS 372
%token yytk_LPAREN_LBRACKET_EQUAL_RBRACKET 373
%token yytk_EQUAL_EQUAL_GREATER 374
%token yykw_else 375
%token yytk_LBRACKET_EQUAL_RBRACKET 376
%token yytk_LBRACKET_GREATER_RBRACKET 377
%token yykw_where 378
%token yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_u_BLANK_l_BLANK_e_BLANK_s_BLANK 379
%token yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK 380
%token yytk_SLASH_BACKSLASH 381
%token yytk_i_BLANK_n_BLANK_i_BLANK_t_BLANK_UNDERSCORE_c_BLANK_o_BLANK_n_BLANK_s_BLANK_t_BLANK_r_BLANK_a_BLANK_i_BLANK_n_BLANK_t_BLANK 382
%token yykw_local 383
%token yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_s_BLANK_y_BLANK_s_BLANK_t_BLANK_e_BLANK_m_BLANK 384
%token yytk_t_BLANK_e_BLANK_s_BLANK_t_BLANK_UNDERSCORE_c_BLANK_a_BLANK_s_BLANK_e_BLANK 385
%token yykw_channel 386
%token yytk_COLON_EQUAL 387
%token yykw_variable 388
%token yykw_is 389
%token yykw_value 390
%token yytk_COLON_COLON 391
%token yytk_LESS_MINUS_GREATER 392
%token yytk_UNDERSCORE 393
%token yytk_BAR 394
%token yytk_EQUAL_EQUAL 395
%token yykw_type 396
%token yytk_RBRACKET 397
%token yytk_LBRACKET 398
%token yytk_EQUAL 399
%token yykw_for 400
%token yytk_LBRACKET_EQUAL 401
%token yytk_LBRACE_EQUAL 402
%token yytk_RPAREN 403
%token yytk_LPAREN 404
%token yytk_BAR_MINUS 405
%token yykw_in 406
%token yytk_COMMA 407
%token yykw_end 408
%token yykw_axiom 409
%token yytk_COLON 410
%token yytk_d_BLANK_e_BLANK_v_BLANK_t_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK 411
%token yykw_theory 412
%token yykw_object 413
%token yykw_scheme 414
%%
ROOT_:
   Init_env
   lib_module

{
yy yyb;
yy yyv_M;
yy yy_2_1;
yy yyv_G;
yy yy_2_2;
yy yy_4_1;
yy yyv_L;
yy yy_5_1_2_1;
yy yy_5_1_3_1;
yy yy_5_1_3_2;
yy yy_5_2_2_1;
yy yy_5_2_2_2;
yy yy_5_3_2_1;
yy yy_5_3_2_2;
yy yy_5_4_4_1_2_1;
yy yy_5_4_6_1;
yy yy_5_4_6_2;
yy yy_5_4_8_1_2_1;
yy yy_5_4_9_1_2_1;
yy yyv_UM;
yy yy_5_4_9_1_2_2;
yy yy_5_4_9_1_3_1;
yy yy_5_4_9_1_5_1;
yy yy_5_4_9_1_8_1_2_1;
yy yy_5_4_9_1_9_1;
yy yyv_UUM;
yy yy_5_4_9_1_9_2;
yy yy_5_4_9_1_10_1;
yy yy_5_4_9_1_12_1;
yy yy_5_4_9_1_15_1_2_1;
yy yy_5_4_9_1_16_1;
yy yyv_UUUM;
yy yy_5_4_9_1_16_2;
yy yy_5_4_9_1_17_1;
yy yy_5_4_10_1_2_1;
yy yy_5_4_10_1_4_1;
yy yy_5_4_10_1_4_2;
yy yy_5_4_10_1_5_1;
yy_2_1 = (yy)($2.attr[1]);
yy_2_2 = (yy)($2.attr[2]);
yyv_M = yy_2_1;
yyv_G = yy_2_2;
PrintVersion();
yy_4_1 = yyv_M;
Set_module_name_and_pos(yy_4_1);
{
yy yysb = yyb;
if (! PpWanted()) goto yyfl_1_1_5_1;
PpLength(&yy_5_1_2_1);
yyv_L = yy_5_1_2_1;
yy_5_1_3_1 = yyv_M;
yy_5_1_3_2 = yyv_L;
Pretty_print(yy_5_1_3_1, yy_5_1_3_2);
goto yysl_1_1_5;
yyfl_1_1_5_1 : ;
if (! GraphWanted()) goto yyfl_1_1_5_2;
yy_5_2_2_1 = yyv_M;
yy_5_2_2_2 = yyv_G;
Make_dependency_graph(yy_5_2_2_1, yy_5_2_2_2);
goto yysl_1_1_5;
yyfl_1_1_5_2 : ;
if (! DepsWanted()) goto yyfl_1_1_5_3;
yy_5_3_2_1 = yyv_M;
yy_5_3_2_2 = yyv_G;
Print_module_deps(yy_5_3_2_1, yy_5_3_2_2);
goto yysl_1_1_5;
yyfl_1_1_5_3 : ;
{
yy yysb = yyb;
if (! SMLWanted()) goto yyfl_1_1_5_4_1_1;
Init_SML_vars();
Init_SML_file();
goto yysl_1_1_5_4_1;
yyfl_1_1_5_4_1_1 : ;
goto yysl_1_1_5_4_1;
yysl_1_1_5_4_1 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! FDRWanted()) goto yyfl_1_1_5_4_2_1;
FDR_init();
goto yysl_1_1_5_4_2;
yyfl_1_1_5_4_2_1 : ;
goto yysl_1_1_5_4_2;
yysl_1_1_5_4_2 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! CPPWanted()) goto yyfl_1_1_5_4_3_1;
CPP_init();
goto yysl_1_1_5_4_3;
yyfl_1_1_5_4_3_1 : ;
goto yysl_1_1_5_4_3;
yysl_1_1_5_4_3 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! PVSWanted()) goto yyfl_1_1_5_4_4_1;
yy_5_4_4_1_2_1 = yyv_M;
PVS_init(yy_5_4_4_1_2_1);
goto yysl_1_1_5_4_4;
yyfl_1_1_5_4_4_1 : ;
goto yysl_1_1_5_4_4;
yysl_1_1_5_4_4 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! SALWanted()) goto yyfl_1_1_5_4_5_1;
SAL_init();
goto yysl_1_1_5_4_5;
yyfl_1_1_5_4_5_1 : ;
goto yysl_1_1_5_4_5;
yysl_1_1_5_4_5 : ;
yyb = yysb;
}
yy_5_4_6_1 = yyv_M;
yy_5_4_6_2 = yyv_G;
Make_env(yy_5_4_6_1, yy_5_4_6_2);
{
yy yysb = yyb;
if (! SALWanted()) goto yyfl_1_1_5_4_7_1;
SAL_Translate();
goto yysl_1_1_5_4_7;
yyfl_1_1_5_4_7_1 : ;
goto yysl_1_1_5_4_7;
yysl_1_1_5_4_7 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! RTTWanted()) goto yyfl_1_1_5_4_8_1;
yy_5_4_8_1_2_1 = yyv_M;
gen_rtt_ascii(yy_5_4_8_1_2_1);
goto yysl_1_1_5_4_8;
yyfl_1_1_5_4_8_1 : ;
goto yysl_1_1_5_4_8;
yysl_1_1_5_4_8 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! UnfoldTransCollectionNamesWanted()) goto yyfl_1_1_5_4_9_1;
yy_5_4_9_1_2_1 = yyv_M;
unfold_to_rsl(yy_5_4_9_1_2_1, &yy_5_4_9_1_2_2);
yyv_UM = yy_5_4_9_1_2_2;
yy_5_4_9_1_3_1 = ((yy)"First pass (unfold named collections of transition rules) completed...");
Putmsg(yy_5_4_9_1_3_1);
Putnl();
yy_5_4_9_1_5_1 = ((yy)"Setting parameter for second pass...");
Putmsg(yy_5_4_9_1_5_1);
SetUnfoldGenRulesProps();
Putnl();
{
yy yysb = yyb;
if (! UnfoldGenericRulesPropsWanted()) goto yyfl_1_1_5_4_9_1_8_1;
yy_5_4_9_1_8_1_2_1 = ((yy)"Successfully set...");
Putmsg(yy_5_4_9_1_8_1_2_1);
Putnl();
goto yysl_1_1_5_4_9_1_8;
yyfl_1_1_5_4_9_1_8_1 : ;
goto yysl_1_1_5_4_9_1_8;
yysl_1_1_5_4_9_1_8 : ;
yyb = yysb;
}
yy_5_4_9_1_9_1 = yyv_UM;
unfold_to_rsl(yy_5_4_9_1_9_1, &yy_5_4_9_1_9_2);
yyv_UUM = yy_5_4_9_1_9_2;
yy_5_4_9_1_10_1 = ((yy)"Second pass (unfold generic rules and properties) completed...");
Putmsg(yy_5_4_9_1_10_1);
Putnl();
yy_5_4_9_1_12_1 = ((yy)"Setting parameter for third pass...");
Putmsg(yy_5_4_9_1_12_1);
SetUnfoldGenVarRefs();
Putnl();
{
yy yysb = yyb;
if (! UnfoldGenericVariableRefsWanted()) goto yyfl_1_1_5_4_9_1_15_1;
yy_5_4_9_1_15_1_2_1 = ((yy)"Successfully set...");
Putmsg(yy_5_4_9_1_15_1_2_1);
Putnl();
goto yysl_1_1_5_4_9_1_15;
yyfl_1_1_5_4_9_1_15_1 : ;
goto yysl_1_1_5_4_9_1_15;
yysl_1_1_5_4_9_1_15 : ;
yyb = yysb;
}
yy_5_4_9_1_16_1 = yyv_UUM;
unfold_to_rsl(yy_5_4_9_1_16_1, &yy_5_4_9_1_16_2);
yyv_UUUM = yy_5_4_9_1_16_2;
yy_5_4_9_1_17_1 = ((yy)"Third pass (unfold generic variable names) completed...");
Putmsg(yy_5_4_9_1_17_1);
Putnl();
goto yysl_1_1_5_4_9;
yyfl_1_1_5_4_9_1 : ;
goto yysl_1_1_5_4_9;
yysl_1_1_5_4_9 : ;
yyb = yysb;
}
{
yy yysb = yyb;
if (! TransformToTransrelWanted()) goto yyfl_1_1_5_4_10_1;
yy_5_4_10_1_2_1 = ((yy)"Transforming to transition relation...");
Putmsg(yy_5_4_10_1_2_1);
Putnl();
yy_5_4_10_1_4_1 = yyv_M;
unfold_to_transrel(yy_5_4_10_1_4_1, &yy_5_4_10_1_4_2);
yyv_UM = yy_5_4_10_1_4_2;
yy_5_4_10_1_5_1 = ((yy)"Finished transforming...");
Putmsg(yy_5_4_10_1_5_1);
Putnl();
goto yysl_1_1_5_4_10;
yyfl_1_1_5_4_10_1 : ;
goto yysl_1_1_5_4_10;
yysl_1_1_5_4_10 : ;
yyb = yysb;
}
goto yysl_1_1_5;
yysl_1_1_5 : ;
yyb = yysb;
}
$$.attr[0] = $1.attr[0];
}
;
Init_env:

{
yy yyb;
yy yy_1;
yy yy_2;
yy yy_2_1;
yy yy_2_2;
yy yy_3;
yy yy_4;
yy yy_5_1;
yy yyv_Dummy_id1;
yy yy_5_2;
yy yy_6;
yy yy_7_1;
yy yyv_Dummy_id2;
yy yy_7_2;
yy yy_8;
yy yy_9_1;
yy yyv_Time_id;
yy yy_9_2;
yy yy_10;
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yy_1 = yyb + 0;
yy_1[0] = 2;
yyglov_Current = yy_1;
yy_2_1 = yyb + 4;
yy_2_1[0] = 3;
yy_2_2 = yyb + 5;
yy_2_2[0] = 2;
yy_2 = yyb + 1;
yy_2[0] = 1;
yy_2[1] = ((long)yy_2_1);
yy_2[2] = ((long)yy_2_2);
yyglov_Extend_paths = yy_2;
yy_3 = ((yy)100);
yyglov_Polynum = yy_3;
yy_4 = yyb + 6;
yy_4[0] = 2;
yyglov_Type_numbers = yy_4;
yy_5_1 = ((yy)"_");
string_to_id(yy_5_1, &yy_5_2);
yyv_Dummy_id1 = yy_5_2;
yy_6 = yyv_Dummy_id1;
yyglov_Dummy_id1 = yy_6;
yy_7_1 = ((yy)"__");
string_to_id(yy_7_1, &yy_7_2);
yyv_Dummy_id2 = yy_7_2;
yy_8 = yyv_Dummy_id2;
yyglov_Dummy_id2 = yy_8;
yy_9_1 = ((yy)"Time");
string_to_id(yy_9_1, &yy_9_2);
yyv_Time_id = yy_9_2;
yy_10 = yyv_Time_id;
yyglov_Time_id = yy_10;
InitCcVar();
Make_op_types();
Define_SAL_property_funs();
Clear_LTL_Wanted();
Clear_Has_LTL();
yyGetPos(&$$.attr[0]);
}
;
lib_module:
   context_files
   yykw_scheme
   scheme_def
   eofile
   context

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_2;
yy yyv_P;
yy yy_1;
yy yyv_FS;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_C;
yy yy_6_1;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($5.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_P = yy_1;
yyv_FS = yy_2_1;
yyv_D = yy_4_1;
yyv_C = yy_6_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_2 = yyv_C;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
lib_module:
   context_files
   yykw_object
   object_def
   eofile
   context

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_2;
yy yyv_P;
yy yy_1;
yy yyv_FS;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_C;
yy yy_6_1;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($5.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_P = yy_1;
yyv_FS = yy_2_1;
yyv_D = yy_4_1;
yyv_C = yy_6_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_2 = yyv_C;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
lib_module:
   context_files
   yykw_theory
   theory_def
   eofile
   context

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_2;
yy yyv_P;
yy yy_1;
yy yyv_FS;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_C;
yy yy_6_1;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($5.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_P = yy_1;
yyv_FS = yy_2_1;
yyv_D = yy_4_1;
yyv_C = yy_6_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_2 = yyv_C;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
lib_module:
   context_files
   yytk_d_BLANK_e_BLANK_v_BLANK_t_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK
   devt_relation_def
   eofile
   context

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_2;
yy yyv_P;
yy yy_1;
yy yyv_FS;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_C;
yy yy_6_1;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($5.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_P = yy_1;
yyv_FS = yy_2_1;
yyv_D = yy_4_1;
yyv_C = yy_6_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_2 = yyv_C;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
context_files:
   opt_files

{
yy yyb;
yy yy_0_1;
yy yyv_FS;
yy yy_1_1;
yy yy_2_2_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_FS = yy_1_1;
{
yy yysb = yyb;
if (! PpWanted()) goto yyfl_9_1_2_1;
goto yysl_9_1_2;
yyfl_9_1_2_1 : ;
yy_2_2_1_1 = yyv_FS;
Expand_context(yy_2_2_1_1);
goto yysl_9_1_2;
yysl_9_1_2 : ;
yyb = yysb;
}
yy_0_1 = yyv_FS;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
context:
   nextunit
   module
   eofile
   context

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Mod;
yy yy_2_1;
yy yyv_Mods;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Mod = yy_2_1;
yyv_Mods = yy_4_1;
yy_0_1_1 = yyv_Mod;
yy_0_1_2 = yyv_Mods;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
context:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
module:
   context_files
   yykw_scheme
   scheme_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_FS;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_FS = yy_1_1;
yyv_D = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
module:
   context_files
   yykw_object
   object_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_FS;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_FS = yy_1_1;
yyv_D = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
module:
   context_files
   yykw_theory
   theory_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_FS;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_FS = yy_1_1;
yyv_D = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
module:
   context_files
   yytk_d_BLANK_e_BLANK_v_BLANK_t_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK
   devt_relation_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_FS;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_FS = yy_1_1;
yyv_D = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_FS;
yy_0_1_3 = yyv_FS;
yy_0_1_4 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
theory_def:
   id
   yytk_COLON
   yykw_axiom
   opt_theory_axiom_list
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_ID;
yy yy_1_1;
yy yyv_AXS;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_ID = yy_1_1;
yyv_AXS = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_ID;
yy_0_1_3 = yyv_AXS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_theory_axiom_list:
   theory_axiom_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_theory_axiom_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
theory_axiom_list:
   theory_axiom
   yytk_COMMA
   theory_axiom_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
theory_axiom_list:
   theory_axiom

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_axiom:
   axiom_naming
   theory_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_axiom:
   theory_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_expr:
   class_scope_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_expr:
   implementation_relation

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_expr:
   implementation_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
theory_expr:
   value_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_scope_expr:
   yykw_in
   class_expr
   yytk_BAR_MINUS
   theory_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_C;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_C = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 42;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_scope_expr:
   yytk_LPAREN
   class_scope_expr
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
implementation_relation:
   yytk_BAR_MINUS
   class_expr
   yytk_LBRACE_EQUAL
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_C1;
yy yy_2_1;
yy yyv_C2;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_C1 = yy_2_1;
yyv_C2 = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C1;
yy_0_1_3 = yyv_C2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 43;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
implementation_relation:
   yytk_LPAREN
   implementation_relation
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
implementation_expr:
   yytk_BAR_MINUS
   object_expr
   yytk_LBRACKET_EQUAL
   object_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_O1;
yy yy_2_1;
yy yyv_O2;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_O1 = yy_2_1;
yyv_O2 = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_O1;
yy_0_1_3 = yyv_O2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 44;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
implementation_expr:
   yytk_LPAREN
   implementation_expr
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
devt_relation_def:
   id
   yytk_LPAREN
   id
   yykw_for
   id
   yytk_RPAREN
   yytk_COLON
   theory_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_Id;
yy yy_1_1;
yy yyv_Id1;
yy yy_3_1;
yy yyv_Id2;
yy yy_5_1;
yy yyv_E;
yy yy_8_1;
yy yyv_P;
yy yy_9;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($5.attr[1]);
yy_8_1 = (yy)($8.attr[1]);
yy_9 = (yy)($8.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_Id1 = yy_3_1;
yyv_Id2 = yy_5_1;
yyv_E = yy_8_1;
yyv_P = yy_9;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_Id1;
yy_0_1_4 = yyv_Id2;
yy_0_1_5 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_decl_string:
   decl_string

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_decl_string:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
decl_string:
   decl
   decl_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl_string:
   decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   object_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   type_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   value_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   variable_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   channel_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   axiom_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   test_case_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   trans_sys_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
decl:
   property_decl

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
scheme_def:
   id
   opt_formal_scheme_parameter
   yytk_EQUAL
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_PS;
yy yy_2_1;
yy yyv_C;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_PS = yy_2_1;
yyv_C = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_PS;
yy_0_1_4 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $3.attr[0];
}
;
opt_formal_scheme_parameter:
   formal_scheme_parameter

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_formal_scheme_parameter:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
formal_scheme_parameter:
   yytk_LPAREN
   formal_scheme_argument_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_scheme_argument_list:
   formal_scheme_argument
   yytk_COMMA
   formal_scheme_argument_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
formal_scheme_argument_list:
   formal_scheme_argument

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_scheme_argument:
   object_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_decl:
   yykw_object
   object_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_def_list:
   object_def
   yytk_COMMA
   object_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
object_def_list:
   object_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_def:
   id
   opt_formal_array_parameter
   yytk_COLON
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_TS;
yy yy_2_1;
yy yyv_C;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_TS = yy_2_1;
yyv_C = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_TS;
yy_0_1_4 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $3.attr[0];
}
;
opt_formal_array_parameter:
   formal_array_parameter

{
yy yyb;
yy yy_0_1;
yy yyv_TS;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_TS = yy_1_1;
yy_0_1 = yyv_TS;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_formal_array_parameter:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
formal_array_parameter:
   yytk_LBRACKET
   typing_list
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yyv_TS;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_TS = yy_2_1;
yy_0_1 = yyv_TS;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_decl:
   yykw_type
   type_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def_list:
   type_def
   yytk_COMMA
   type_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
type_def_list:
   type_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def:
   sort_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def:
   variant_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def:
   union_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def:
   short_record_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_def:
   abbreviation_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sort_def:
   type_id_def

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_Id = yy_1_1;
yy_0_1 = yyv_Id;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variant_def:
   type_id_def
   yytk_EQUAL_EQUAL
   variant_choice

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_CHS;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_CHS = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_CHS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
variant_choice:
   variant
   yytk_BAR
   variant_choice

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
variant_choice:
   variant

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variant:
   constructor

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_C;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variant:
   record_variant

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
record_variant:
   constructor
   yytk_LPAREN
   component_kind_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_C;
yy yy_1_1;
yy yyv_CS;
yy yy_3_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_CS = yy_3_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C;
yy_0_1_3 = yyv_CS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
component_kind_list:
   component_kind
   yytk_COMMA
   component_kind_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
component_kind_list:
   component_kind

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
component_kind_string:
   component_kind
   component_kind_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
component_kind_string:
   component_kind

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
component_kind:
   id
   yytk_COLON
   type_expr
   opt_reconstructor

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yy_0_1_2_2_1;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_T;
yy yy_4_1;
yy yyv_R;
yy yy_5_1;
yy yyv_P;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 10; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_P1 = yy_2;
yyv_T = yy_4_1;
yyv_R = yy_5_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_P1;
yy_0_1_2_2_1 = yyv_Id;
yy_0_1_2_2 = yyb + 8;
yy_0_1_2_2[0] = 1;
yy_0_1_2_2[1] = ((long)yy_0_1_2_2_1);
yy_0_1_2 = yyb + 5;
yy_0_1_2[0] = 1;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1_3 = yyv_T;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
component_kind:
   op
   yytk_COLON
   type_expr
   opt_reconstructor

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yy_0_1_2_2_1;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Op;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_T;
yy yy_4_1;
yy yyv_R;
yy yy_5_1;
yy yyv_P;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 10; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_P1 = yy_2;
yyv_T = yy_4_1;
yyv_R = yy_5_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_P1;
yy_0_1_2_2_1 = yyv_Op;
yy_0_1_2_2 = yyb + 8;
yy_0_1_2_2[0] = 2;
yy_0_1_2_2[1] = ((long)yy_0_1_2_2_1);
yy_0_1_2 = yyb + 5;
yy_0_1_2[0] = 1;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1_3 = yyv_T;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
component_kind:
   type_expr
   opt_reconstructor

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_T;
yy yy_1_1;
yy yyv_R;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_R = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyb + 5;
yy_0_1_2[0] = 3;
yy_0_1_3 = yyv_T;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
constructor:
   id_or_op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
constructor:
   yytk_UNDERSCORE

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_reconstructor:
   reconstructor

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_reconstructor:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
reconstructor:
   yytk_LESS_MINUS_GREATER
   id_or_op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
union_def:
   type_id_def
   yytk_EQUAL
   name_or_wildcard_choice2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_NS;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_NS = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_NS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
name_or_wildcard_choice2:
   name_or_wildcard
   yytk_BAR
   name_or_wildcard_choice

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_NS;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_NS = yy_3_1;
yy_0_1_1 = yyv_N;
yy_0_1_2 = yyv_NS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
name_or_wildcard_choice:
   name_or_wildcard
   yytk_BAR
   name_or_wildcard_choice

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_NS;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_NS = yy_3_1;
yy_0_1_1 = yyv_N;
yy_0_1_2 = yyv_NS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
name_or_wildcard_choice:
   name_or_wildcard

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yy_0_1_1 = yyv_N;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
name_or_wildcard:
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
name_or_wildcard:
   yytk_UNDERSCORE

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
short_record_def:
   type_id_def
   yytk_COLON_COLON
   component_kind_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_CS;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_CS = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_CS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
abbreviation_def:
   type_id_def
   yytk_EQUAL
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
value_decl:
   yykw_value
   value_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def_list:
   value_def
   yytk_COMMA
   value_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
value_def_list:
   value_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   commented_typing

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   explicit_value_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   implicit_value_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   explicit_function_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   implicit_function_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_def:
   gen_value_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
explicit_value_def:
   single_typing
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_P;
yy yy_3;
yy yyv_E;
yy yy_4_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3 = (yy)($2.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_P = yy_3;
yyv_E = yy_4_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
implicit_value_def:
   single_typing
   restriction

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_R;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_P = yy_2;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
explicit_function_def:
   single_typing
   formal_function_application
   yykw_is
   value_expr_pr12
   opt_post_condition
   opt_pre_condition
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yy_0_1_6;
yy yy_0_1_7;
yy yy_0_1_7_1;
yy yy_0_1_7_2;
yy yyv_T;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy yyv_E;
yy yy_5_1;
yy yyv_PB;
yy yy_6;
yy yyv_PO;
yy yy_7_1;
yy yyv_PR;
yy yy_8_1;
yy yyv_PE;
yy yy_10;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yy_5_1 = (yy)($4.attr[1]);
yy_6 = (yy)($4.attr[0]);
yy_7_1 = (yy)($5.attr[1]);
yy_8_1 = (yy)($6.attr[1]);
yy_10 = (yy)($7.attr[0]);
yyb = yyh;
yyh += 11; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_A = yy_2_1;
yyv_P = yy_3;
yyv_E = yy_5_1;
yyv_PB = yy_6;
yyv_PO = yy_7_1;
yyv_PR = yy_8_1;
yyv_PE = yy_10;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_A;
yy_0_1_4 = yyv_E;
yy_0_1_5 = yyv_PO;
yy_0_1_6 = yyv_PR;
yy_0_1_7_1 = yyv_PB;
yy_0_1_7_2 = yyv_PE;
yy_0_1_7 = yyb + 8;
yy_0_1_7[0] = 1;
yy_0_1_7[1] = ((long)yy_0_1_7_1);
yy_0_1_7[2] = ((long)yy_0_1_7_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yy_0_1[6] = ((long)yy_0_1_6);
yy_0_1[7] = ((long)yy_0_1_7);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $3.attr[0];
}
;
formal_function_application:
   id_application

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_function_application:
   prefix_application

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_function_application:
   infix_application

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
id_application:
   id
   formal_function_parameter_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_PS;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_PS = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_Id;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 1;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3 = yyv_PS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_function_parameter_string:
   formal_function_parameter
   formal_function_parameter_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_function_parameter_string:
   formal_function_parameter

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
formal_function_parameter:
   yytk_LPAREN
   opt_binding_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_application:
   prefix_op
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yy_0_1_3_1_1;
yy yy_0_1_3_1_2;
yy yy_0_1_3_1_2_1;
yy yy_0_1_3_1_2_1_1;
yy yy_0_1_3_1_2_1_2;
yy yy_0_1_3_1_2_1_2_1;
yy yy_0_1_3_1_2_2;
yy yy_0_1_3_2;
yy yyv_Op;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_Id;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_4 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 22; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_P1 = yy_2;
yyv_Id = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P1;
yy_0_1_2_1 = yyv_Op;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3_1_1 = yyv_P;
yy_0_1_3_1_2_1_1 = yyv_P;
yy_0_1_3_1_2_1_2_1 = yyv_Id;
yy_0_1_3_1_2_1_2 = yyb + 18;
yy_0_1_3_1_2_1_2[0] = 1;
yy_0_1_3_1_2_1_2[1] = ((long)yy_0_1_3_1_2_1_2_1);
yy_0_1_3_1_2_1 = yyb + 15;
yy_0_1_3_1_2_1[0] = 1;
yy_0_1_3_1_2_1[1] = ((long)yy_0_1_3_1_2_1_1);
yy_0_1_3_1_2_1[2] = ((long)yy_0_1_3_1_2_1_2);
yy_0_1_3_1_2_2 = yyb + 20;
yy_0_1_3_1_2_2[0] = 2;
yy_0_1_3_1_2 = yyb + 12;
yy_0_1_3_1_2[0] = 1;
yy_0_1_3_1_2[1] = ((long)yy_0_1_3_1_2_1);
yy_0_1_3_1_2[2] = ((long)yy_0_1_3_1_2_2);
yy_0_1_3_1 = yyb + 9;
yy_0_1_3_1[0] = 1;
yy_0_1_3_1[1] = ((long)yy_0_1_3_1_1);
yy_0_1_3_1[2] = ((long)yy_0_1_3_1_2);
yy_0_1_3_2 = yyb + 21;
yy_0_1_3_2[0] = 2;
yy_0_1_3 = yyb + 6;
yy_0_1_3[0] = 1;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1_3[2] = ((long)yy_0_1_3_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_application:
   infix_prefix_op
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yy_0_1_3_1_1;
yy yy_0_1_3_1_2;
yy yy_0_1_3_1_2_1;
yy yy_0_1_3_1_2_1_1;
yy yy_0_1_3_1_2_1_2;
yy yy_0_1_3_1_2_1_2_1;
yy yy_0_1_3_1_2_2;
yy yy_0_1_3_2;
yy yyv_Op;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_Id;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_4 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 22; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_P1 = yy_2;
yyv_Id = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P1;
yy_0_1_2_1 = yyv_Op;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3_1_1 = yyv_P;
yy_0_1_3_1_2_1_1 = yyv_P;
yy_0_1_3_1_2_1_2_1 = yyv_Id;
yy_0_1_3_1_2_1_2 = yyb + 18;
yy_0_1_3_1_2_1_2[0] = 1;
yy_0_1_3_1_2_1_2[1] = ((long)yy_0_1_3_1_2_1_2_1);
yy_0_1_3_1_2_1 = yyb + 15;
yy_0_1_3_1_2_1[0] = 1;
yy_0_1_3_1_2_1[1] = ((long)yy_0_1_3_1_2_1_1);
yy_0_1_3_1_2_1[2] = ((long)yy_0_1_3_1_2_1_2);
yy_0_1_3_1_2_2 = yyb + 20;
yy_0_1_3_1_2_2[0] = 2;
yy_0_1_3_1_2 = yyb + 12;
yy_0_1_3_1_2[0] = 1;
yy_0_1_3_1_2[1] = ((long)yy_0_1_3_1_2_1);
yy_0_1_3_1_2[2] = ((long)yy_0_1_3_1_2_2);
yy_0_1_3_1 = yyb + 9;
yy_0_1_3_1[0] = 1;
yy_0_1_3_1[1] = ((long)yy_0_1_3_1_1);
yy_0_1_3_1[2] = ((long)yy_0_1_3_1_2);
yy_0_1_3_2 = yyb + 21;
yy_0_1_3_2[0] = 2;
yy_0_1_3 = yyb + 6;
yy_0_1_3[0] = 1;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1_3[2] = ((long)yy_0_1_3_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_application:
   id
   infix_op
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yy_0_1_3_1_1;
yy yy_0_1_3_1_2;
yy yy_0_1_3_1_2_1;
yy yy_0_1_3_1_2_1_1;
yy yy_0_1_3_1_2_1_2;
yy yy_0_1_3_1_2_1_2_1;
yy yy_0_1_3_1_2_2;
yy yy_0_1_3_1_2_2_1;
yy yy_0_1_3_1_2_2_1_1;
yy yy_0_1_3_1_2_2_1_2;
yy yy_0_1_3_1_2_2_1_2_1;
yy yy_0_1_3_1_2_2_2;
yy yy_0_1_3_2;
yy yyv_Id1;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_Op;
yy yy_3_1;
yy yyv_P2;
yy yy_4;
yy yyv_Id2;
yy yy_5_1;
yy yyv_P3;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_4 = (yy)($2.attr[0]);
yy_5_1 = (yy)($3.attr[1]);
yy_6 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 30; if (yyh > yyhx) yyExtend();
yyv_Id1 = yy_1_1;
yyv_P1 = yy_2;
yyv_Op = yy_3_1;
yyv_P2 = yy_4;
yyv_Id2 = yy_5_1;
yyv_P3 = yy_6;
yy_0_1_1 = yyv_P2;
yy_0_1_2_1 = yyv_Op;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3_1_1 = yyv_P1;
yy_0_1_3_1_2_1_1 = yyv_P1;
yy_0_1_3_1_2_1_2_1 = yyv_Id1;
yy_0_1_3_1_2_1_2 = yyb + 18;
yy_0_1_3_1_2_1_2[0] = 1;
yy_0_1_3_1_2_1_2[1] = ((long)yy_0_1_3_1_2_1_2_1);
yy_0_1_3_1_2_1 = yyb + 15;
yy_0_1_3_1_2_1[0] = 1;
yy_0_1_3_1_2_1[1] = ((long)yy_0_1_3_1_2_1_1);
yy_0_1_3_1_2_1[2] = ((long)yy_0_1_3_1_2_1_2);
yy_0_1_3_1_2_2_1_1 = yyv_P3;
yy_0_1_3_1_2_2_1_2_1 = yyv_Id2;
yy_0_1_3_1_2_2_1_2 = yyb + 26;
yy_0_1_3_1_2_2_1_2[0] = 1;
yy_0_1_3_1_2_2_1_2[1] = ((long)yy_0_1_3_1_2_2_1_2_1);
yy_0_1_3_1_2_2_1 = yyb + 23;
yy_0_1_3_1_2_2_1[0] = 1;
yy_0_1_3_1_2_2_1[1] = ((long)yy_0_1_3_1_2_2_1_1);
yy_0_1_3_1_2_2_1[2] = ((long)yy_0_1_3_1_2_2_1_2);
yy_0_1_3_1_2_2_2 = yyb + 28;
yy_0_1_3_1_2_2_2[0] = 2;
yy_0_1_3_1_2_2 = yyb + 20;
yy_0_1_3_1_2_2[0] = 1;
yy_0_1_3_1_2_2[1] = ((long)yy_0_1_3_1_2_2_1);
yy_0_1_3_1_2_2[2] = ((long)yy_0_1_3_1_2_2_2);
yy_0_1_3_1_2 = yyb + 12;
yy_0_1_3_1_2[0] = 1;
yy_0_1_3_1_2[1] = ((long)yy_0_1_3_1_2_1);
yy_0_1_3_1_2[2] = ((long)yy_0_1_3_1_2_2);
yy_0_1_3_1 = yyb + 9;
yy_0_1_3_1[0] = 1;
yy_0_1_3_1[1] = ((long)yy_0_1_3_1_1);
yy_0_1_3_1[2] = ((long)yy_0_1_3_1_2);
yy_0_1_3_2 = yyb + 29;
yy_0_1_3_2[0] = 2;
yy_0_1_3 = yyb + 6;
yy_0_1_3[0] = 1;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1_3[2] = ((long)yy_0_1_3_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_application:
   id
   infix_prefix_op
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yy_0_1_3_1_1;
yy yy_0_1_3_1_2;
yy yy_0_1_3_1_2_1;
yy yy_0_1_3_1_2_1_1;
yy yy_0_1_3_1_2_1_2;
yy yy_0_1_3_1_2_1_2_1;
yy yy_0_1_3_1_2_2;
yy yy_0_1_3_1_2_2_1;
yy yy_0_1_3_1_2_2_1_1;
yy yy_0_1_3_1_2_2_1_2;
yy yy_0_1_3_1_2_2_1_2_1;
yy yy_0_1_3_1_2_2_2;
yy yy_0_1_3_2;
yy yyv_Id1;
yy yy_1_1;
yy yyv_P1;
yy yy_2;
yy yyv_Op;
yy yy_3_1;
yy yyv_P2;
yy yy_4;
yy yyv_Id2;
yy yy_5_1;
yy yyv_P3;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_4 = (yy)($2.attr[0]);
yy_5_1 = (yy)($3.attr[1]);
yy_6 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 30; if (yyh > yyhx) yyExtend();
yyv_Id1 = yy_1_1;
yyv_P1 = yy_2;
yyv_Op = yy_3_1;
yyv_P2 = yy_4;
yyv_Id2 = yy_5_1;
yyv_P3 = yy_6;
yy_0_1_1 = yyv_P2;
yy_0_1_2_1 = yyv_Op;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3_1_1 = yyv_P1;
yy_0_1_3_1_2_1_1 = yyv_P1;
yy_0_1_3_1_2_1_2_1 = yyv_Id1;
yy_0_1_3_1_2_1_2 = yyb + 18;
yy_0_1_3_1_2_1_2[0] = 1;
yy_0_1_3_1_2_1_2[1] = ((long)yy_0_1_3_1_2_1_2_1);
yy_0_1_3_1_2_1 = yyb + 15;
yy_0_1_3_1_2_1[0] = 1;
yy_0_1_3_1_2_1[1] = ((long)yy_0_1_3_1_2_1_1);
yy_0_1_3_1_2_1[2] = ((long)yy_0_1_3_1_2_1_2);
yy_0_1_3_1_2_2_1_1 = yyv_P3;
yy_0_1_3_1_2_2_1_2_1 = yyv_Id2;
yy_0_1_3_1_2_2_1_2 = yyb + 26;
yy_0_1_3_1_2_2_1_2[0] = 1;
yy_0_1_3_1_2_2_1_2[1] = ((long)yy_0_1_3_1_2_2_1_2_1);
yy_0_1_3_1_2_2_1 = yyb + 23;
yy_0_1_3_1_2_2_1[0] = 1;
yy_0_1_3_1_2_2_1[1] = ((long)yy_0_1_3_1_2_2_1_1);
yy_0_1_3_1_2_2_1[2] = ((long)yy_0_1_3_1_2_2_1_2);
yy_0_1_3_1_2_2_2 = yyb + 28;
yy_0_1_3_1_2_2_2[0] = 2;
yy_0_1_3_1_2_2 = yyb + 20;
yy_0_1_3_1_2_2[0] = 1;
yy_0_1_3_1_2_2[1] = ((long)yy_0_1_3_1_2_2_1);
yy_0_1_3_1_2_2[2] = ((long)yy_0_1_3_1_2_2_2);
yy_0_1_3_1_2 = yyb + 12;
yy_0_1_3_1_2[0] = 1;
yy_0_1_3_1_2[1] = ((long)yy_0_1_3_1_2_1);
yy_0_1_3_1_2[2] = ((long)yy_0_1_3_1_2_2);
yy_0_1_3_1 = yyb + 9;
yy_0_1_3_1[0] = 1;
yy_0_1_3_1[1] = ((long)yy_0_1_3_1_1);
yy_0_1_3_1[2] = ((long)yy_0_1_3_1_2);
yy_0_1_3_2 = yyb + 29;
yy_0_1_3_2[0] = 2;
yy_0_1_3 = yyb + 6;
yy_0_1_3[0] = 1;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1_3[2] = ((long)yy_0_1_3_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
implicit_function_def:
   single_typing
   formal_function_application
   post_condition
   opt_pre_condition

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_T;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy yyv_E;
yy yy_4_1;
yy yyv_PR;
yy yy_5_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_A = yy_2_1;
yyv_P = yy_3;
yyv_E = yy_4_1;
yyv_PR = yy_5_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_A;
yy_0_1_4 = yyv_E;
yy_0_1_5 = yyv_PR;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
gen_value_def:
   id
   yytk_LBRACKET
   typing_list
   yytk_RBRACKET
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_TS;
yy yy_3_1;
yy yyv_T;
yy yy_6_1;
yy yyv_P;
yy yy_7;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($6.attr[1]);
yy_7 = (yy)($6.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_TS = yy_3_1;
yyv_T = yy_6_1;
yyv_P = yy_7;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_TS;
yy_0_1_4 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
variable_decl:
   yykw_variable
   variable_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variable_def_list:
   variable_def
   yytk_COMMA
   variable_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
variable_def_list:
   variable_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variable_def:
   single_variable_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variable_def:
   multiple_variable_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
variable_def:
   gen_variable_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
gen_variable_def:
   id
   yytk_LBRACKET
   typing_list
   yytk_RBRACKET
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_TS;
yy yy_3_1;
yy yyv_T;
yy yy_6_1;
yy yyv_P;
yy yy_7;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_6_1 = (yy)($6.attr[1]);
yy_7 = (yy)($6.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_TS = yy_3_1;
yyv_T = yy_6_1;
yyv_P = yy_7;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_TS;
yy_0_1_4 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
single_variable_def:
   id
   yytk_COLON
   type_expr
   opt_initialisation

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Id;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_I;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_T = yy_3_1;
yyv_I = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_T;
yy_0_1_4 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_initialisation:
   initialisation

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_initialisation:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
initialisation:
   yytk_COLON_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_V;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_V = yy_2_1;
yy_0_1_1 = yyv_V;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
multiple_variable_def:
   id_list2
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Ids;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Ids = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Ids;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
channel_decl:
   yykw_channel
   channel_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
channel_def_list:
   channel_def
   yytk_COMMA
   channel_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
channel_def_list:
   channel_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
channel_def:
   single_channel_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
channel_def:
   multiple_channel_def

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
single_channel_def:
   id
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
multiple_channel_def:
   id_list2
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Ids;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Ids = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Ids;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
axiom_decl:
   yykw_axiom
   axiom_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_def_list:
   axiom_def
   yytk_COMMA
   axiom_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
axiom_def_list:
   axiom_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_def:
   axiom_naming
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_def:
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_naming:
   yytk_LBRACKET
   id
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
test_case_decl:
   yytk_t_BLANK_e_BLANK_s_BLANK_t_BLANK_UNDERSCORE_c_BLANK_a_BLANK_s_BLANK_e_BLANK
   test_case_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
test_case_def_list:
   test_case_def
   yytk_COMMA
   test_case_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
test_case_def_list:
   test_case_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
test_case_def:
   test_case_naming
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
test_case_def:
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
test_case_naming:
   yytk_LBRACKET
   id
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_decl:
   yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_s_BLANK_y_BLANK_s_BLANK_t_BLANK_e_BLANK_m_BLANK
   trans_sys_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_def_list:
   trans_sys_def
   yytk_COMMA
   trans_sys_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
trans_sys_def_list:
   trans_sys_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_def:
   yytk_LBRACKET
   id
   yytk_RBRACKET
   sys_description

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_2_1;
yyv_D = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sys_description:
   trans_sys_inputs
   trans_sys_locals
   trans_sys_trans

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Input;
yy yy_1_1;
yy yyv_Local;
yy yy_2_1;
yy yyv_Transitions;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Input = yy_1_1;
yyv_Local = yy_2_1;
yyv_Transitions = yy_3_1;
yy_0_1_1 = yyv_Input;
yy_0_1_2 = yyv_Local;
yy_0_1_3 = yyv_Transitions;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sys_description:
   trans_sys_locals
   trans_sys_trans

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Local;
yy yy_1_1;
yy yyv_Transitions;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Local = yy_1_1;
yyv_Transitions = yy_2_1;
yy_0_1_1 = yyv_Local;
yy_0_1_2 = yyv_Transitions;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sys_description:
   trans_sys_locals
   trans_sys_constraint
   trans_sys_trans

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Local;
yy yy_1_1;
yy yyv_Constraint;
yy yy_2_1;
yy yyv_Transitions;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Local = yy_1_1;
yyv_Constraint = yy_2_1;
yyv_Transitions = yy_3_1;
yy_0_1_1 = yyv_Local;
yy_0_1_2 = yyv_Constraint;
yy_0_1_3 = yyv_Transitions;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sys_description:
   trans_sys_locals
   trans_sys_constraint
   trans_sys_transrel

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Local;
yy yy_1_1;
yy yyv_Constraint;
yy yy_2_1;
yy yyv_Relation;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Local = yy_1_1;
yyv_Constraint = yy_2_1;
yyv_Relation = yy_3_1;
yy_0_1_1 = yyv_Local;
yy_0_1_2 = yyv_Constraint;
yy_0_1_3 = yyv_Relation;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_inputs:
   yykw_in
   variable_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_2;
yy yyv_DS;
yy yy_3_1;
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yyv_DS = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_DS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_locals:
   yykw_local
   variable_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_2;
yy yyv_DS;
yy yy_3_1;
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yyv_DS = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_DS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_locals:
   yykw_variable
   variable_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_2;
yy yyv_DS;
yy yy_3_1;
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yyv_DS = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_DS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_constraint:
   yytk_i_BLANK_n_BLANK_i_BLANK_t_BLANK_UNDERSCORE_c_BLANK_o_BLANK_n_BLANK_s_BLANK_t_BLANK_r_BLANK_a_BLANK_i_BLANK_n_BLANK_t_BLANK
   constraint_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_2;
yy yyv_Constraints;
yy yy_3_1;
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yyv_Constraints = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Constraints;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
constraint_list:
   value_infix_expr_pr6

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
constraint_list:
   yytk_LPAREN
   quantified_expr
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
constraint_list:
   value_infix_expr_pr6
   yytk_SLASH_BACKSLASH
   constraint_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
constraint_list:
   yytk_LPAREN
   quantified_expr
   yytk_RPAREN
   yytk_SLASH_BACKSLASH
   constraint_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_2_1;
yy yyv_T;
yy yy_5_1;
yy_2_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($5.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_2_1;
yyv_T = yy_5_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_transrel:
   yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_2;
yy yyv_Rel;
yy yy_3_1;
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yyv_Rel = yy_3_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Rel;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_trans:
   yykw_in
   transitionsoperator
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yyv_CMDS;
yy yy_2_1;
yy yy_2_2;
yy_2_1 = (yy)($2.attr[1]);
yy_2_2 = (yy)($2.attr[2]);
yyv_CMDS = yy_2_1;
yy_0_1 = yyv_CMDS;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
trans_sys_trans:
   yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_u_BLANK_l_BLANK_e_BLANK_s_BLANK
   transitionsoperator
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yyv_CMDS;
yy yy_2_1;
yy yy_2_2;
yy_2_1 = (yy)($2.attr[1]);
yy_2_2 = (yy)($2.attr[2]);
yyv_CMDS = yy_2_1;
yy_0_1 = yyv_CMDS;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator:
   transitionsoperator
   yykw_where
   transitions_named_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_TRANSOP;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy yyv_NAMEDLIST;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_TRANSOP = yy_1_1;
yyv_EXTRA = yy_1_2;
yyv_NAMEDLIST = yy_3_1;
yy_0_1_1 = yyv_TRANSOP;
yy_0_1_2 = yyv_NAMEDLIST;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
transitionsoperator:
   transitionsoperator_equal

{
yy yyb;
yy yy_0_1;
yy yy_0_2;
yy yyv_TRANS;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyv_TRANS = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1 = yyv_TRANS;
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator:
   transitionsoperator_greater

{
yy yyb;
yy yy_0_1;
yy yy_0_2;
yy yyv_TRANS;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyv_TRANS = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1 = yyv_TRANS;
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator:
   transitionsoperator_bracketed

{
yy yyb;
yy yy_0_1;
yy yy_0_2;
yy yyv_TRANS;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyv_TRANS = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1 = yyv_TRANS;
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator:
   guarded_cmd

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_H;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitions_named_list:
   transition_named
   yytk_COMMA
   transitions_named_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
transitions_named_list:
   transition_named

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
transition_named:
   yytk_LBRACKET
   id
   yytk_RBRACKET
   yytk_EQUAL
   transitionsoperator_bracketed

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_2_1;
yy yyv_TRANS;
yy yy_5_1;
yy yy_5_2;
yy_2_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($5.attr[1]);
yy_5_2 = (yy)($5.attr[2]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_2_1;
yyv_TRANS = yy_5_1;
yy_0_1_1 = yyv_N;
yy_0_1_2 = yyv_TRANS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_greater:
   transitionsoperator_greater
   yytk_LBRACKET_GREATER_RBRACKET
   transitionsoperator_greater

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_2;
yy yyv_Pos;
yy yy_1;
yy yyv_LEFT;
yy yy_2_1;
yy yyv_EXTRALEFT;
yy yy_2_2;
yy yyv_RIGHT;
yy yy_4_1;
yy yyv_EXTRARIGHT;
yy yy_4_2;
yy yy_5_1;
yy yy_5_2;
yy yyv_EXTRA;
yy yy_5_3;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_2_2 = (yy)($1.attr[2]);
yy_4_1 = (yy)($3.attr[1]);
yy_4_2 = (yy)($3.attr[2]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Pos = yy_1;
yyv_LEFT = yy_2_1;
yyv_EXTRALEFT = yy_2_2;
yyv_RIGHT = yy_4_1;
yyv_EXTRARIGHT = yy_4_2;
yy_5_1 = yyv_EXTRALEFT;
yy_5_2 = yyv_EXTRARIGHT;
Concat_Extra_Guards(yy_5_1, yy_5_2, &yy_5_3);
yyv_EXTRA = yy_5_3;
yy_0_1_1 = yyv_LEFT;
yy_0_1_2 = yyv_RIGHT;
yy_0_1_3 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
transitionsoperator_greater:
   transitionsoperator_bracketed

{
yy yyb;
yy yy_0_1;
yy yy_0_2;
yy yyv_TRANS;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyv_TRANS = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1 = yyv_TRANS;
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_greater:
   guarded_cmd

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_CM;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_CM = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1_1 = yyv_CM;
yy_0_1_2 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_greater:
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_2;
yy yyv_I;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_I = yy_1_1;
yy_0_1_1 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_2 = yyb + 2;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_equal:
   transitionsoperator_equal
   yytk_LBRACKET_EQUAL_RBRACKET
   transitionsoperator_equal

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_2;
yy yyv_Pos;
yy yy_1;
yy yyv_LEFT;
yy yy_2_1;
yy yyv_EXTRALEFT;
yy yy_2_2;
yy yyv_RIGHT;
yy yy_4_1;
yy yyv_EXTRARIGHT;
yy yy_4_2;
yy yy_5_1;
yy yy_5_2;
yy yyv_EXTRA;
yy yy_5_3;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_2_2 = (yy)($1.attr[2]);
yy_4_1 = (yy)($3.attr[1]);
yy_4_2 = (yy)($3.attr[2]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Pos = yy_1;
yyv_LEFT = yy_2_1;
yyv_EXTRALEFT = yy_2_2;
yyv_RIGHT = yy_4_1;
yyv_EXTRARIGHT = yy_4_2;
yy_5_1 = yyv_EXTRALEFT;
yy_5_2 = yyv_EXTRARIGHT;
Concat_Extra_Guards(yy_5_1, yy_5_2, &yy_5_3);
yyv_EXTRA = yy_5_3;
yy_0_1_1 = yyv_LEFT;
yy_0_1_2 = yyv_RIGHT;
yy_0_1_3 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
transitionsoperator_equal:
   transitionsoperator_bracketed

{
yy yyb;
yy yy_0_1;
yy yy_0_2;
yy yyv_TRANS;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyv_TRANS = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1 = yyv_TRANS;
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_equal:
   guarded_cmd

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_H;
yy yy_1_1;
yy yyv_EXTRA;
yy yy_1_2;
yy_1_1 = (yy)($1.attr[1]);
yy_1_2 = (yy)($1.attr[2]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_EXTRA = yy_1_2;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_equal:
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_2;
yy yyv_I;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_I = yy_1_1;
yy_0_1_1 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_2 = yyb + 2;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
transitionsoperator_bracketed:
   yytk_LPAREN
   transitionsoperator
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_OP;
yy yy_2_1;
yy yyv_EXTRA;
yy yy_2_2;
yy_2_1 = (yy)($2.attr[1]);
yy_2_2 = (yy)($2.attr[2]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_OP = yy_2_1;
yyv_EXTRA = yy_2_2;
yy_0_1_1 = yyv_OP;
yy_0_1_2 = yyv_EXTRA;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyv_EXTRA;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
guarded_cmd:
   transition_name
   yykw_else
   yytk_EQUAL_EQUAL_GREATER
   sal_update_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_Ident;
yy yy_1_1;
yy yyv_Cmds;
yy yy_4_1;
yy_1_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Ident = yy_1_1;
yyv_Cmds = yy_4_1;
yy_0_1_1 = yyv_Ident;
yy_0_1_2 = yyv_Cmds;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyb + 3;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
guarded_cmd:
   yykw_else
   yytk_EQUAL_EQUAL_GREATER
   sal_update_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_Cmds;
yy yy_3_1;
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Cmds = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 2;
yy_0_1_2 = yyv_Cmds;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyb + 4;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
guarded_cmd:
   transition_name
   yykw_else
   yytk_EQUAL_EQUAL_GREATER

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yy yyv_Ident;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Ident = yy_1_1;
yy_0_1_1 = yyv_Ident;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyb + 4;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
guarded_cmd:
   yykw_else
   yytk_EQUAL_EQUAL_GREATER

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_2;
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 2;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_2 = yyb + 5;
yy_0_2[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
}
;
guarded_cmd:
   transition_name
   value_expr
   yytk_EQUAL_EQUAL_GREATER
   sal_update_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_2;
yy yy_0_2_1;
yy yy_0_2_2;
yy yyv_Pos;
yy yy_1;
yy yyv_Ident;
yy yy_2_1;
yy yyv_Guard;
yy yy_3_1;
yy yyv_Cmds;
yy yy_5_1;
yy_1 = (yy)($3.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_Pos = yy_1;
yyv_Ident = yy_2_1;
yyv_Guard = yy_3_1;
yyv_Cmds = yy_5_1;
yy_0_1_1 = yyv_Ident;
yy_0_1_2 = yyv_Guard;
yy_0_1_3 = yyv_Cmds;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_2_1 = yyv_Guard;
yy_0_2_2 = yyv_Pos;
yy_0_2 = yyb + 4;
yy_0_2[0] = 1;
yy_0_2[1] = ((long)yy_0_2_1);
yy_0_2[2] = ((long)yy_0_2_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $3.attr[0];
}
;
guarded_cmd:
   value_expr
   yytk_EQUAL_EQUAL_GREATER
   sal_update_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_2;
yy yy_0_2_1;
yy yy_0_2_2;
yy yyv_Pos;
yy yy_1;
yy yyv_Guard;
yy yy_2_1;
yy yyv_Cmds;
yy yy_4_1;
yy_1 = (yy)($2.attr[0]);
yy_2_1 = (yy)($1.attr[1]);
yy_4_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_Pos = yy_1;
yyv_Guard = yy_2_1;
yyv_Cmds = yy_4_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 2;
yy_0_1_2 = yyv_Guard;
yy_0_1_3 = yyv_Cmds;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_2_1 = yyv_Guard;
yy_0_2_2 = yyv_Pos;
yy_0_2 = yyb + 5;
yy_0_2[0] = 1;
yy_0_2[1] = ((long)yy_0_2_1);
yy_0_2[2] = ((long)yy_0_2_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $2.attr[0];
}
;
guarded_cmd:
   yytk_LPAREN_LBRACKET_EQUAL_RBRACKET
   typing_list
   yytk_COLON_MINUS
   guarded_cmd
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_2;
yy yy_0_2_1;
yy yy_0_2_1_1;
yy yy_0_2_1_2;
yy yy_0_2_1_3;
yy yy_0_2_1_4;
yy yy_0_2_1_4_1;
yy yy_0_2_1_4_2;
yy yy_0_2_2;
yy yyv_TS;
yy yy_2_1;
yy yyv_Pos;
yy yy_4;
yy yyv_Cmd;
yy yy_5_1;
yy yy_5_2;
yy yyv_Val;
yy yy_5_2_1;
yy yyv_P;
yy yy_5_2_2;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yy_5_1 = (yy)($4.attr[1]);
yy_5_2 = (yy)($4.attr[2]);
yyb = yyh;
yyh += 16; if (yyh > yyhx) yyExtend();
yyv_TS = yy_2_1;
yyv_Pos = yy_4;
yyv_Cmd = yy_5_1;
if (yy_5_2[0] != 1) goto yyfl_106_7;
yy_5_2_1 = ((yy)yy_5_2[1]);
yy_5_2_2 = ((yy)yy_5_2[2]);
yyv_Val = yy_5_2_1;
yyv_P = yy_5_2_2;
yy_0_1_1 = yyv_TS;
yy_0_1_2 = yyv_Pos;
yy_0_1_3 = yyv_Cmd;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_2_1_1 = yyv_P;
yy_0_2_1_2 = yyb + 12;
yy_0_2_1_2[0] = 2;
yy_0_2_1_3 = yyv_TS;
yy_0_2_1_4_1 = yyv_P;
yy_0_2_1_4_2 = yyv_Val;
yy_0_2_1_4 = yyb + 13;
yy_0_2_1_4[0] = 1;
yy_0_2_1_4[1] = ((long)yy_0_2_1_4_1);
yy_0_2_1_4[2] = ((long)yy_0_2_1_4_2);
yy_0_2_1 = yyb + 7;
yy_0_2_1[0] = 19;
yy_0_2_1[1] = ((long)yy_0_2_1_1);
yy_0_2_1[2] = ((long)yy_0_2_1_2);
yy_0_2_1[3] = ((long)yy_0_2_1_3);
yy_0_2_1[4] = ((long)yy_0_2_1_4);
yy_0_2_2 = yyv_P;
yy_0_2 = yyb + 4;
yy_0_2[0] = 1;
yy_0_2[1] = ((long)yy_0_2_1);
yy_0_2[2] = ((long)yy_0_2_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[2] = ((long)yy_0_2);
$$.attr[0] = $1.attr[0];
goto yyfl_106_7_A;
yyfl_106_7 : ;
yyErr(3,1780);
yyfl_106_7_A : ;
}
;
transition_name:
   yytk_LBRACKET
   id
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sal_update_list:
   sal_update_expr
   yytk_COMMA
   sal_update_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Cmd;
yy yy_1_1;
yy yyv_Cmds;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Cmd = yy_1_1;
yyv_Cmds = yy_3_1;
yy_0_1_1 = yyv_Cmd;
yy_0_1_2 = yyv_Cmds;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
sal_update_list:
   sal_update_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Cmd;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Cmd = yy_1_1;
yy_0_1_1 = yyv_Cmd;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
sal_update_expr:
   name
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Name;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_ValueExpr;
yy yy_4_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Name = yy_1_1;
yyv_P = yy_2;
yyv_ValueExpr = yy_4_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Name;
yy_0_1_3 = yyv_ValueExpr;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
sal_update_expr:
   name
   array_accesses
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Name;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_IndexExpr;
yy yy_3_1;
yy yyv_ValueExpr;
yy yy_5_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Name = yy_1_1;
yyv_P = yy_2;
yyv_IndexExpr = yy_3_1;
yyv_ValueExpr = yy_5_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Name;
yy_0_1_3 = yyv_IndexExpr;
yy_0_1_4 = yyv_ValueExpr;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $3.attr[0];
}
;
sal_update_expr:
   name
   genvar_accesses
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Name;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_IndexExpr;
yy yy_3_1;
yy yyv_ValueExpr;
yy yy_5_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Name = yy_1_1;
yyv_P = yy_2;
yyv_IndexExpr = yy_3_1;
yyv_ValueExpr = yy_5_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Name;
yy_0_1_3 = yyv_IndexExpr;
yy_0_1_4 = yyv_ValueExpr;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $3.attr[0];
}
;
sal_update_expr:
   name
   yytk_LPAREN
   value_expr
   yytk_RPAREN
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Name;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_I;
yy yy_4_1;
yy yyv_ValueExpr;
yy yy_7_1;
yy yy_8_1;
yy yyv_Name2;
yy yy_8_2;
yy yy_9_1;
yy yy_9_2;
yy yy_9_3;
yy yyv_ValueExprRight;
yy yy_9_4;
yy yy_10_1;
yy yy_10_2;
yy yyv_ValueExprLeft;
yy yy_10_3;
yy yy_11_1;
yy yy_11_2;
yy yy_11_3;
yy yyv_ResValueExpr;
yy yy_11_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_7_1 = (yy)($6.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Name = yy_1_1;
yyv_P = yy_2;
yyv_I = yy_4_1;
yyv_ValueExpr = yy_7_1;
yy_8_1 = yyv_Name;
Convert_name(yy_8_1, &yy_8_2);
yyv_Name2 = yy_8_2;
yy_9_1 = yyv_P;
yy_9_2 = yyv_I;
yy_9_3 = yyv_ValueExpr;
map_expr_from_val_right(yy_9_1, yy_9_2, yy_9_3, &yy_9_4);
yyv_ValueExprRight = yy_9_4;
yy_10_1 = yyv_P;
yy_10_2 = yyv_Name2;
map_expr_from_val_left(yy_10_1, yy_10_2, &yy_10_3);
yyv_ValueExprLeft = yy_10_3;
yy_11_1 = yyv_P;
yy_11_2 = yyv_ValueExprLeft;
yy_11_3 = yyv_ValueExprRight;
map_expr_from_val_union(yy_11_1, yy_11_2, yy_11_3, &yy_11_4);
yyv_ResValueExpr = yy_11_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Name;
yy_0_1_3 = yyv_ResValueExpr;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
sal_update_expr:
   yykw_all
   typing
   yytk_COLON_MINUS
   name
   yytk_LBRACKET
   name
   yytk_RBRACKET
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yy_0_1_3_2;
yy yy_0_1_3_3;
yy yyv_P1;
yy yy_1;
yy yyv_T;
yy yy_3_1;
yy yyv_NA;
yy yy_5_1;
yy yy_7_1;
yy yyv_P4;
yy yy_7_1_1;
yy yyv_Id2;
yy yy_7_1_2;
yy yyv_P2;
yy yy_10;
yy yyv_V;
yy yy_11_1;
yy_1 = (yy)($1.attr[0]);
yy_3_1 = (yy)($2.attr[1]);
yy_5_1 = (yy)($4.attr[1]);
yy_7_1 = (yy)($6.attr[1]);
yy_10 = (yy)($8.attr[0]);
yy_11_1 = (yy)($9.attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_P1 = yy_1;
yyv_T = yy_3_1;
yyv_NA = yy_5_1;
if (yy_7_1[0] != 1) goto yyfl_109_5;
yy_7_1_1 = ((yy)yy_7_1[1]);
yy_7_1_2 = ((yy)yy_7_1[2]);
yyv_P4 = yy_7_1_1;
yyv_Id2 = yy_7_1_2;
yyv_P2 = yy_10;
yyv_V = yy_11_1;
yy_0_1_1 = yyv_P1;
yy_0_1_2 = yyv_NA;
yy_0_1_3_1 = yyv_P2;
yy_0_1_3_2 = yyv_T;
yy_0_1_3_3 = yyv_V;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 61;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1_3[2] = ((long)yy_0_1_3_2);
yy_0_1_3[3] = ((long)yy_0_1_3_3);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
goto yyfl_109_5_A;
yyfl_109_5 : ;
yyErr(3,1840);
yyfl_109_5_A : ;
}
;
property_decl:
   yytk_l_BLANK_t_BLANK_l_BLANK_UNDERSCORE_a_BLANK_s_BLANK_s_BLANK_e_BLANK_r_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK
   prop_def_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prop_def_list:
   prop_def
   yytk_COMMA
   prop_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
prop_def_list:
   prop_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prop_def:
   yytk_LBRACKET
   id
   yytk_RBRACKET
   id
   yytk_BAR_MINUS
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Ident;
yy yy_2_1;
yy yyv_TS;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy yyv_Prop;
yy yy_7_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yy_7_1 = (yy)($6.attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Ident = yy_2_1;
yyv_TS = yy_4_1;
yyv_P = yy_6;
yyv_Prop = yy_7_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Ident;
yy_0_1_3 = yyv_TS;
yy_0_1_4 = yyv_Prop;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   basic_class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   extending_class_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   hiding_class_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   renaming_class_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   with_class_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
class_expr:
   scheme_instantiation

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
basic_class_expr:
   yykw_class
   opt_decl_string
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
extending_class_expr:
   yykw_extend
   class_expr
   yykw_with
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_C1;
yy yy_2_1;
yy yyv_C2;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_C1 = yy_2_1;
yyv_C2 = yy_4_1;
yy_0_1_1 = yyv_C1;
yy_0_1_2 = yyv_C2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
hiding_class_expr:
   yykw_hide
   defined_item_list
   yykw_in
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_2_1;
yy yyv_C;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_2_1;
yyv_C = yy_4_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
renaming_class_expr:
   yykw_use
   rename_pair_list
   yykw_in
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_R;
yy yy_2_1;
yy yyv_C;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_R = yy_2_1;
yyv_C = yy_4_1;
yy_0_1_1 = yyv_R;
yy_0_1_2 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
with_class_expr:
   yykw_with
   object_expr_list
   yykw_in
   class_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_OS;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy yyv_C;
yy yy_5_1;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yy_5_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_OS = yy_2_1;
yyv_P = yy_3;
yyv_C = yy_5_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_OS;
yy_0_1_3 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
scheme_instantiation:
   name
   opt_actual_scheme_parameter

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_PARMS;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_PARMS = yy_2_1;
yy_0_1_1 = yyv_N;
yy_0_1_2 = yyv_PARMS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_actual_scheme_parameter:
   actual_scheme_parameter

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_actual_scheme_parameter:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
actual_scheme_parameter:
   yytk_LPAREN
   object_expr_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
rename_pair_list:
   rename_pair
   yytk_COMMA
   rename_pair_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
rename_pair_list:
   rename_pair

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
rename_pair:
   defined_item
   yykw_for
   defined_item

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_It1;
yy yy_1_1;
yy yyv_It2;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_It1 = yy_1_1;
yyv_It2 = yy_3_1;
yy_0_1_1 = yyv_It1;
yy_0_1_2 = yyv_It2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
defined_item_list:
   defined_item
   yytk_COMMA
   defined_item_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
defined_item_list:
   defined_item

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
defined_item:
   id_or_op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
defined_item:
   disambiguated_item

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
disambiguated_item:
   id_or_op
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
object_expr_list:
   object_expr
   yytk_COMMA
   object_expr_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
object_expr_list:
   object_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_expr:
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_N;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yy_0_1_1 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_expr:
   element_object_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_expr:
   array_object_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
object_expr:
   fitting_object_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
element_object_expr:
   object_expr
   actual_array_parameter

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_O;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_A = yy_2_1;
yy_0_1_1 = yyv_O;
yy_0_1_2 = yyv_A;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
actual_array_parameter:
   yytk_LBRACKET
   value_expr_list
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yyv_A;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_A = yy_2_1;
yy_0_1 = yyv_A;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
array_object_expr:
   yytk_LBRACKET_BAR
   typing_list
   yytk_COLON_MINUS
   object_expr
   yytk_BAR_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_TS;
yy yy_2_1;
yy yyv_O;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_TS = yy_2_1;
yyv_O = yy_4_1;
yy_0_1_1 = yyv_TS;
yy_0_1_2 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
fitting_object_expr:
   object_expr
   yytk_LBRACE
   rename_pair_list
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_O;
yy yy_1_1;
yy yyv_F;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_F = yy_3_1;
yy_0_1_1 = yyv_O;
yy_0_1_2 = yyv_F;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
type_expr:
   type_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr3:
   type_expr_pr2

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr3:
   map_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr3:
   function_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr3:
   array_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr2:
   type_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr2:
   product_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr1:
   type_expr_pr0

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr1:
   set_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr1:
   list_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr0:
   type_literal

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr0:
   name

{
yy yyb;
yy yy_0_1;
yy yyv_Y;
yy yy_1_1;
yy yy_2_1_2_1;
yy yy_2_1_2_2;
yy yyv_P;
yy yy_2_1_2_2_1;
yy yy_2_1_2_2_2;
yy yyv_Id;
yy yy_2_1_2_2_2_1;
yy yyv_Time_id;
yy yy_2_1_3;
yy yy_2_1_4_1;
yy yy_2_1_4_2;
yy yy_2_1_5_1;
yy yyv_X;
yy yy_2_1_5_2;
yy yy_2_2_1_1;
yy yy_2_2_1_1_1;
yy yy_2_2_1_2;
yy_1_1 = (yy)($1.attr[1]);
yyv_Y = yy_1_1;
{
yy yysb = yyb;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
if (! IsTimed()) goto yyfl_143_2_2_1;
yy_2_1_2_1 = yyv_Y;
yy_2_1_2_2 = yy_2_1_2_1;
if (yy_2_1_2_2[0] != 1) goto yyfl_143_2_2_1;
yy_2_1_2_2_1 = ((yy)yy_2_1_2_2[1]);
yy_2_1_2_2_2 = ((yy)yy_2_1_2_2[2]);
yyv_P = yy_2_1_2_2_1;
if (yy_2_1_2_2_2[0] != 1) goto yyfl_143_2_2_1;
yy_2_1_2_2_2_1 = ((yy)yy_2_1_2_2_2[1]);
yyv_Id = yy_2_1_2_2_2_1;
yy_2_1_3 = yyglov_Time_id;
if (yy_2_1_3 == (yy) yyu) yyErr(1,2175);
yyv_Time_id = yy_2_1_3;
yy_2_1_4_1 = yyv_Id;
yy_2_1_4_2 = yyv_Time_id;
if (! yyeq_IDENT(yy_2_1_4_1, yy_2_1_4_2)) goto yyfl_143_2_2_1;
yy_2_1_5_1 = yyb + 0;
yy_2_1_5_1[0] = 8;
yy_2_1_5_2 = yy_2_1_5_1;
yyv_X = yy_2_1_5_2;
goto yysl_143_2_2;
yyfl_143_2_2_1 : ;
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yy_2_2_1_1_1 = yyv_Y;
yy_2_2_1_1 = yyb + 0;
yy_2_2_1_1[0] = 10;
yy_2_2_1_1[1] = ((long)yy_2_2_1_1_1);
yy_2_2_1_2 = yy_2_2_1_1;
yyv_X = yy_2_2_1_2;
goto yysl_143_2_2;
yysl_143_2_2 : ;
yyb = yysb;
}
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr0:
   subtype_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr0:
   bracketed_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Unit

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Bool

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Int

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Nat

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Real

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Text

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_literal:
   yykw_Char

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
product_type_expr:
   type_expr_pr1_product2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_expr_pr1_product2:
   type_expr_pr1
   yytk_GREATER_LESS
   type_expr_pr1_product

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
type_expr_pr1_product:
   type_expr_pr1
   yytk_GREATER_LESS
   type_expr_pr1_product

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
type_expr_pr1_product:
   type_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_type_expr:
   finite_set_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_type_expr:
   infinite_set_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
finite_set_type_expr:
   type_expr_pr0
   yytk_MINUS_s_BLANK_e_BLANK_t_BLANK

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
infinite_set_type_expr:
   type_expr_pr0
   yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_s_BLANK_e_BLANK_t_BLANK

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
list_type_expr:
   finite_list_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_type_expr:
   infinite_list_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
finite_list_type_expr:
   type_expr_pr0
   yytk_MINUS_l_BLANK_i_BLANK_s_BLANK_t_BLANK

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
infinite_list_type_expr:
   type_expr_pr0
   yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_l_BLANK_i_BLANK_s_BLANK_t_BLANK

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
map_type_expr:
   finite_map_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
map_type_expr:
   infinite_map_type_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
finite_map_type_expr:
   type_expr_pr2
   yytk_MINUS_m_BLANK_MINUS_GREATER
   type_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_R;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
infinite_map_type_expr:
   type_expr_pr2
   yytk_MINUS_TILDE_m_BLANK_MINUS_GREATER
   type_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_R;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
function_type_expr:
   type_expr_pr2
   function_arrow
   result_desc

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_X;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_A = yy_2_1;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_A;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
function_arrow:
   yytk_MINUS_TILDE_MINUS_GREATER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
function_arrow:
   yytk_MINUS_GREATER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
result_desc:
   opt_access_desc_string
   type_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_AS;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_AS = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_AS;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
subtype_expr:
   yytk_LBRACE_BAR
   single_typing
   restriction
   yytk_BAR_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
array_type_expr:
   yykw_array
   type_expr
   yykw_of
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T1;
yy yy_2_1;
yy yyv_T2;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T1 = yy_2_1;
yyv_T2 = yy_4_1;
yy_0_1_1 = yyv_T1;
yy_0_1_2 = yyv_T2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
bracketed_type_expr:
   yytk_LPAREN
   type_expr
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_T;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yy_0_1_1 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 21;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_access_desc_string:
   access_desc_string

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_access_desc_string:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
access_desc_string:
   access_desc
   access_desc_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_desc_string:
   access_desc

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_desc:
   access_mode
   access_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_M;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_M = yy_1_1;
yyv_A = yy_2_1;
yy_0_1_1 = yyv_M;
yy_0_1_2 = yyv_A;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_mode:
   yykw_read

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_mode:
   yykw_write

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_mode:
   yykw_in

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access_mode:
   yykw_out

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_access_list:
   access_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_access_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
access_list:
   access
   yytk_COMMA
   access_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
access_list:
   access

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access:
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access:
   enumerated_access

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access:
   completed_access

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
access:
   comprehended_access

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
enumerated_access:
   yytk_LBRACE
   opt_access_list
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_AS;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_AS = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_AS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
completed_access:
   opt_qualification
   yykw_any

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_1_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Q;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
comprehended_access:
   yytk_LBRACE
   access
   yytk_BAR
   set_limitation
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_A;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_A = yy_2_1;
yyv_L = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_A;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_list2:
   value_expr
   yytk_COMMA
   value_expr_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_value_expr_list:
   value_expr_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_value_expr_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
value_expr_list:
   value_expr
   yytk_COMMA
   value_expr_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
value_expr_list:
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr:
   value_expr_pr14

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr14:
   value_expr_pr13

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr14:
   function_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr14:
   quantified_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr14:
   prefix_expr_pr14

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr13:
   value_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr13:
   equivalence_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr13:
   post_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr12:
   value_expr_pr11

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr12:
   infix_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr11:
   value_expr_pr10

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr11:
   infix_expr_pr11

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr10:
   value_expr_pr9

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr10:
   assignment_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr10:
   output_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr9:
   value_expr_pr8

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr9:
   infix_expr_pr9

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr8:
   value_expr_pr7

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr8:
   infix_expr_pr8

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr7:
   value_expr_pr6

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr7:
   infix_expr_pr7

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr6:
   value_expr_pr5

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr6:
   infix_expr_pr6

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr5:
   value_expr_pr4

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr5:
   infix_expr_pr5

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr4:
   value_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr4:
   infix_expr_pr4

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr3:
   value_expr_pr2

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr3:
   infix_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr2:
   value_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr2:
   disambiguation_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr1:
   value_expr_pr0

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr1:
   prefix_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr0:
   value_expr_pr255

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr0:
   application_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr0:
   array_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   value_literal

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   pre_name

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   basic_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   product_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   set_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   list_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   map_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   bracketed_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   comprehended_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   initialise_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   input_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   structured_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   array_access_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pr255:
   genvar_access_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   unit_lit

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   bool_true

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   bool_false

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   int_lit

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   real_lit

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   text_lit

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_literal:
   char_lit

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
unit_lit:
   yytk_LPAREN
   yytk_RPAREN

{
yy yyb;
$$.attr[0] = $1.attr[0];
}
;
bool_true:
   yykw_true

{
yy yyb;
$$.attr[0] = $1.attr[0];
}
;
bool_false:
   yykw_false

{
yy yyb;
$$.attr[0] = $1.attr[0];
}
;
pre_name:
   name
   yytk_BACKQUOTE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
basic_expr:
   yykw_chaos

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
basic_expr:
   yykw_skip

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
basic_expr:
   yykw_stop

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
basic_expr:
   yykw_swap

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
product_expr:
   yytk_LPAREN
   value_expr_list2
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_expr:
   ranged_set_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_expr:
   enumerated_set_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_expr:
   comprehended_set_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
ranged_set_expr:
   yytk_LBRACE
   value_expr
   yytk_DOT_DOT
   value_expr
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_2_1;
yy yyv_R;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_R = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
enumerated_set_expr:
   yytk_LBRACE
   opt_value_expr_list
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
comprehended_set_expr:
   yytk_LBRACE
   value_expr
   yytk_BAR
   set_limitation
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_L = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
set_limitation:
   typing_list
   opt_restriction

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_1_1;
yy yyv_R;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_R = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_restriction:
   restriction

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_restriction:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
restriction:
   yytk_COLON_MINUS
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_expr:
   ranged_list_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_expr:
   enumerated_list_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_expr:
   comprehended_list_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
ranged_list_expr:
   yytk_LESS_DOT
   value_expr
   yytk_DOT_DOT
   value_expr
   yytk_DOT_GREATER

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_2_1;
yy yyv_R;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_R = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
enumerated_list_expr:
   yytk_LESS_DOT
   opt_value_expr_list
   yytk_DOT_GREATER

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
comprehended_list_expr:
   yytk_LESS_DOT
   value_expr
   yytk_BAR
   list_limitation
   yytk_DOT_GREATER

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_L = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_limitation:
   binding
   yykw_in
   value_expr
   opt_restriction

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_B;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_R;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_B = yy_1_1;
yyv_E = yy_3_1;
yyv_R = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1_3 = yyv_E;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
map_expr:
   enumerated_map_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
map_expr:
   comprehended_map_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
enumerated_map_expr:
   yytk_LBRACKET
   opt_value_expr_pair_list
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_value_expr_pair_list:
   value_expr_pair_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_value_expr_pair_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
value_expr_pair_list:
   value_expr_pair
   yytk_COMMA
   value_expr_pair_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
value_expr_pair_list:
   value_expr_pair

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_expr_pair:
   value_expr
   yytk_PLUS_GREATER
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_R;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_R = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
comprehended_map_expr:
   yytk_LBRACKET
   value_expr_pair
   yytk_BAR
   set_limitation
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_L = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
function_expr:
   yytk_MINUS_BACKSLASH
   lambda_parameter
   yytk_COLON_MINUS
   value_expr_pr14

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
lambda_parameter:
   lambda_typing

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
lambda_parameter:
   single_typing

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
lambda_typing:
   yytk_LPAREN
   opt_typing_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
array_expr:
   yytk_LBRACKET_BAR
   yytk_LBRACKET
   single_typing
   yytk_RBRACKET
   value_expr
   yytk_BAR_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_3_1;
yy yyv_V;
yy yy_5_1;
yy yyv_P;
yy yy_7;
yy_3_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($5.attr[1]);
yy_7 = (yy)($6.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_3_1;
yyv_V = yy_5_1;
yyv_P = yy_7;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_V;
yy_0_1 = yyb + 0;
yy_0_1[0] = 61;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
array_access_expr:
   name
   yytk_LBRACKET
   value_expr
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_PN;
yy yy_2;
yy yyv_I;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_PN = yy_2;
yyv_I = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_PN;
yy_0_1_2_2 = yyv_N;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1_3 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 59;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
array_access_expr:
   value_expr_pr0
   yytk_LBRACKET
   value_expr
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_I = yy_3_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 59;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
array_accesses:
   yytk_LBRACKET
   value_expr
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
array_accesses:
   yytk_LBRACKET
   value_expr
   yytk_RBRACKET
   array_accesses

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_2_1;
yy yyv_T;
yy yy_4_1;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_2_1;
yyv_T = yy_4_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
genvar_access_expr:
   name
   yytk_LBRACKET
   genvar_accesses2
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_PN;
yy yy_2;
yy yyv_I;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yy_4_1 = (yy)($3.attr[1]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_PN = yy_2;
yyv_I = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_PN;
yy_0_1_2_2 = yyv_N;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1_3 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 63;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
genvar_access_expr:
   value_expr_pr0
   yytk_LBRACKET
   genvar_accesses2
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_I = yy_3_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 63;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
genvar_accesses:
   yytk_LBRACKET
   genvar_accesses2
   yytk_RBRACKET

{
yy yyb;
yy yy_0_1;
yy yyv_V;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_V = yy_2_1;
yy_0_1 = yyv_V;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
genvar_accesses2:
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
genvar_accesses2:
   value_expr
   yytk_COMMA
   genvar_accesses2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
application_expr:
   value_expr_pr255
   actual_function_parameter_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_F;
yy yy_1_1;
yy yyv_A;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_F = yy_1_1;
yyv_A = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_F;
yy_0_1_3 = yyv_A;
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
actual_function_parameter_string:
   actual_function_parameter
   actual_function_parameter_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
actual_function_parameter_string:
   actual_function_parameter

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
actual_function_parameter:
   yytk_LPAREN
   opt_value_expr_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
quantified_expr:
   quantifier
   typing_list
   restriction

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Q;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yyv_L = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Q;
yy_0_1_3 = yyv_L;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
quantifier:
   yykw_all

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
quantifier:
   yykw_exists

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
quantifier:
   yytk_e_BLANK_x_BLANK_i_BLANK_s_BLANK_t_BLANK_s_BLANK_EXCLAM

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
equivalence_expr:
   value_expr_pr12
   yykw_is
   value_expr_pr12
   opt_pre_condition

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_R;
yy yy_3_1;
yy yyv_PR;
yy yy_4_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_R = yy_3_1;
yyv_PR = yy_4_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_R;
yy_0_1_4 = yyv_PR;
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_pre_condition:
   pre_condition

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_pre_condition:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
pre_condition:
   yykw_pre
   value_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_post_condition:
   post_condition

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_post_condition:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
post_expr:
   value_expr_pr12
   post_condition
   opt_pre_condition

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_E;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_PR;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_C = yy_2_1;
yyv_PR = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_PR;
yy_0_1 = yyb + 0;
yy_0_1[0] = 21;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
post_condition:
   opt_result_naming
   yykw_post
   value_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_R;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_R = yy_1_1;
yyv_E = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_R;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_result_naming:
   result_naming

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_result_naming:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
result_naming:
   yykw_as
   binding

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_B;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_B = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
disambiguation_expr:
   value_expr_pr1
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 22;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
bracketed_expr:
   yytk_LPAREN
   value_expr
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 23;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr12:
   stmt_infix_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr11:
   stmt_infix_expr_pr11

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr9:
   axiom_infix_expr_pr9

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr8:
   axiom_infix_expr_pr8

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr7:
   axiom_infix_expr_pr7

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr6:
   value_infix_expr_pr6

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr5:
   value_infix_expr_pr5

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr4:
   value_infix_expr_pr4

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_expr_pr3:
   value_infix_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
stmt_infix_expr_pr12:
   value_expr_pr11
   infix_combinator_pr12
   value_expr_pr12

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_C = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 26;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
stmt_infix_expr_pr11:
   value_expr_pr10
   infix_combinator_pr11
   value_expr_pr11

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_C = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 26;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_infix_expr_pr9:
   value_expr_pr8
   infix_connective_pr9
   value_expr_pr9
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_L;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy yyv_PRE;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_C = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yyv_PRE = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_R;
yy_0_1_5 = yyv_PRE;
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_infix_expr_pr8:
   value_expr_pr7
   infix_connective_pr8
   value_expr_pr8
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_L;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy yyv_PRE;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_C = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yyv_PRE = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_R;
yy_0_1_5 = yyv_PRE;
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_infix_expr_pr7:
   value_expr_pr6
   infix_connective_pr7
   value_expr_pr7
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_L;
yy yy_1_1;
yy yyv_C;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy yyv_PRE;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_C = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yyv_PRE = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_C;
yy_0_1_4 = yyv_R;
yy_0_1_5 = yyv_PRE;
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_infix_expr_pr6:
   value_expr_pr5
   infix_op_pr6
   value_expr_pr5

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_O = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_O;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_infix_expr_pr5:
   value_expr_pr5
   infix_op_pr5
   value_expr_pr4

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_O = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_O;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_infix_expr_pr5:
   value_expr_pr5
   infix_prefix_op
   value_expr_pr4

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_O = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_O;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_infix_expr_pr4:
   value_expr_pr4
   infix_op_pr4
   value_expr_pr3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_O = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_O;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_infix_expr_pr3:
   value_expr_pr2
   infix_op_pr3
   value_expr_pr2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_L;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy yyv_R;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_O = yy_2_1;
yyv_R = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_O;
yy_0_1_4 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_expr_pr1:
   axiom_prefix_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_expr_pr1:
   value_prefix_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_expr_pr14:
   universal_prefix_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
axiom_prefix_expr:
   prefix_connective
   value_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_C;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 28;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
universal_prefix_expr:
   yykw_always
   value_expr_pr14

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 27;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_prefix_expr:
   prefix_op
   value_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_O;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_O;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
value_prefix_expr:
   infix_prefix_op
   value_expr_pr1

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_O;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_O;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
comprehended_expr:
   infix_combinator
   yytk_LBRACE
   value_expr
   yytk_BAR
   set_limitation
   yytk_RBRACE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_C;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_L;
yy yy_5_1;
yy yyv_P;
yy yy_7;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5_1 = (yy)($5.attr[1]);
yy_7 = (yy)($6.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_E = yy_3_1;
yyv_L = yy_5_1;
yyv_P = yy_7;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_C;
yy_0_1_3 = yyv_E;
yy_0_1_4 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 30;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
initialise_expr:
   opt_qualification
   yykw_initialise

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_1_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Q;
yy_0_1 = yyb + 0;
yy_0_1[0] = 31;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
assignment_expr:
   name
   yytk_COLON_EQUAL
   value_expr_pr9

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_E = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 32;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
input_expr:
   name
   yytk_QUESTIONM

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 33;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
output_expr:
   name
   yytk_EXCLAM
   value_expr_pr9

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_E = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
structured_expr:
   local_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   let_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   if_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   case_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   while_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   until_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
structured_expr:
   for_expr

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
local_expr:
   yykw_local
   opt_decl_string
   yykw_in
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_DS;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_DS = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_DS;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 35;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_expr:
   yykw_let
   let_def_list
   yykw_in
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 36;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_def_list:
   let_def
   yytk_COMMA
   let_def_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
let_def_list:
   let_def

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_def:
   typing

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_def:
   explicit_let

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_def:
   implicit_let

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
explicit_let:
   let_binding
   yytk_EQUAL
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_B;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_B = yy_1_1;
yyv_E = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
implicit_let:
   single_typing
   restriction

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_R;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_R = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1_3 = yyv_R;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_binding:
   binding

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_B;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_B = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_binding:
   record_pattern

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_PATT;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_PATT = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_PATT;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
let_binding:
   list_pattern

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_PATT;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_PATT = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_PATT;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
if_expr:
   yykw_if
   value_expr
   yykw_then
   value_expr
   opt_elsif_branch_string
   opt_else_branch
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_4_1;
yy yy_0_1_4_2;
yy yy_0_1_5;
yy yy_0_1_6;
yy yyv_I;
yy yy_2_1;
yy yyv_T;
yy yy_4_1;
yy yyv_PTB;
yy yy_5;
yy yyv_EI;
yy yy_6_1;
yy yyv_PTE;
yy yy_7;
yy yyv_E;
yy yy_8_1;
yy yyv_P;
yy yy_10;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yy_6_1 = (yy)($5.attr[1]);
yy_7 = (yy)($5.attr[0]);
yy_8_1 = (yy)($6.attr[1]);
yy_10 = (yy)($7.attr[0]);
yyb = yyh;
yyh += 10; if (yyh > yyhx) yyExtend();
yyv_I = yy_2_1;
yyv_T = yy_4_1;
yyv_PTB = yy_5;
yyv_EI = yy_6_1;
yyv_PTE = yy_7;
yyv_E = yy_8_1;
yyv_P = yy_10;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_I;
yy_0_1_3 = yyv_T;
yy_0_1_4_1 = yyv_PTB;
yy_0_1_4_2 = yyv_PTE;
yy_0_1_4 = yyb + 7;
yy_0_1_4[0] = 1;
yy_0_1_4[1] = ((long)yy_0_1_4_1);
yy_0_1_4[2] = ((long)yy_0_1_4_2);
yy_0_1_5 = yyv_EI;
yy_0_1_6 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 37;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yy_0_1[6] = ((long)yy_0_1_6);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_elsif_branch_string:
   elsif_branch_string

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_elsif_branch_string:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
elsif_branch_string:
   elsif_branch
   elsif_branch_string

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_2_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
elsif_branch_string:
   elsif_branch

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
elsif_branch:
   yykw_elsif
   value_expr
   yykw_then
   value_expr
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_I;
yy yy_2_1;
yy yyv_T;
yy yy_4_1;
yy yyv_PB;
yy yy_5;
yy yyv_PE;
yy yy_7;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_5 = (yy)($4.attr[0]);
yy_7 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_I = yy_2_1;
yyv_T = yy_4_1;
yyv_PB = yy_5;
yyv_PE = yy_7;
yy_0_1_1 = yyv_PB;
yy_0_1_2 = yyv_I;
yy_0_1_3 = yyv_T;
yy_0_1_4 = yyv_PE;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_else_branch:
   else_branch

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_else_branch:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
else_branch:
   yykw_else
   value_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
case_expr:
   yykw_case
   value_expr
   yykw_of
   case_branch_list
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_E;
yy yy_2_1;
yy yyv_PE;
yy yy_3;
yy yyv_L;
yy yy_5_1;
yy yyv_P;
yy yy_7;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yy_5_1 = (yy)($4.attr[1]);
yy_7 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_PE = yy_3;
yyv_L = yy_5_1;
yyv_P = yy_7;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_PE;
yy_0_1_4 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 38;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
case_branch_list:
   case_branch
   yytk_COMMA
   case_branch_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
case_branch_list:
   case_branch

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
case_branch:
   pattern
   yytk_MINUS_GREATER
   value_expr
   dummy_term

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_X;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy yyv_PE;
yy yy_6;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yy_6 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_E = yy_3_1;
yyv_P = yy_4;
yyv_PE = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_X;
yy_0_1_3 = yyv_E;
yy_0_1_4 = yyv_PE;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
while_expr:
   yykw_while
   value_expr
   yykw_do
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_D = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
until_expr:
   yykw_do
   value_expr
   yykw_until
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_D;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 40;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
for_expr:
   yykw_for
   list_limitation
   yykw_do
   value_expr
   yykw_end

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_L;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy yyv_P;
yy yy_6;
yy_2_1 = (yy)($2.attr[1]);
yy_4_1 = (yy)($4.attr[1]);
yy_6 = (yy)($5.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_E = yy_4_1;
yyv_P = yy_6;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 41;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_binding_list:
   binding_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_binding_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
binding_list2:
   binding
   yytk_COMMA
   binding_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
binding_list:
   binding
   yytk_COMMA
   binding_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
binding_list:
   binding

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
binding:
   id_or_op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
binding:
   product_binding

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
product_binding:
   yytk_LPAREN
   binding_list2
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_typing_list:
   typing_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_typing_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
typing_list:
   typing
   yytk_COMMA
   typing_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
typing_list:
   typing

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
typing:
   single_typing

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
typing:
   multiple_typing

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
single_typing:
   binding
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_B;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_B = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
multiple_typing:
   binding_list2
   yytk_COLON
   type_expr

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_B;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_B = yy_1_1;
yyv_T = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_B;
yy_0_1_3 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
commented_typing:
   typing

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   value_literal

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   wildcard_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   product_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   record_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
pattern:
   list_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
wildcard_pattern:
   yytk_UNDERSCORE

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
product_pattern:
   yytk_LPAREN
   inner_pattern_list2
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
record_pattern:
   name
   yytk_LPAREN
   inner_pattern_list
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_N;
yy yy_1_1;
yy yyv_PS;
yy yy_3_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yyv_PS = yy_3_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1_3 = yyv_PS;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
list_pattern:
   enumerated_list_pattern

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
list_pattern:
   concatenated_list_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
enumerated_list_pattern:
   yytk_LESS_DOT
   opt_inner_pattern_list
   yytk_DOT_GREATER

{
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_L = yy_2_1;
yy_0_1 = yyv_L;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
concatenated_list_pattern:
   enumerated_list_pattern
   yytk_POWER
   inner_pattern

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy yyv_P;
yy yy_4;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_I = yy_3_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
opt_inner_pattern_list:
   inner_pattern_list

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_inner_pattern_list:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
inner_pattern_list2:
   inner_pattern
   yytk_COMMA
   inner_pattern_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
inner_pattern_list:
   inner_pattern
   yytk_COMMA
   inner_pattern_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
inner_pattern_list:
   inner_pattern

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   value_literal

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   id_or_op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   wildcard_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   product_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   record_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   list_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
inner_pattern:
   equality_pattern

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
equality_pattern:
   yytk_EQUAL
   name

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_N = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
name:
   qualified_id

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
name:
   qualified_op

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
qualified_id:
   qualification
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yyv_O;
yy yy_1_1;
yy yyv_Id;
yy yy_2_1;
yy yyv_P;
yy yy_3;
yy_1_1 = (yy)($1.attr[1]);
yy_2_1 = (yy)($2.attr[1]);
yy_3 = (yy)($2.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_Id = yy_2_1;
yyv_P = yy_3;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_O;
yy_0_1_3_1 = yyv_Id;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 1;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
qualified_id:
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_Id;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_P = yy_2;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_Id;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 1;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_qualification:
   qualification

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Q;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yy_0_1_1 = yyv_Q;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_qualification:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
qualification:
   object_expr
   yytk_DOT

{
yy yyb;
yy yy_0_1;
yy yyv_O;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_O = yy_1_1;
yy_0_1 = yyv_O;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
qualified_op:
   qualification
   yytk_LPAREN
   op
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_3_1;
yy yyv_O;
yy yy_1_1;
yy yyv_Op;
yy yy_3_1;
yy yyv_P;
yy yy_5;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yy_5 = (yy)($4.attr[0]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_O = yy_1_1;
yyv_Op = yy_3_1;
yyv_P = yy_5;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_O;
yy_0_1_3_1 = yyv_Op;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 2;
yy_0_1_3[1] = ((long)yy_0_1_3_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
qualified_op:
   yytk_LPAREN
   op
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_Op;
yy yy_2_1;
yy yyv_P;
yy yy_4;
yy_2_1 = (yy)($2.attr[1]);
yy_4 = (yy)($3.attr[0]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Op = yy_2_1;
yyv_P = yy_4;
yy_0_1_1 = yyv_P;
yy_0_1_2_1 = yyv_Op;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
id_or_op:
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_I;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_I = yy_1_1;
yy_0_1_1 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
id_or_op:
   op

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Op;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yy_0_1_1 = yyv_Op;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
id_list2:
   id
   yytk_COMMA
   id_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
id_list:
   id
   yytk_COMMA
   id_list

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
id_list:
   id

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
op:
   infix_op

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
op:
   prefix_op

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
op:
   infix_prefix_op

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op:
   infix_op_pr6

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op:
   infix_op_pr5

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op:
   infix_op_pr4

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op:
   infix_op_pr3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_TILDE_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_EQUAL_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_GREATER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_LESS

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_GREATER_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_LESS_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_GREATER_GREATER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_LESS_LESS

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_GREATER_GREATER_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_LESS_LESS_EQUAL

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yykw_isin

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr6:
   yytk_TILDE_i_BLANK_s_BLANK_i_BLANK_n_BLANK

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr5:
   yytk_BACKSLASH

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr5:
   yytk_POWER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr5:
   yykw_union

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr5:
   yytk_EXCLAM_EXCLAM

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr4:
   yytk_ASTERISK

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr4:
   yytk_SLASH

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr4:
   yytk_SHARP

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr4:
   yykw_inter

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 21;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_op_pr3:
   yytk_ASTERISK_ASTERISK

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 22;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_abs

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 23;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_int

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_real

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_card

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 26;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_len

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 27;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_inds

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 28;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_elems

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_hd

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 30;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_tl

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 31;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_dom

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 32;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_rng

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 33;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_op:
   yykw_wait

{
yy yyb;
yy yy_0_1;
yy yyv_P;
yy yy_2;
yy_2 = (yy)($1.attr[0]);
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yyv_P = yy_2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_prefix_op:
   yytk_PLUS

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 35;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_prefix_op:
   yytk_MINUS

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 36;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_connective_pr9:
   yytk_EQUAL_GREATER

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_connective_pr8:
   yytk_BACKSLASH_SLASH

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_connective_pr7:
   yytk_SLASH_BACKSLASH

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
prefix_connective:
   yytk_TILDE

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator:
   infix_combinator_pr12

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator:
   infix_combinator_pr11

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator_pr12:
   yytk_BAR_EQUAL_BAR

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator_pr12:
   yytk_BAR_POWER_BAR

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator_pr12:
   yytk_BAR_BAR

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator_pr12:
   yytk_PLUS_PLUS

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
infix_combinator_pr11:
   yytk_SEMICOLON

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_files:
   files

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
opt_files:

{
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
$$.attr[1] = ((long)yy_0_1);
yyGetPos(&$$.attr[0]);
}
;
files:
   file
   yytk_COMMA
   files

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyv_T;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
files:
   file

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_H;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_H = yy_1_1;
yy_0_1_1 = yyv_H;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
file:
   filename

{
yy yyb;
yy yy_0_1;
yy yyv_F;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_F = yy_1_1;
yy_0_1 = yyv_F;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
file:
   yytk_SLASH
   file1

{
yy yyb;
yy yy_0_1;
yy yyv_S;
yy yy_2_1;
yy yy_3_1;
yy yy_3_2;
yy yyv_F;
yy yy_3_3;
yy_2_1 = (yy)($2.attr[1]);
yyv_S = yy_2_1;
yy_3_1 = ((yy)"");
yy_3_2 = yyv_S;
strings_to_fileid(yy_3_1, yy_3_2, &yy_3_3);
yyv_F = yy_3_3;
yy_0_1 = yyv_F;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
file:
   id
   yytk_SLASH
   file1

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy yyv_S2;
yy yy_3_1;
yy yy_4_1;
yy yyv_S1;
yy yy_4_2;
yy yy_5_1;
yy yy_5_2;
yy yyv_F;
yy yy_5_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyv_Id = yy_1_1;
yyv_S2 = yy_3_1;
yy_4_1 = yyv_Id;
id_to_string(yy_4_1, &yy_4_2);
yyv_S1 = yy_4_2;
yy_5_1 = yyv_S1;
yy_5_2 = yyv_S2;
strings_to_fileid(yy_5_1, yy_5_2, &yy_5_3);
yyv_F = yy_5_3;
yy_0_1 = yyv_F;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
file:
   id

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy yy_2_1;
yy yyv_S;
yy yy_2_2;
yy yy_3_1;
yy yyv_F;
yy yy_3_2;
yy_1_1 = (yy)($1.attr[1]);
yyv_Id = yy_1_1;
yy_2_1 = yyv_Id;
id_to_string(yy_2_1, &yy_2_2);
yyv_S = yy_2_2;
yy_3_1 = yyv_S;
string_to_fileid(yy_3_1, &yy_3_2);
yyv_F = yy_3_2;
yy_0_1 = yyv_F;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
file1:
   id
   yytk_SLASH
   file1

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy yyv_S2;
yy yy_3_1;
yy yy_4_1;
yy yyv_S1;
yy yy_4_2;
yy yy_5_1;
yy yy_5_2;
yy yyv_S;
yy yy_5_3;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyv_Id = yy_1_1;
yyv_S2 = yy_3_1;
yy_4_1 = yyv_Id;
id_to_string(yy_4_1, &yy_4_2);
yyv_S1 = yy_4_2;
yy_5_1 = yyv_S1;
yy_5_2 = yyv_S2;
prefix_path(yy_5_1, yy_5_2, &yy_5_3);
yyv_S = yy_5_3;
yy_0_1 = yyv_S;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
file1:
   id

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy yy_2_1;
yy yyv_S;
yy yy_2_2;
yy_1_1 = (yy)($1.attr[1]);
yyv_Id = yy_1_1;
yy_2_1 = yyv_Id;
id_to_string(yy_2_1, &yy_2_2);
yyv_S = yy_2_2;
yy_0_1 = yyv_S;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
type_id_def:
   id

{
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy yyv_P;
yy yy_2;
yy yyv_Tid;
yy yy_3_1_2;
yy yy_3_1_3_1;
yy yy_3_1_3_2;
yy yy_3_1_4_1;
yy yy_3_1_5_1;
yy_1_1 = (yy)($1.attr[1]);
yy_2 = (yy)($1.attr[0]);
yyv_Id = yy_1_1;
yyv_P = yy_2;
{
yy yysb = yyb;
if (! IsTimed()) goto yyfl_340_1_3_1;
yy_3_1_2 = yyglov_Time_id;
if (yy_3_1_2 == (yy) yyu) yyErr(1,4280);
yyv_Tid = yy_3_1_2;
yy_3_1_3_1 = yyv_Id;
yy_3_1_3_2 = yyv_Tid;
if (! yyeq_IDENT(yy_3_1_3_1, yy_3_1_3_2)) goto yyfl_340_1_3_1;
yy_3_1_4_1 = yyv_P;
Puterror(yy_3_1_4_1);
yy_3_1_5_1 = ((yy)"The type Time is predefined");
Putmsg(yy_3_1_5_1);
Putnl();
goto yysl_340_1_3;
yyfl_340_1_3_1 : ;
goto yysl_340_1_3;
yysl_340_1_3 : ;
yyb = yysb;
}
yy_0_1 = yyv_Id;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
dummy_term:

{
yy yyb;
yyGetPos(&$$.attr[0]);
}
;
