##amostragem simples

gerando 150 amostras de 0 e 1 com reposição, e probabilizade de 50% cada
```{r}
amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.5, 0.5))
amostra
summary(as.factor((amostra)))
```
gerando 150 amostras de 0 e 1 com reposição, probabilidade mais para 0 
```{r}
amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.7, 0.3))
amostra
summary(as.factor(amostra))
```
gerando 150 amostras de 1 a 1000 sem reposição, probabilidade equivalente 
```{r}
amostra = sample(c(1:1000), 150, replace = FALSE)
amostra
summary(as.factor(amostra))
```
gerando amostra do conjunto iris (30%)
```{r}
amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.7, 0.3))
summary(as.factor(amostra))
amostra_iris = iris[amostra==1,]
amostra_iris
dim(amostra_iris) #linhas e colunas
```
obter os mesmos resultados em execuções subsequentes com o mesmo código
```{r}
set.seed(2345)
sample(c(1000), 1)
```
```{r}
set.seed(2345)
sample(c(1000), 1)
```


##amostragem sistemática

```{r}
library("TeachingSampling")
```
gerando amostra de tamanho 150 com 10 grupos
```{r}
amostra = S.SY(150, 10) #vai até 150 de 10 em 10 (inicio aleatório)
amostra
```
tamanho
```{r}
dim(amostra)
```
gerando amostra do conjunto iris
```{r}
amostra_iris1 = iris[amostra,]
amostra_iris1
dim(amostra_iris1) #linhas e colunas
```

##amostragem estratificada 

```{r}
library("sampling")
```

```{r}
proporcao = 25
```
gerando amostra do conjunto iris, utilizando a coluna "species", cada species com 25 representações, amostra simples sem reposição (srswor)
```{r}
amostra_iris2 = strata(data=iris, stratanames = c("Species"), size = c(rep(proporcao, 3)), method = "srswor")
summary(amostra_iris2)
```
dados de infertilidade
```{r}
infert
summary((infert))
```
gerando amostra do conjunto infert, utilizando a coluna "education, cada valor de education com 5, 48 e 47 representações, respectivamente, amostra simples sem reposição
```{r}
amostra_infert = strata(data = infert, stratanames = c("education"), size = c(5, 48, 47), method = "srswor")
amostra_infert
summary(amostra_infert)
```

