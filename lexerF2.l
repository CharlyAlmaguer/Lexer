/*Programado por Carlos Almaguer el 21/05/2020*/
%{
#include <stdio.h>      
#include <string.h>     
#include <stdlib.h>
#include "y.tab.h"
%}
/*Se agregaron estas expresiones el 1/06/2020*/ 
letra [a-zA-Z]
digito [0-9] 
/*Se modificaron estas expresiones el 1/06/2020*/             
id {letra}({letra}|[_]|{digito})*
num {digito}+                                
esp [\n\t\r]+                                                      
caracter [']{letra}[']
cadena ["]{letra}+["]
%%

"estructura" {return PRESTRUCTURA;}     
"inicio"     {return PRINICIO;}
"def"        {return PRDEF;}
"fin"        {return PRFIN;}
"ent"        {return PRENTERO;}
"real"       {return PRREAL;}
"car"        {return PRCAR;}
"dreal"      {return PRDREAL;}
"sin"        {return PRSIN;}
"si"         {return PRSI;}
"entonces"   {return PRENTONCES;}
"sino"       {return PRSINO;}
"mientras"   {return PRMIENTRAS;}
"hacer"      {return PRHACER;}
"segun"      {return PRSEGUN;}
"escribir"   {return PRESCRIBIR;}
"leer"       {return PRLEER;}
"devolver"   {return PRDEVOLVER;}
"terminar"   {return PRTERMINAR;}
"caso"       {return PRCASO;}
"pred"       {return PRPRED;}
"o"          {return PROR;}
"y"          {return PRAND;}
"no"         {return PRNOT;}
"verdadero"  {return PRVERDADERO;}
"falso"      {return PRFALSO;}
","          {return COMA;}
";"          {return PYC;}
":"          {return DP;}
":="         {return PIGUAL;}
"."          {return PUNTO;}
"("          {return LPAR;}
")"          {return RPAR;}
"["          {return LCOR;}
"]"          {return RCOR;}
">"          {return MAYOR;}
"<"          {return MENOR;}
"<="         {return MENORIGUAL;}
">="         {return MAYORIGUAL;}
"<>"         {return MAYORMENOR;}
"="          {return IGUAL;}
"+"          {return SUMA;}
"-"          {return RESTA;}
"*"          {return MUL;}
"/"          {return DIV;}
"%"          {return MOD;}
" "          {}
{num}        {return NUM;}                  
{id}         {return ID;}
{caracter}   {return CARACTER;}
{cadena}     {return CADENA;}
{esp}        {}
.            {printf("Error Lexico %s\n",yytext);}

%%
int yywrap(){                        
     return 1;
}