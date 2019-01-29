/*** Definition Section has one variable 
which can be accessed inside yylex()  
and main() ***/
%{
int count_int;
int count_float;
%}

BRACKETS [(){};,]

/*** Regex ***/
%%

[0-9]* {printf("[%s] - Integer \n", yytext); 
       count_int++;}
[+-]?([0-9]*[.])?[0-9]+ {
    printf("[%s] - Float \n",yytext);
                        count_float++;}
. {;}
%%

/*** Rule Wrapper ***/
int yywrap(){} 


int main() {
    // File Input 
FILE *fp; 
// char filename[50]; 
// printf("Enter the filename: \n"); 
// scanf("%s",filename); 
fp = fopen("text","r"); 
yyin = fp; 

yylex();
printf
("Total Integer count - %d", count_int);
printf("Total Float count - %d", count_float);
return 0;
}
