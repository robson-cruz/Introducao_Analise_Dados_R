---
title: 'Introdução à Análise de Dados com Linguagem R'
subtitle: 'Aula 1'

output:
        pdf_document:
                number_sections: true
                toc: true
                df_print: paged
                includes:
                        in_header: header.tex
        html_document:
                css: style.css
                number_sections: true
                toc: true
                toc_float:
                        collapsed: false
                        toc_depth: 2
                df_print: paged
                
author: 'Analista Ambiental Robson Cruz'
---

# Introdução
<p style="text-align:justify">R é uma linguagem de programação gratuita de código aberto usada principalmente para computação estatística e gráficos. R é uma linguagem interpretada semelhante a Python, onde você não precisa compilar primeiro para executar seu programa. Depois de criar seu programa, você pode executá-lo em uma ampla variedade de plataformas UNIX, Windows e MacOS.</p>

<p style="text-align:justify">R é uma linguagem específica de domínio de código aberto, explicitamente projetada para ciência de dados. Muito popular em finanças e academia, R é uma linguagem perfeita para manipulação, processamento e visualização de dados, bem como computação estatística e aprendizado de máquina.</p>

<p style="text-align:justify">Como qualquer outra linguagem de programação, R também suporta extensão na forma de pacotes, portanto, os desenvolvedores podem criar seus próprios pacotes e reutilizá-los quando necessário.</p>

# Instalação do R
<p style="text-align:justify">A instalação padrão da linguagem R é feita a partir do <a href="https://cran.r-project.org/">CRAN</a>, uma rede formada de servidores espalhadod pelo mundo que armazena versões atualizadas do código fonte e executável (Windows), assim como a documentação da linguagem R.</p>

# Instalação do RStudio
<p style="text-align:justify">RStudio é um ambiente de desenvolvimento integrado para linguagem R (IDE - <i>integrated development environment</i>), porém pode rodar <i>scripts</i> SQL, C, C++ e Python. A vantagem se se poder trabalhar com IDE é que ela disponibiliza ferramentas de apoio ao desenvolvimento de códigos em linguagem de programção. Para <i>download</i> do RStudio acesse o endereço <a href="https://www.rstudio.com/products/rstudio/download/#download">https://www.rstudio.com/,</a> e escolha a opção <i>RStudio Desktop</i></p>

## Conhecendo a Interface Gráfica do RStudio

![](./output/RStudio.PNG)

A interface do RStudio é divida em 4 painés, e duas barras:
* 1 - Barra de _menu_
* 2 - Barra de ferramentas
* 3 - Painel de _scripts_ e arquivos
* 4 - Painel de variáveis de Ambiente/Histórico/Conexões/Tutorial
* 5 - Painel de _Console/Terminal_ 
* 6 - Painel de Árvore de Arquivos/Gráficos/Pacotes/Ajuda/Visualizador

## Obter e Configurar o ambiente de trabalho

<p style="text-align:justify">Para obter o ambiente de trabalho atualmente em uso pelo RStudio utilizamos a função <mark style="background-color:#F4F4F4;">getwd()</mark>; esta função vem do termo em inglês: <i>Get Working Directory</i>, traduzido para o portugês como "Obter Ambiente de Trabalho". No sistema operacional Windows, por padrão, o RStudio configura o ambiente de trabalho em "C:/Usuários/Nome_do_Usuário/Documentos"</p>.
<p style="text-align:justify">Para configurar um ambiente de trabalho diferente do padrão utilizamos a função <mark style="background-color:#F4F4F4">setwd()</mark>. Esta função tem nome bem sugestivo na lingua inglesa, a saber: <i>Set Working Directory</i>, "Configurar Ambiente de Trabalho".</p>


```R

```

### Exercício Prático - Ambiente de trabalho
**Instrução 1/2**
* Use a janela console do RStudio para obter o atual diretório de trabalho em uso no seu computador.


```R

```

**Instrução 2/2**
* Configure seu ambiente de trabalho para `'C:/Users/Seu_nome_de_usario/Downloads'`

