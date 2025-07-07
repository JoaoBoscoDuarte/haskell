# Criação de projetos com o stack
- Para criar projetos, utilizaremos a ferramenta stack. Essa ferramenta cria um ambiente isolado
- A primeira compilação do seu projeto pode levar um longo tempo, pois o stack vai efetuar a instalação de um novo compilador (caso necessário).

```bash
stack new primeiro-projeto simple
cd primeiro-projeto
stack setup
stack build
stack exec primeiro-projeto
```
Os dois últimos comandos são referentes a compilação do projeto e execução.

## Stack 
O stack cria a seguinte estrutura de diretório:
- LICENSE: informação sobre a licença de uso do software.
- README.md: informações sobre o projeto em formato Markdown.
- Setup.hs: retrocompatibilidade com o sistema cabal.
- primeiro-projeto.cabal: informações das dependências do projeto. Atualizado automaticamente pelo stack.
- stack.yaml: parâmetros do projeto
- package.yaml: configurações de compilação e dependências de bibliotecas externas.
- src/Main.hs: arquivo principal do projeto.

### Flags de compilador
- Para indicar as flags de compilação que você quer usar no projeto, edite o arquivo nomeprojeto.cabal e na seção executable acrescente a linha: `ghc-options:  flags`

- Um conjunto de flags bastante comum é para ligar as opções RTS, habilitar todos os avisos, permitir multithread e habilitar otimização: `ghc-options:  -rtsopts -Wall -threaded -O2`

### Projeto com múltiplos códigos
Caso seu projeto seja organizado com múltiplos arquivos, será preciso seguir algumas regras:

- O nome do módulo tem que ser o mesmo da composição do diretório e nome do arquivo.
- Deve incluir o nome do módulo no arquivo .cabal incluindo a opção other-modules: Modulo.

        src/Main.hs
        src/Modulo.hs
        src/Util/Modulo2.hs

### Bibliotecas externas
Para incluir bibliotecas externas em seu projeto, acrescente a linha build-depends: biblioteca no seu arquivo .cabal: `build-depends: base, random, mtl`
- Os módulos disponíveis podem ser encontrados no Hackage e no Stackage.
- Para determinar a versão da biblioteca basta escrever a restrição logo após o nome: `base >= 4.7 && < 5.`

### Versão do compilador
- Se você quiser especificar a versão do compilador, edite o arquivo stack.yaml e altere o valor do campos resolver seguindo a numeração em Stackage.
