%{
// Reconhecedor de uma linguagem simplificada
#include <iostream>
#include "tokens.h"
using std::cout;
%}

%option noyywrap
delim	[ \t\n]
brancos {delim}+
letra	[A-Za-z]
digito	[0-9]
id	    (_|{letra})({letra}|{digito}|_)*
num	    {digito}+(\.{digito}+)?(E[+-]?{digito}+)?
string  \"[A-Z,a-z,0-9,\\,//,_ \"\t]*\"

%%
{brancos}	; // nenhuma ação e nenhum retorno
if		    return IF; 
while       return WHILE;
then		return THEN; 
else		return ELSE; 
{id}		return ID;  
{num}	    return NUM; 
{string}    return STRING;
"<"		    return RELOP; 
"<="		return RELOP; 
"="		    return RELOP; 
"=="		return RELOP;
"!="		return RELOP;
"<>"		return RELOP; 
">"		    return RELOP;
">="		return RELOP; 
.           cout << YYText() << " é um token inválido!\n"; 
%%

// nenhuma função auxiliar é necessária
