# Criando uma aplicação Flutter com API e Firebase

Aplicativo mobile desenvolvido em Flutter com autenticação via Firebase Auth e consumo da PokéAPI, permitindo que o usuário se cadastre, faça login e visualize uma lista de Pokémon com busca e detalhes de cada um.

## Funcionalidades

•Cadastro e Login de usuários via Firebase Authentication

•Tela de login e tela de registro com validação de campos

•Busca por Pokémon com integração à PokéAPI

•Exibição de lista de Pokémon com nome, tipo, imagem e detalhes

•Detalhamento com altura, peso, tipos e habilidades

•Integração com Firebase para autenticação

•Interface personalizada com animações, cores temáticas e fontes Google Fonts

## Como Executar:

1) Clone o repositório

git clone https://github.com/seu-usuario/pokedex-flutter.git

cd pokedex-flutter

2) Instale as dependências:

flutter pub get

3) Configure o Firebase:

•Acesse https://console.firebase.google.com

•Crie um novo projeto

•Registre o app (Android/iOS/Web)

•Baixe o arquivo google-services.json (Android) ou firebase_options.dart (Web)

•Coloque no diretório correto (como descrito no PDF)

•Habilite o método de autenticação por Email/Senha

Execute o projeto:

flutter run(Ou selecione Web ou Dispositivo no FlutLab.io e clique em Run)

## Tecnologias Utilizadas

•Flutter

•Dart

•Firebase Auth

•Firebase Core

•Google Fonts

•PokéAPI (https://pokeapi.co)

•HTTP Package

•SnackBars para feedback
