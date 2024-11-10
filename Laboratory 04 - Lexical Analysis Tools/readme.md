# Laboratory 04 - Lexical Analysis Tools

The codes were developed by professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab11)

## Modify the project to include
- a) Include the key word ```while```
- b) Change relational operators to the same c++
- c) allow underscore characters in identifier
- d) Include the pattern for the ```STRING``` token

## The Solution

### a) Include the key word ```while```

First was to add the ``` while``` keyword in the lexical analyzer: ```while       return WHILE; ```

Add the constant to the ```while```: ```cpp
enum {
    IF = 1,
    WHILE,
    THEN,
    ELSE,
    ID,
    NUM,
    RELOP,
    STRING
};```

Treats the "TOKEN" received from the lexical analyzer: ```case WHILE:cout <<"WHILE\n"; break;```

### b) Change relational operators to the same c++
