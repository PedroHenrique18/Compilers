# Laboratory 02 - Semantic Analyzer

## This project includes automatic conversion the `int` for `bool`.

- `0` is automatic converted to `false`
- Any other integer value is automatically converted to `true`.

## The solution

```c++

if (id->type == ExprType::BOOL && expr->type == ExprType::INT) {
        int value = stoi(expr->token->lexeme); // Converte o valor do int
        expr->type = ExprType::BOOL; // Define o tipo como BOOL
        expr->token->lexeme = (value == 0) ? "false" : "true"; // Atualiza o lexeme para "true" ou "false"
        expr->token->tag = (value == 0) ? Tag::FALSE : Tag::TRUE; // Define o valor booleano
    }

```
