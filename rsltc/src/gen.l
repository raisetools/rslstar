%{
#include "gen.h"
extern YYSTYPE yylval;
extern long yypos;
#define yysetpos() { yylval.attr[0] = yypos; yypos += yyleng; }
%}
%p 3000
%n 500
%e 1000
%a 2500
%k 2500
%o 3000
%s SPECIAL
%%
";" { yysetpos(); return yytk_SEMICOLON; }
"++" { yysetpos(); return yytk_PLUS_PLUS; }
"||" { yysetpos(); return yytk_BAR_BAR; }
"|^|" { yysetpos(); return yytk_BAR_POWER_BAR; }
"|=|" { yysetpos(); return yytk_BAR_EQUAL_BAR; }
"~" { yysetpos(); return yytk_TILDE; }
"\\/" { yysetpos(); return yytk_BACKSLASH_SLASH; }
"=>" { yysetpos(); return yytk_EQUAL_GREATER; }
"-" { yysetpos(); return yytk_MINUS; }
"+" { yysetpos(); return yytk_PLUS; }
"wait" { yysetpos(); return yykw_wait; }
"rng" { yysetpos(); return yykw_rng; }
"dom" { yysetpos(); return yykw_dom; }
"tl" { yysetpos(); return yykw_tl; }
"hd" { yysetpos(); return yykw_hd; }
"elems" { yysetpos(); return yykw_elems; }
"inds" { yysetpos(); return yykw_inds; }
"len" { yysetpos(); return yykw_len; }
"card" { yysetpos(); return yykw_card; }
"real" { yysetpos(); return yykw_real; }
"int" { yysetpos(); return yykw_int; }
"abs" { yysetpos(); return yykw_abs; }
"**" { yysetpos(); return yytk_ASTERISK_ASTERISK; }
"inter" { yysetpos(); return yykw_inter; }
"#" { yysetpos(); return yytk_SHARP; }
"/" { yysetpos(); return yytk_SLASH; }
"*" { yysetpos(); return yytk_ASTERISK; }
"!!" { yysetpos(); return yytk_EXCLAM_EXCLAM; }
"union" { yysetpos(); return yykw_union; }
"\\" { yysetpos(); return yytk_BACKSLASH; }
"~isin" { yysetpos(); return yytk_TILDE_i_BLANK_s_BLANK_i_BLANK_n_BLANK; }
"isin" { yysetpos(); return yykw_isin; }
"<<=" { yysetpos(); return yytk_LESS_LESS_EQUAL; }
">>=" { yysetpos(); return yytk_GREATER_GREATER_EQUAL; }
"<<" { yysetpos(); return yytk_LESS_LESS; }
">>" { yysetpos(); return yytk_GREATER_GREATER; }
"<=" { yysetpos(); return yytk_LESS_EQUAL; }
">=" { yysetpos(); return yytk_GREATER_EQUAL; }
"<" { yysetpos(); return yytk_LESS; }
">" { yysetpos(); return yytk_GREATER; }
"~=" { yysetpos(); return yytk_TILDE_EQUAL; }
"." { yysetpos(); return yytk_DOT; }
"^" { yysetpos(); return yytk_POWER; }
"until" { yysetpos(); return yykw_until; }
"do" { yysetpos(); return yykw_do; }
"while" { yysetpos(); return yykw_while; }
"case" { yysetpos(); return yykw_case; }
"elsif" { yysetpos(); return yykw_elsif; }
"then" { yysetpos(); return yykw_then; }
"if" { yysetpos(); return yykw_if; }
"let" { yysetpos(); return yykw_let; }
"!" { yysetpos(); return yytk_EXCLAM; }
"?" { yysetpos(); return yytk_QUESTIONM; }
"initialise" { yysetpos(); return yykw_initialise; }
"always" { yysetpos(); return yykw_always; }
"as" { yysetpos(); return yykw_as; }
"post" { yysetpos(); return yykw_post; }
"pre" { yysetpos(); return yykw_pre; }
"exists!" { yysetpos(); return yytk_e_BLANK_x_BLANK_i_BLANK_s_BLANK_t_BLANK_s_BLANK_EXCLAM; }
"exists" { yysetpos(); return yykw_exists; }
"-\\" { yysetpos(); return yytk_MINUS_BACKSLASH; }
"+>" { yysetpos(); return yytk_PLUS_GREATER; }
".>" { yysetpos(); return yytk_DOT_GREATER; }
"<." { yysetpos(); return yytk_LESS_DOT; }
".." { yysetpos(); return yytk_DOT_DOT; }
"swap" { yysetpos(); return yykw_swap; }
"stop" { yysetpos(); return yykw_stop; }
"skip" { yysetpos(); return yykw_skip; }
"chaos" { yysetpos(); return yykw_chaos; }
"`" { yysetpos(); return yytk_BACKQUOTE; }
"false" { yysetpos(); return yykw_false; }
"true" { yysetpos(); return yykw_true; }
"any" { yysetpos(); return yykw_any; }
"out" { yysetpos(); return yykw_out; }
"write" { yysetpos(); return yykw_write; }
"read" { yysetpos(); return yykw_read; }
"of" { yysetpos(); return yykw_of; }
"array" { yysetpos(); return yykw_array; }
"|}" { yysetpos(); return yytk_BAR_RBRACE; }
"{|" { yysetpos(); return yytk_LBRACE_BAR; }
"->" { yysetpos(); return yytk_MINUS_GREATER; }
"-~->" { yysetpos(); return yytk_MINUS_TILDE_MINUS_GREATER; }
"-~m->" { yysetpos(); return yytk_MINUS_TILDE_m_BLANK_MINUS_GREATER; }
"-m->" { yysetpos(); return yytk_MINUS_m_BLANK_MINUS_GREATER; }
"-inflist" { yysetpos(); return yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_l_BLANK_i_BLANK_s_BLANK_t_BLANK; }
"-list" { yysetpos(); return yytk_MINUS_l_BLANK_i_BLANK_s_BLANK_t_BLANK; }
"-infset" { yysetpos(); return yytk_MINUS_i_BLANK_n_BLANK_f_BLANK_s_BLANK_e_BLANK_t_BLANK; }
"-set" { yysetpos(); return yytk_MINUS_s_BLANK_e_BLANK_t_BLANK; }
"><" { yysetpos(); return yytk_GREATER_LESS; }
"Char" { yysetpos(); return yykw_Char; }
"Text" { yysetpos(); return yykw_Text; }
"Real" { yysetpos(); return yykw_Real; }
"Nat" { yysetpos(); return yykw_Nat; }
"Int" { yysetpos(); return yykw_Int; }
"Bool" { yysetpos(); return yykw_Bool; }
"Unit" { yysetpos(); return yykw_Unit; }
"}" { yysetpos(); return yytk_RBRACE; }
"{" { yysetpos(); return yytk_LBRACE; }
"|]" { yysetpos(); return yytk_BAR_RBRACKET; }
"[|" { yysetpos(); return yytk_LBRACKET_BAR; }
"use" { yysetpos(); return yykw_use; }
"hide" { yysetpos(); return yykw_hide; }
"with" { yysetpos(); return yykw_with; }
"extend" { yysetpos(); return yykw_extend; }
"class" { yysetpos(); return yykw_class; }
"ltl_assertion" { yysetpos(); return yytk_l_BLANK_t_BLANK_l_BLANK_UNDERSCORE_a_BLANK_s_BLANK_s_BLANK_e_BLANK_r_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK; }
"all" { yysetpos(); return yykw_all; }
":-" { yysetpos(); return yytk_COLON_MINUS; }
"([=]" { yysetpos(); return yytk_LPAREN_LBRACKET_EQUAL_RBRACKET; }
"==>" { yysetpos(); return yytk_EQUAL_EQUAL_GREATER; }
"else" { yysetpos(); return yykw_else; }
"[=]" { yysetpos(); return yytk_LBRACKET_EQUAL_RBRACKET; }
"[>]" { yysetpos(); return yytk_LBRACKET_GREATER_RBRACKET; }
"where" { yysetpos(); return yykw_where; }
"transition_rules" { yysetpos(); return yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_u_BLANK_l_BLANK_e_BLANK_s_BLANK; }
"transition_relation" { yysetpos(); return yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK; }
"/\\" { yysetpos(); return yytk_SLASH_BACKSLASH; }
"init_constraint" { yysetpos(); return yytk_i_BLANK_n_BLANK_i_BLANK_t_BLANK_UNDERSCORE_c_BLANK_o_BLANK_n_BLANK_s_BLANK_t_BLANK_r_BLANK_a_BLANK_i_BLANK_n_BLANK_t_BLANK; }
"local" { yysetpos(); return yykw_local; }
"transition_system" { yysetpos(); return yytk_t_BLANK_r_BLANK_a_BLANK_n_BLANK_s_BLANK_i_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK_UNDERSCORE_s_BLANK_y_BLANK_s_BLANK_t_BLANK_e_BLANK_m_BLANK; }
"test_case" { yysetpos(); return yytk_t_BLANK_e_BLANK_s_BLANK_t_BLANK_UNDERSCORE_c_BLANK_a_BLANK_s_BLANK_e_BLANK; }
"channel" { yysetpos(); return yykw_channel; }
":=" { yysetpos(); return yytk_COLON_EQUAL; }
"variable" { yysetpos(); return yykw_variable; }
"is" { yysetpos(); return yykw_is; }
"value" { yysetpos(); return yykw_value; }
"::" { yysetpos(); return yytk_COLON_COLON; }
"<->" { yysetpos(); return yytk_LESS_MINUS_GREATER; }
"_" { yysetpos(); return yytk_UNDERSCORE; }
"|" { yysetpos(); return yytk_BAR; }
"==" { yysetpos(); return yytk_EQUAL_EQUAL; }
"type" { yysetpos(); return yykw_type; }
"]" { yysetpos(); return yytk_RBRACKET; }
"[" { yysetpos(); return yytk_LBRACKET; }
"=" { yysetpos(); return yytk_EQUAL; }
"for" { yysetpos(); return yykw_for; }
"[=" { yysetpos(); return yytk_LBRACKET_EQUAL; }
"{=" { yysetpos(); return yytk_LBRACE_EQUAL; }
")" { yysetpos(); return yytk_RPAREN; }
"(" { yysetpos(); return yytk_LPAREN; }
"|-" { yysetpos(); return yytk_BAR_MINUS; }
"in" { yysetpos(); return yykw_in; }
"," { yysetpos(); return yytk_COMMA; }
"end" { yysetpos(); return yykw_end; }
"axiom" { yysetpos(); return yykw_axiom; }
":" { yysetpos(); return yytk_COLON; }
"devt_relation" { yysetpos(); return yytk_d_BLANK_e_BLANK_v_BLANK_t_BLANK_UNDERSCORE_r_BLANK_e_BLANK_l_BLANK_a_BLANK_t_BLANK_i_BLANK_o_BLANK_n_BLANK; }
"theory" { yysetpos(); return yykw_theory; }
"object" { yysetpos(); return yykw_object; }
"scheme" { yysetpos(); return yykw_scheme; }
[a-zA-Z][a-zA-Z0-9_\']* {
   long rslid;
   string_to_id (yytext, &rslid);
   yylval.attr[1] = rslid;
   yysetpos();
   return id;
}