_Atenção: Em seu nome_de_usuario insira seu nome de usuário._


```R

```


```R

```

# Operadores Aritméticos e de Atribuição em R

|Operador|Função|
|:------:|:----:|
| +      | Soma |
| -      | Subtração |
| /      | Divisão |
| *      | Multiplicação |
|   %%   | Resto da divisão |
| %/%    | Parte inteira divisão |
| ^      | Potenciação |
| **     | Potenciação |
| <-     | Atribuição |
| =      | Atribuição |

## Exercício Prático - Operadores Aritméticos e de Atribuição

**Instrução 1/3**
* Obter o resto da divisão entre os números inteiros 10 e 3.


```R

```

**Instrução 2/3**
* Obter a parte interira da divisão de 10 por 3.


```R

```

**Instrução 3/3**
* Obter o quadrado de um número inteiro qualquer.


```R

```

# Operadores de Comparação em R

| Operador | Significado |
|:--------:|:-----------:|
| == | igual a |
| != | diferente de |
| >  | maior que |
| <  | menor que |
| >= | maior ou igual a |
| <= |menor ou igual a |

# Objeto em R
Um objeto é simplesmente qualquer variável que armaneza um caractere numérico, alfabético ou uma cadeia de carateres (_string_). Em R temos objetos especiais para manipulação de grande volume de dados, a exemplo de vetores, listas e dataframes.
Para criação de um objeto se utiliza o operador de atribuição `<-`. Nos exemplos a seguir são criados os objetos `x`, `y` e `z` para armazenar um número inteiro, uma letra e uma frase.


```R
# definição de um objeto do tipo inteiro
int <- 42

# definição de um objeto do tipo caractere
letra <- "R"

# # definição de um objeto do tipo string (cadeia de caracteres)
string <- "R é massa"
```

<p style="text-align:justify">Em ambos os trechos de código acima se observa o uso do caractere `#`, em R e python este caractere é utilizado para fazer comentário no código, portanto, toda linha que contém este caractere é ignorada na execução do programa.</p>
A seguir é mostrado como fazer comentário com várias linhas.


```R
"
Este é um comentário em R utilizando 
várias linhas para documentação de
códigos.
"
```

## Conferindo o contéudo de um objeto
Para conferir o conteúdo de um objeto em R, fazemos uma chamada diretamento pelo nome do objeto de interesse ou através do uso da função _`print()`_


```R
int
print(int)
cat(int)
```


42


    [1] 42
    42

## Descobrindo o tipo de dados armazenado em um objeto R
Para descobrir o tipo de dados armazenado em um objeto, podemos utilizar a função _`class`_


```R
class(int)
class(letra)
class(string)
```


'numeric'



'character'



'character'


# Estrutura de Dados em R
## Vetores
Vetor em R é um objeto R que armazena um ou mais elementos de valores indexados, ou seja, cada elemento dentro do vetor possui uma posição específica. Para criação de um vetor basta colocar os valores dentro de `c()`. Vetor é uma estrutura de dados especialmente importante em análise de dados. A seguir temos um exemplo de como criar um vetor de inteiros.


```R
inteiros <- c(42, 33, 0, -1, 5)
```

Para acessar o primeiro elemento do vetor `inteiros` usamos o comando _`vetor[x]`_, onde _vetor_ é nome atribuido ao vetor e _x_ é o índice do elemento a ser buscado no vetor. Se quisermos mostrar apenas o elemento de índice 1 do vetor `inteiros`, ou seja: filtar apenas o primeiro elemento, basta usar _`inteiros[1]`_


```R
# acessar o primeiro elemento de um vetor
inteiros[1]
```


42


Ao usar um índice negativo para filtrar um vetor estamos pedindo que a saída dos daos do vetor não mostre o elemte relativo ao índice negativo. No código a seguir vamos mostrar todos os elementos do vetor `inteiros`, exceto o quarto elemento (elemento de índice 4).


