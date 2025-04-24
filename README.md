# Projeto de Automação de Teste em Robot Framework
> Projeto para demonstrar o conhecimento em automação de testes end to end utilizando Robot Framework e utilizando Python como linguagem de programação.


## Passo a passo para clonar o projeto:
> Para garantir seu projeto na sua máquina realize o clone do projeto através do GitHub

```
cd  C:\pasta\testePraticoRobotFrameworkBDDVersion
git clone add origin https://github.com/LeonardoLuizDuarte/testePraticoRobotFrameworkBDDVersion.git

```

## Configuração do projeto:
> Robot framework é construído com Python, portanto, é necessário que você possua a última versão instalada em sua máquina e pode ser encontrado através da página oficial do Python.
>Acesse https://www.python.org/downloads/ e realize download do Python.
>Após a instalação do Python, para garantir que a instalação foi bem sucedida, execute em seu prompt de comando o seguinte comando: 
```
$ python --version

```

>Execute também o comando para verificar a versão do pip instalada em sua máquina

```
$ pip --version

```

## Configurando o Robot Framework:
>Para realizar testes automatizados usando o Robot Framework é necessário realizar alguns procedimentos via pip para preparar seu ambiente para testes, portanto siga os seguintes passos: 
>Execute o comando
```
$ pip install robotframework
```
>E verifique se a instalação ocorreu corretamente:
```
$ robot --version
```
## Passo a passo para a instalação das bibliotecas:
>É necessário realizar a instalação das bibliotecas abaixo para execução dos testes em RobotFramework, execute os seguintes comandos via pip: 
```
$ pip install robotframework-seleniumlibrary
$ pip install robotframework-faker
```
## Execução do projeto
>Para executar os scripts de teste, insira o comando abaixo via terminal estando dentro do diretório raiz do projeto:
```
$ robot test_steps/
```