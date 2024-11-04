# Laboratory 03 - Intermediate code generation

## Modify the project in order to generate Intermediate code for `While` instruction.

The codes were developed by professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab11)

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

- Creat the label for start of `While` : ```cout << "L" << before << ":" << endl ```
- Evaluate the condition of `While` : ```Expression *n = Rvalue(expr);```
- If the condition is false, go to end of `While` : ```cout << "\tifFalse " << n->ToString() << " goto L" <<after<< endl;```
- Generates the code inside `While`  :``` stmt->Gen(); ```
- Go back to beginning of `While` :```cout << "\tgoto L" << before << endl;```
- End of `While`: ```cout << "L" << after << ":" << endl;```

## Example

```c++
int main()
{
    int i; int j; float v; float x; float a[100]; bool flag;

    flag = true;
    while (flag)
    {
        do
        {
            i = i+1;
        } 
        while (a[i] < v);
        
        do
        {
            j = j-1;
        } 
        while (a[j] > v);
        
        if (i >= j)
            flag = false;
    
        x = a[i]; a[i] = a[j]; a[j] = x;
    }
}
```

Result:

`    flag = true             `

`L4:                         `

`    ifFalse flag goto L5    `

`L1:                         `

`    t1 = i + 1              `

`    i = t1                  `

`    t3 = a[i]               `

`    t2 = t3 < v             `

`    ifTrue t2 goto L1       `

`L2:                         `

`    t4 = j - 1              `

`    j = t4                  `

`    t6 = a[j]               `

`    t5 = t6 > v             `

`    ifTrue t5 goto L2       `

`    t7 = i >= j             `

`    ifFalse t7 goto L3      `

`    flag = false            `

`L3:                         `

`    t8 = a[i]               `

`    x = t8                  `

`    t9 = a[j]               `

`    a[i] = t9               `

`    a[j] = x                `

`    goto L4                 `

`L5:                         `
