# Laboratory 04 - Lexical Analysis Tools

The codes were developed by professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab11)

## Modify the project to include
- a) Include the key word ```while```
- b) Change relational operators to the same c++
- c) Allow underscore characters in identifier
- d) Include the pattern for the ```STRING``` token

## The Solution

### a) Include the key word ```while```

First was to add the ``` while``` keyword in the lexical analyzer: ```while       return WHILE; ```

Add the constant to the  
```c++
enum {IF=1, WHILE, THEN, ELSE, ID, NUM, RELOP, STRING}; 
```

Treats the "TOKEN" received from the lexical analyzer: 
```c++
case WHILE:cout <<"WHILE\n"; break;
```

### b) Change relational operators to the same c++

Adding all relational operations to c++
```c++
"<"      return RELOP; 
"<="     return RELOP; 
"="      return RELOP; 
"=="     return RELOP;
"!="     return RELOP;
"<>"     return RELOP; 
">"      return RELOP;
">="     return RELOP; 
```

### c) Allow underscore characters in identifier

It was necessary to add ```_``` at the beginning of the regular expression and in the body

```c++
letra	[A-Za-z]
digito	[0-9]
id	    (_|{letra})({letra}|{digito}|_)*
```

 ### d) Include the pattern for the ```STRING``` token

A new regular expression called "string" was created
 
```c++
string  \"[A-Z,a-z,0-9,\\,//,_ \"\t]*\"
```

## Testing the implemented functionalities

```txt
minhaVariavel
_minhaVariavel
minha_Variavel
"um "exemplo" com /\ caractere _ especial"

if valor > 2.5E+30 then
    ok
else
    problem
while valor != 2.5 then
    ok
```

### Running the command in the terminal

```bash
sample.exe < ../test.txt
```

### Output

```txt
C:\Users\pedro\Desktop\Compilers\Laboratory 04 - Lexical Analysis Tools\build>sample.exe < ../test.txt
ID: minhaVariavel
ID: _minhaVariavel
ID: minha_Variavel
STRING: "um "exemplo" com /\ caractere _ especial"
IF
ID: valor
RELOP: >
NUM: 2.5E+30
THEN
ID: ok
ELSE
ID: problem
WHILE
ID: valor
RELOP: !=
NUM: 2.5
THEN
ID: ok
```



