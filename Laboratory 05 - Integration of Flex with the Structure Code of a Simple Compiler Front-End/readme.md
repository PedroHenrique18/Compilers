# Laboratory 04 - Lexical Analysis Tools

The codes were developed by professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master)

## Modify the project to include


## The Solution

### a) Include the key word ```while```



## Testing the implemented functionalities

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

### Running the command in the terminal

```bash
sample.exe < ../test.txt
```

### Output

```txt
C:\Users\pedro\Desktop\Compilers\Laboratory 05 - Integration of Flex with the 
Structure Code of a Simple Compiler Front-End\build>tradutor.exe ../Testes/teste4.cpp
        flag = true
L4:
        ifFalse flag goto L5
L1:
        t1 = i + 1
        i = t1
        t3 = a[i]
        t2 = t3 < v
        ifTrue t2 goto L1   
L2:
        t4 = j - 1
        j = t4
        t6 = a[j]
        t5 = t6 > v
        ifTrue t5 goto L2   
        t7 = i >= j
        ifFalse t7 goto L3  
        flag = false        
L3:
        t8 = a[i]
        x = t8
        t9 = a[j]
        a[i] = t9
        a[j] = x
        goto L4
L5:
```