```R
# mostrar todos os elementos do vetor com exeção do elemento de índice 4
inteiros[-4]
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>42</li><li>33</li><li>0</li><li>5</li></ol>



### Substituição de elementos de um vetor


```R
# Substituir o primeiro elemento do vetor "inteiros" por 2
inteiros[1] <- 2
inteiros
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>2</li><li>33</li><li>0</li><li>-1</li><li>5</li></ol>



### Funções básicas aplicadas a vetores

* _`length()`_ Retorna o tamanho de um vetor, ou seja, o número de elementos armazenados no vetor.


```R
length(inteiros)
```


5


#### _`names()`_ Retorna os nomes atribuídos a cada elemento de um vetor


```R
# Defini um vetor de números inteiros chamado "dias_semana"
dias_semana <- c(1:7)

# Mostrar na tela do console os dados do vetor
dias_semana

# Checar se o vetor possui nomes associados aos seus elementos
names(dias_semana)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li></ol>




    NULL



```R
# Atribuir nomes aos elementos do vetor utilizando a função names()
names(dias_semana) <- c('Domingo', 'Segunda', 'Terça', 'Quarta',
                        'Quinta', 'Sexta', 'Sábado')
```


```R
# Checar se o vetor possui nomes associados aos seus elementos
names(dias_semana)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>'Domingo'</li><li>'Segunda'</li><li>'Terça'</li><li>'Quarta'</li><li>'Quinta'</li><li>'Sexta'</li><li>'Sábado'</li></ol>




```R
# Mostrar na tela do console os dados do vetor
dias_semana
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>Domingo</dt><dd>1</dd><dt>Segunda</dt><dd>2</dd><dt>Terça</dt><dd>3</dd><dt>Quarta</dt><dd>4</dd><dt>Quinta</dt><dd>5</dd><dt>Sexta</dt><dd>6</dd><dt>Sábado</dt><dd>7</dd></dl>



#### _`attributes()`_ Retorna uma lista com os atributos associados a um vetor.


```R
# Verificar se os vetores "inteiros" e "dias_semana"
# possuem algum atributo
attributes(inteiros)
attributes(dias_semana)
```


    NULL



<strong>$names</strong> = <style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>'Domingo'</li><li>'Segunda'</li><li>'Terça'</li><li>'Quarta'</li><li>'Quinta'</li><li>'Sexta'</li><li>'Sábado'</li></ol>




```R

```

#### _`seq()`_ Cria uma sequência dentro de um vetor



```R
# gerar uma sequência de 1 a 10, saltando 2 números
sequencia <- seq(0, 10, 2)
print(sequencia)
```

    [1]  0  2  4  6  8 10
    

#### _`rep()`_ Cria uma repetição de um vetor


```R
# Gerar uma repetição de três vezes o vetor formado pelos número de 1 a 4
rep(1:4, 3)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>1</li><li>2</li><li>3</li><li>4</li><li>1</li><li>2</li><li>3</li><li>4</li><li>1</li><li>2</li><li>3</li><li>4</li></ol>



#### `duplicated()` Mostra a localização de elementos duplicados.


```R
# Vetor com números inteiros duplicados
vetor <- c(1, 2, 1, 3, 4, 5, 4)

# Mostrar os números duplicados
duplicated(vetor)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>FALSE</li><li>FALSE</li><li>TRUE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>TRUE</li></ol>



Por padrão a saída da função `duplicated()` é um vetor lógico. O código abaixo mostra com seria a saída em forma de vetorial para os dados acima.


```R
# Mostrar apenas os números repetidos
vetor[duplicated(vetor)]
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>1</li><li>4</li></ol>




```R

```

#### `unique()` Retorna apenas os valores distintos.

A seguir utilizaremos os dados dos vetores `dap` (diâmetro a altura do peito), categoria, altura e nomes_cientifocos, os quais são parte de um inventário florestal realizado na Unidade de Manejo Florestal 4 da Floresta Nacional de Altamira.


