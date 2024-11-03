# Laboratory 03 - Intermediate code generation

The codes were developed for professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab11)

## Modify the project in order to generate Intermediate code for `While` instruction.

```c++
void While::Gen()
{

    cout << "L" << before << ":" << endl; // Cria o label para o início do loop
    Expression *n = Rvalue(expr); // Avalia a condição do loop
    // Se a condição for falsa, salta para o label do fim do loop
    cout << "\tifFalse " << n->ToString() << " goto L" <<after<< endl;
    // Gera o corpo do loop
    stmt->Gen(); 
    // Salta de volta para o início do loop
    cout << "\tgoto L" << before << endl;
    //finaliza o loop
    cout << "L" << after << ":" << endl;

}
```
