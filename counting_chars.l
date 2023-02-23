%{
int ch=0,bl=0,ln=0,wr=0;
%}
%%
[\n] {wr++;ln++;}
[\t] {bl++;wr++;}
[^\n\t] {wr++;}
[" "] {bl++;}
%%
yywrap(){}
main(int argc,char argv[])
{
	extern FILE *yyin();
	yyin();
	printf("WORD: %d , char : %d , new line : %d , blank : %d",wr,ch,ln,bl);
	yylex();
}