```R
# Leitura de vetores de um inventário florestal
load('./data/dados_modulo_1.rda')

# Mostrar os objetos atualmente disponíveis no ambiente R
ls()
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>'altura'</li><li>'categoria'</li><li>'dap'</li><li>'dias_semana'</li><li>'int'</li><li>'inteiros'</li><li>'letra'</li><li>'nomes_cientificos'</li><li>'sequencia'</li><li>'string'</li><li>'vetor'</li></ol>




```R

```

A seguir mostraremos quantas árvores foram inventariadas, ou seja, o tamnaho do nosso vetor.


```R
length(nomes_cientificos)
```


18406


O a saída código acima mostrar que foram inventariadas 18.406 árvores.

A seguir mostraremos a quantas espécies estas árvores pertencem, e para tal as funções `length()` e `unique()`.


```R
# Vetor apenas com a relação distinta de espécies inventariadas
especies <- unique(nomes_cientificos)

# somar o vetor especies
length(especies)
```


67


Portanto, temos a que para a área do inventário ocorrem 67 espécies de interesse comercial. O código acima poderia ser resumido em apenas uma linha, vejamos o exemplo a seguir:


```R
length(unique(nomes_cientificos))
```


67


## Funções Estatísticas Aplicadas a Vetores

* _`mean( )`_ Retorna a média aritmética

* _`median( )`_ Retorna a mediana

* _`min( )`_ Retorna o menor valor

* _`max( )`_ Retorna o maior valor

* _`sd( )`_ Retorna o desvio padrão

* _`summary( )`_ Retorna a estatístiva descritiva.

* _`cor( )`_ Retorna a correlação entre dois vetores.

### Calcular a média do vetor _dap_ (diâmetro médio das árvores)


```R
# média do vetor dap (diânetro médio das árvores)
mean(dap)
```


72.2728159295882


### Calcular a mediana do vetor _altura_ (altura comercial das árvores)


```R
### Calcular a mediana do vetor _altura_ (altura comercial das árvores)
median(altura)
```


18


### Mostrar os valores mínimo e máximo do vetor dap


```R
# valor mínimo de dap
min(dap)
```


40



```R
# dap Máximo
max(dap)
```


312.26


### Calcular o desvio padrão do vetor dap


```R
# desvio padrão para o vetor dap
sd(dap)
```


24.0258756077791


### Mostrar a estatística Descritiva do Vetor altura


```R
summary(altura)
```


       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       7.00   16.00   18.00   18.14   20.00   40.00 


### Calcular a correlação linear entre diâmetro e altura das árvores


```R
cor(dap, altura)
```


0.273168903939106


### Função `lapply()` aplicada a vetores
A função lapply, parte do pacote base do R, no caso específico de vetores, recebe 2 argumentos como parâmetro: o vetor contendo de dados e uma função a ser aplicada aos elementos do vetor.


```R
nomes <- c('MASSARANDUBA', 'IPÊ', 'GARAPEIRA', 'JATOBÁ')
nomes
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>'MASSARANDUBA'</li><li>'IPÊ'</li><li>'GARAPEIRA'</li><li>'JATOBÁ'</li></ol>




```R
lapply(nomes, tolower)
```


<ol>
	<li>'massaranduba'</li>
	<li>'ipê'</li>
	<li>'garapeira'</li>
	<li>'jatobá'</li>
</ol>



### Função `sapply()`


```R
sapply(nomes, tolower)
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>MASSARANDUBA</dt><dd>'massaranduba'</dd><dt>IPÊ</dt><dd>'ipê'</dd><dt>GARAPEIRA</dt><dd>'garapeira'</dd><dt>JATOBÁ</dt><dd>'jatobá'</dd></dl>



### Função `mapply()`
Versão multivariada das funções lapply e sapply, utilizada para iterar entre elementos de vetores ou listas.


```R
# Definição dos Vetores a e b
a <- c(7, 12, 5, 2, 1) 
b <- c(4, 2, 3, 5, 1)

# Nomes para os vetores
dias_semana <- c('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta')

# Atribuir nome aos vetores
names(a) <- dias_semana
names(b) <- dias_semana

