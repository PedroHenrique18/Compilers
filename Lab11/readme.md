# Laboratory 03 - Intermediate code generation

## Modify the project in order to generate Intermediate code for `While` instruction.

The codes were developed for professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab11)

## The Solution
```c++
void While::Gen()
{

    cout << "L" << before << ":" << endl; //Cria o label 
    Expression *n = Rvalue(expr); //Avalia a condição
    //Se a condição for falsa, vá para o fim do loop
    cout << "\tifFalse " << n->ToString() << " goto L" <<after<< endl;
    //Gera o codigo
    stmt->Gen(); 
    //Volta para o início do loop
    cout << "\tgoto L" << before << endl;
    //Finaliza o loop
    cout << "L" << after << ":" << endl;

}
```

- Created the label for start of `While` : ```cout << "L" << before << ":" << endl ```
- Evaluate the condition of `While` : ```Expression *n = Rvalue(expr);```
- If the condition is false, go to end of `While` : ```cout << "\tifFalse " << n->ToString() << " goto L" <<after<< endl;```
- Generates the code inside `While`  :``` stmt->Gen(); ```
- Back to the beginner the `While` :```cout << "\tgoto L" << before << endl;```
- End of the `While`: ```cout << "L" << after << ":" << endl;```
