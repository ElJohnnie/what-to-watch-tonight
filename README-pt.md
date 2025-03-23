# What to watch tonight? Versão 1

![Licença](https://img.shields.io/badge/licença-MIT-blue.svg)
![Versão](https://img.shields.io/badge/versão-Em%20Desenvolvimento-yellow.svg)

Um sistema de recomendação de filmes baseado em aprendizado de máquina. Se usa clustering para agrupar filmes similares com base em seus gêneros e ano de lançamento. A recomendação é feita com base nos clusters mais frequentes dos gêneros especificados e mapeados pelo humor do usuário, dentro da década fornecida.

## Importante

Ao clonar o respositório, é necessário clonar os submódulos, para isso, execute o seguinte comando:

```bash
git submodule update --init --recursive
```

## Índice

<!-- - [Funcionalidades](#funcionalidades) -->
- [Visão Geral](#visão-geral)
- [Instalação](#instalação)
- [Uso](#uso)
- [Contribuição](#contribuição)
- [Licença](#licença)
- [Contato](#contato)

## Visão Geral

### Breve resumo
O sistema é composto por três camadas: uma interface gráfica (front-end) desenvolvida em Next.js, um back-end for front-end (BFF) implementado em Node.js para gerenciar as requisições tanto do front-end quanto de APIs externas, e um serviço de clustering em Python. Nesta versão inicial, o sistema utiliza um dataset com mais de 193.609 filmes catalogados até o ano de 2010.

### Front-end
Desenvolvido em Next.js, o front-end é projetado para renderização no lado do cliente (Client-Side Rendering). Utiliza um Context API para centralizar toda a lógica de negócios. A interface apresenta cinco perguntas sobre humor, gosto e preferências de ano de lançamento. Após responder todas as perguntas, uma requisição é enviada ao BFF, que valida as respostas e busca um resultado apropriado.

### Back-end for Front-end (BFF)
O BFF, desenvolvido em Node.js, expõe rotas HTTP utilizando o framework Express. Além de expor as rotas, o projeto também atua como cliente, utilizando Axios para se comunicar com o serviço de machine learning para buscar um filme. Após a obtenção do filme, uma chamada adicional é feita para a API do TMDB (https://www.themoviedb.org/) para recuperar informações adicionais, como descrição e imagens do filme.

### KMEANS Algorithm
Este sistema de recomendação usa clustering para agrupar filmes similares com base em seus gêneros e ano de lançamento. A recomendação é feita com base nos clusters mais frequentes dos gêneros especificados e mapeados pelo humor do usuário, dentro da década fornecida.

### Diagrama de sequência
![sequence diagram](assets/sequence-diagram.png)

### Algumas considerações
Se tratando de um software ainda em desenvolvimento, há práticas que devem ser corrigidas.

## Instalação

Para instalar o projeto localmente, siga estas etapas:

1. Clone os três repositório:

2. Navegue até os diretórios do projetos:

3. Instale as dependências Node no front e bff e de Python no serviço de ML:

4. Altere as variáveis de ambiente e sete os valores com as necessárias, para conseguir a API Key do TMDB, você pode seguir essa doc: https://developer.themoviedb.org/docs/getting-started
A variávei AUTHORIZATION_TOKEN pode adicionar um valor de sua preferência, mas deve ser do mesmo valor na camada de front quanto bff.

## Uso local

### Requisitos

- Node 18.20.3
- Python 3+

Ao iniciar o projeto seguindo os scripts tanto do front, bff e serviço de ml, acesse o projeto em http://localhost:3000.

## Imagens

<img src="assets/image-2.png" alt="First question" width="500"/>
<img src="assets/image-1.png" alt="alt text" width="500"/>
<img src="assets/image.png" alt="Result" width="500"/>

## Contribuição
Contribuições são bem-vindas! Siga os passos abaixo para contribuir:

Aqui se encontra os submódulos, faça fork da camada que gostaria de contribuir

## Licença
Este projeto está licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.

## Contato
- LinkedIn - https://www.linkedin.com/in/jonatha-follmer/