([a-zA-Z]|`(alpha|beta|[gG]amma|[dD]elta|epsilon|zeta|eta|[tT]heta|iota|kappa|Lambda|mu|nu|[xX]i|[pP]i|rho|[sS]igma|tau|[uU]psilon|[pP]hi|chi|[pP]si|[oO]mega))([a-zA-Z0-9_\']|`(alpha|beta|[gG]amma|[dD]elta|epsilon|zeta|eta|[tT]heta|iota|kappa|Lambda|mu|nu|[xX]i|[pP]i|rho|[sS]igma|tau|[uU]psilon|[pP]hi|chi|[pP]si|[oO]mega))* {
   long rslid;
   string_to_id (yytext, &rslid);
   yylval.attr[1] = rslid;
   yysetpos();
   return id;
}

([a-zA-Z]|\016[DFGLOPQSUXYabcdefghikmnopqrstuxyz]|`(alpha|beta|[gG]amma|[dD]elta|epsilon|zeta|eta|[tT]heta|iota|kappa|Lambda|mu|nu|[xX]i|[pP]i|rho|[sS]igma|tau|[uU]psilon|[pP]hi|chi|[pP]si|[oO]mega))([a-zA-Z0-9_\']|\016[DFGLOPQSUXYabcdefghikmnopqrstuxyz]|`(alpha|beta|[gG]amma|[dD]elta|epsilon|zeta|eta|[tT]heta|iota|kappa|Lambda|mu|nu|[xX]i|[pP]i|rho|[sS]igma|tau|[uU]psilon|[pP]hi|chi|[pP]si|[oO]mega))* {
   long rslid;
   string_to_id (yytext, &rslid);
   yylval.attr[1] = rslid;
   yysetpos();
   return id;
}