# Uso da função mapply() para retornar a soma
# entre os elementos dos vetores a e b
mapply(max, a, b)
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>Segunda</dt><dd>7</dd><dt>Terça</dt><dd>12</dd><dt>Quarta</dt><dd>5</dd><dt>Quinta</dt><dd>5</dd><dt>Sexta</dt><dd>1</dd></dl>



### Função _`tapply()`_
Aplica uma função sobre um vetor com agrupamento em outro vetor categórico. Recebe como parâmetros: um vetor numérico, um vetor categórico e uma função.
O código a seguir aplica a função média sobre o vetor `volume` agrupado ao vetor `ut` (unidades de trabalho)


```R
# Calcular o volume médio por unidade de trabalho
tapply(dap, categoria, mean)
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>Explorar</dt><dd>76.8872521591047</dd><dt>Remanescente</dt><dd>67.9580670429674</dd><dt>Substituta</dt><dd>71.9543683510638</dd></dl>



### Valores Ausentes (NA)
Em R valores ausentes são conhecidos como `NA`, uma sigla em inglês que significa _Not Available_, ou seja, valores nãop disponíceis. Na literatura técnica e também em outras linguagens de programação esta sigla é definida como `Nan` (_Not available number_)


```R
# Definição do Vetor "num" com elemento "NA"
num <- c(2, 11, 25, NA, 45)
```

Para o caso do vetor acima se utilizarmos a função `mean` para calcular a média aritimética do vetor `num`, teriamos que dizer a função para desconsiderar o valor NA, o que se faz definindo o parâmetro `na.rm = TRUE`, vejamos o exemplo a seguir:


```R
# Uso da função mean() sem desconsiderar valor ausente (NA).
mean(num)
```


&lt;NA&gt;



```R
# Desconsiderar valores NA
mean(num, na.rm = TRUE)
```


20.75


# Como Saber se Há Valores Ausentes (NA) nos Dados?
Para conferir a presença de valores NA nos dados utilizamos a função `is.na()`, a qual recebe como parâmetro de entrada apenas o vetor de dados.

* `is.na( )` Testa se o vetor contém valores ausentes (_Not Availables_)


```R
vetor <- c(NA, 2, 3, 6)
is.na(vetor)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>TRUE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li></ol>



Vemos acima que o retorno da função `is.na()` retorna um vetor lógico, mostrando _TRUE_ sempre que o elemento do vetor é do tipo `NA`. Podemos melhor a saida acima para uma forma tabular através do uso da função `summary`


```R
summary(is.na(vetor))
```


       Mode   FALSE    TRUE 
    logical       3       1 


Poderiamos ainda filtar o vetor de forma a não mostrar valores ausentes, usando o perador de negação ou "diferente", qual seja `!`. Este operador tem a mesma função da negação utilizada em lógica matématica porém nesta área utiliza-se os caracteres $\neg$ e `~`


```R
vetor[!is.na(vetor)]
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>2</li><li>3</li><li>6</li></ol>



# Exercício Prático - Vetores e Operadores de Comparação
<p style="text-align:justify">Para este exercício, considere o vetor <mark style="background-color:#F4F4F4">temperatura</mark>. Esse vetor possui dados de temperatura média mensal da Estação Meteorológica Manual INMET 82861, localizada no município de Conceição do Araguaia.</p>


```R
temperatura <- c(26.38452, 26.90357, 27.04064, 27.42467, 
                 28.53548, 28.90000, NA, 29.73818, 
                 30.54667, 27.21652, 27.28800, 27.84000)
```

**Instrução 1/4**
* Obter a temperatura média do vetor `temperatura`


```R

```

**Instrução 2/4**
* Obter as temperaturas que estão acima da média do vetor `temperatura`


```R

```

**Instrução 3/4**
* Mostre quanto dos dados do vetor de temperaturas apresentam valores `NA`


```R

```

**Instrução 4/4**
* Mostre os índices onde os dados do vetor de temperaturas apresentam valores `NA`


```R

```
