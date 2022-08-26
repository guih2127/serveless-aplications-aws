###### Por que?

A tecnologia Serveless foi criada com o objetivo de evitar que gastemos tempo
e dinheiro com máquinas não utilizados. O objetivo é: Recebemos um evento,
recebemos o que temos que receber e fazemos o que deve ser feito, evitando
gasto desnecessário.

###### Programação orientada à eventos:

Recebemos um evento, que podem ser vários tipos de coisa, tais como:

- API Request.
- Rotinas que rodam de x em x tempo.
- Erros em aplicações

A partir desse evento, podemos trabalhar com uma Lambda (função AWS),
para, por exemplo, salvar algo em um banco de dados.

###### Exemplo de fluxo de alteração de informação.

1 - Requisição feita na API.
2 - Requisição recebida pelo serviço API Gateway da AWS.
3 - O Gateway dispara o evento para a AWS Lambda.
4 - A AWS Lambda, por sua vez, processa os dados e os salva no DynamoDB da AWS.

###### Pague o que usar!

O legal aqui é que pagamos apenas para cada vez que a função foi executada, ou seja,
evitamos casos onde pagamos máquinas super poderosas para lidar com coisas pequenas,
por exemplo, e podemos ter uma ótima economia com isso.

###### Plataformas gerenciam a execução do código.

Ao trabalhar com esses serviços de computação em nuvem, partimos do princípio de que
tentaremos explorar ao máximo o que aquela plataforma nos provê, seja ela a AWS, Google,
Microsoft ou outra, abrindo mão da liberdade de usar outras plataformas.
