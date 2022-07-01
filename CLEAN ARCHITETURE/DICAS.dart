///TDD - Primeiro se escreve os testes e somente depois escreve o código de produção
///
///Primeiro passo: Escreva o teste e faça ele falhar
///Segundo passo: Escreva o código de produção(pode ser dentro do arquivo de testes)
///Terceiro passo: Fazer o refactory, ou seja, copiar o código de produção testado e colar em produção.



///Sempre começa a aplicação pelo Domain(Onde fica a regra de negócio)
///A entidade pode ter uma regra de negócio, sempre busca não ter uma entidade "anêmica", ou seja, deve ter uma lógica nela
///Em Domain temos entities, repositories e usecases
///Em usecases geralmente temos contrato(interface) com sua implementação, e cada regra é separado em pastas
///Dentro de repository só ficam os contratos(interface), onde sua implementação é feita em repositories da camada de Data

///A camada de Data é responsável por tratar os dados(serialização, transformação de dados, busca local, busca em APIs, cache, firebase)
///Repositories só buscam dados, não quer saber de onde. 
///O DTO também é uma entidade, contudo ela serve para fazer o fromJson e ToJson e extends da entidade que quer trazer os dados

///A camada de Presentation é responsável pela interface de usuário
///Geralmente ficam em presentation a pasta controllers(Controlla o fluxo da aplicação, faz a integração da UI com a regra de negócio) e UI(pages, widgets, components)

///Pode-se criar uma cama Core(Common) que será lida por toda a aplicação
///Será utilizado dois packages no projeto Carros para fazer a injeção de dependência automática(Get_It) e Dart Funcional(Dartz)