# Laboratory 02 - Semantic Analyzer

The codes were developed for professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab10)

## This project includes automatic conversion the `int` for `bool`.

- `0` is automatic converted to `false`
- Any other integer value is automatically converted to `true`.

## The solution

Verify if the conversion is necessary

```c++

if (id->type == ExprType::BOOL && expr->type == ExprType::INT) {
        int value = stoi(expr->token->lexeme); // Converte o valor do int
        expr->type = ExprType::BOOL; // Define o tipo como BOOL
        expr->token->lexeme = (value == 0) ? "false" : "true"; // Atualiza o lexeme para "true" ou "false"
        expr->token->tag = (value == 0) ? Tag::FALSE : Tag::TRUE; // Define o valor booleano
    }

```

- Check if the variable `id` is of type `Bool` ```id->type == ExprType::BOOL ```
- Check if the expression (`expr`) is of type `int` ```expr->type == ExprType::INT```
- If both conditions are true, a convert will be made
- ```int value = stoi(expr->token->lexeme)``` Convert the content (`lexeme`) of `expr` to an `int`
- ```expr->type = ExprType::BOOL;``` Change type from (`expr`) to `bool`
- ```expr->token->lexeme = (value == 0) ? "false" : "true";``` If `value` is `0`, `lexeme` will be updated to `false`, else the `lexeme` will be updated to `true`
- ```expr->token->tag = (value == 0) ? Tag::FALSE : Tag::TRUE;``` If `id` and `expr` have different types, an exception will be thrown to indicate an error (excepted int -> bool)

## Example

```c++
   
int main()
{
  // variáveis
  int i;
  int j;
  bool z;
  bool x;

  // atribuições
  i = 15;
  j = 30;
  x = 50;
  z = 0;
}
 ```

Result:

`<SEQ> <ASSIGN> i = 15 </ASSIGN> `
`<SEQ> <ASSIGN> j = 30 </ASSIGN>`
`<SEQ> <ASSIGN> x = true </ASSIGN> `
`<SEQ> <ASSIGN> z = false </ASSIGN> `
`</SEQ> </SEQ> </SEQ> </SEQ>`
  