[0-9]+(E[0-9]+)? {
   long rslid;
   string_to_id (yytext, &rslid);
   yylval.attr[1] = rslid;
   yysetpos();
   return int_lit;
}
[0-9]+"."[0-9]+(E-?[0-9]+)? {
   long rslid;
   string_to_id (yytext, &rslid);
   yylval.attr[1] = rslid;
   yysetpos();
   return real_lit;
}
\" {
  yypos++; /* initial '"' */
  
  ReadStringLiteral ();
  return text_lit;
}
'[^']' {  /* normal character example : 'a' */
  yylval.attr[1] = (long) yytext [1];
  yysetpos();
  return char_lit;
}
'\\.' { /* escaped character */
  unsigned char c;
  
  switch (yytext [2]) {
  case 'a' : c = '\a'; break;
  case 'b' : c = '\b'; break;
  case 'f' : c = '\f'; break;
  case 'n' : c = '\n'; break;
  case 'r' : c = '\r'; break;
  case 't' : c = '\t'; break;
  case 'v' : c = '\v'; break;
  case '0' : c = '\0'; break;
  default :  c =  yytext [2]; break;
  }
  yylval.attr[1] = (long) c;
  yysetpos();
  return char_lit;
}
'\\([0-7]{1,3})' { /* character given as octal number */
  long l;
  int i;
  
  for (i = 2, l = 0; i <= (yyleng - 2); i++) {
    l = l * 8 + (yytext [i] - '0');
  }
  yylval.attr[1] = (long) l;
  yysetpos();
  return char_lit;
}
'\\x[0-9A-Fa-f]{1,2}' { /* character given as hexadecimal number */
  long l;
  int i;
  
  for (i = 3, l = 0; i <= (yyleng - 2); i++) {
    int m;
    switch (yytext[i]) {
    case 'A' : case 'a' : m = 10; break;
    case 'B' : case 'b' : m = 11; break;
    case 'C' : case 'c' : m = 12; break;
    case 'D' : case 'd' : m = 13; break;
    case 'E' : case 'e' : m = 14; break;
    case 'F' : case 'f' : m = 15; break;
    default : m = (yytext[i] - '0'); break;
    }
    l = l * 16 + m;
  }
  yylval.attr[1] = (long) l;
  yysetpos();
  return char_lit;
}
<<EOF>> {
  BEGIN (SPECIAL);
  unput ('@');
  return eofile;
}
<SPECIAL>@ {
  FILE * next;

  BEGIN (INITIAL);
  next = (FILE *) NextFile ();
  if (next == (FILE *) 0) {
    yyterminate ();
  }
  else {
    yy_delete_buffer (YY_CURRENT_BUFFER);
    yy_switch_to_buffer (yy_create_buffer (next, YY_BUF_SIZE));
    return nextunit;
  }
}
(~|\.\.?)\/[a-zA-Z0-9_/.]+ {
  long fileid;
  string_to_fileid (yytext, &fileid);
  yylval.attr[1] = fileid;
  yysetpos();
  return filename;
}


