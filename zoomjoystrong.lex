%{
	#include <stdio.h>
	#include "zoomjoystrong.tab.h"

%}

%%

[0-9]+	return INT;
[0-9]*\.[0-9]*	return FLOAT; 
point 	return POINT;
line 	return LINE;
circle	return CIRCLE;
rectangle return RECTANGLE;
set_color return SET_COLOR;
;	return END_STATEMENT;
END 	return END;
[ |\t|\n]	;
.	{printf("Error");}


%%
