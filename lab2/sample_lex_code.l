/*** Definition Section has one variable 
which can be accessed inside yylex()  
and main() ***/
%{ 
int count = 0; 
int line_count = 0;
%} 


%% 
[a-zA-Z0-9]* {printf("[%s]\n", yytext);}
[{}()]   {printf("[%s]\n", yytext);}
;*  {printf("[%s]\n", yytext);}
. {;}
%% 
  

int yywrap(){} 

int main(){ 
FILE *fp; 
fp = fopen("text","r"); 
yyin = fp; 

  
yylex(); 
printf( "in the given input - %d\n", count); 
  
return 0; 
} 