"/*" {
   yypos++; yypos++; /* initial '/*' */
   SkipRestOfComment ();
}
"--" {
   yypos++; yypos++; /* initial '--' */
   SkipRestOfLineComment ();
}

\  { yypos += 1; }
\n { yyPosToNextLine(); }
\t { yypos += 1; }
. { yysetpos(); yyerror("illegal token"); }
%%

#define EOFCHAR EOF
#define NEXTCHAR (yypos++, input())

/* ---------------------------------------------- */

void SkipRestOfComment (void)
{
  int ch;
  int nest = 1;
  
  ch = NEXTCHAR;
  for (;;) {
    switch (ch) {
    case '\n' :
      yyPosToNextLine ();
      ch = NEXTCHAR;
      break;
    case EOFCHAR :
      yyerror ("unexpected eof in comment");
      exit (1);
      break;
    case '*' : /* possible end of comment */
      ch = NEXTCHAR;
      if (ch == '/') {
	nest--;
	if (nest == 0) { /* reached end of last comment */
	  return;
	}
	ch = NEXTCHAR;
      }
      break;
    case '/' :
      ch = NEXTCHAR;
      if (ch == '*') {
	nest++; 
	ch = NEXTCHAR;
      }
      break;
    default :
      ch = NEXTCHAR;
    }
  }
}

/* ---------------------------------------------- */

void SkipRestOfLineComment (void)
{
  int ch;
  
  do {
    ch = NEXTCHAR;
  } while ((ch != '\n') && (ch != EOFCHAR));
  yyPosToNextLine();
}

/* ---------------------------------------------- */

void ReadStringLiteral (void) 
{
  int ch;
  
  for(;;) {
    ch = NEXTCHAR;
    switch (ch) {
    case EOFCHAR :
      yylexerror("end of file inside string");
      break;
    case '\n' :
      yylexerror("end of line inside string");
      break;
    case '\\' : 
      AppendToString(ch);
      ch = NEXTCHAR;
      AppendToString (ch);
      break;
    case '"' : /* string read */
      yylval.attr [0] = yypos;
      GetStringRef(&yylval.attr[1]);
      return;
      break;
    default :
      AppendToString(ch);
    }
  }
}
#ifndef yywrap
yywrap() { return 1; }
#endif
