%{
	#include stdio.h
%}
int numlines = 0;
%%

end	{printf("END");}
;	{printf("END_STATEMENT);}
point	{printf("POINT");}
line	{printf("LINE");}
circle	{printf("CIRCLE");}
rectangle	{printf("RECTANGLE");}
set_color	{printf("SET_COLOR");}
[0-9]+	{printf("INT");}
[0-9]*\.?[0-9]+	{printf("FLOAT");}
\n	{numlines++;}
\t|\n|\s		;
.	{printf("We have no match at line %d\n",numlines);}


%%