/*** Definition Section has one variable 
which can be accessed inside yylex()  
and main() ***/
%{
int count;
%}

BRACKETS [(){};,]

/*** Regex ***/
%%

{BRACKETS} {printf("%s \n", yytext); 
       count++;}
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
return 0;
}

