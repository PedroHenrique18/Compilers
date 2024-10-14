# Laboratory 01 - Lexical Analyzer

## Adapting the code to accept comments

The codes were developed for professor JUDSON SANTIAGO where you find [here](https://github.com/JudsonSS/Compiladores/tree/master/Labs/Lab06)

## A solução

basically it was adding this code snippet

```c++
if (peek == '/')
    {
        // Lê o próximo caractere
        peek = cin.get();

        // Verifica se o próximo caractere também é um operador de divisão
        if (peek == '/')
        {
            // Ignora o restante da linha (comentário)
            while (peek != '\n')
            {
                peek = cin.get();
            }
            // Avança a linha se o final do comentário for uma nova linha
            if (peek == '\n') line += 1;
            // Continua para a próxima iteração
            return Scan();
        }while (true)
        {
            peek = cin.get();  // Lê o próximo caractere
            
            // Se encontrar uma nova linha, incrementa a contagem de linhas
            if (peek == '\n') line += 1;

            // Verifica se encontrou o final do comentário
            if (peek == '*')
            {
                peek = cin.get();  // Lê o próximo caractere após o '*'
                if (peek == '/')  // Se for um '/', fecha o comentário
                {
                    peek = ' ';  // Prepara para a próxima iteração
                    return Scan();  // Continua para a próxima iteração
                }
            }
		}
	}
```
