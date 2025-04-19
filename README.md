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

4) Execute o projeto:

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

## Como foi feito a atividade

1) Inicialização do Projeto:

•Criar um novo projeto no FlutLab.io (ou localmente via flutter create nome_do_app).

•Remover o conteúdo padrão do main.dart e começar a estrutura do zero.

•Criar a estrutura básica do app com MaterialApp.

2️) Integração com Firebase:

•Criar um projeto no Firebase Console.

•Habilitar Firebase Authentication com o método de email e senha.

•Usar o FlutterFire CLI ou configurar manualmente:

    firebase_core
    
    firebase_auth

Exemplo de dependências no pubspec.yaml

              dependencies:
                flutter:
                  sdk: flutter
                firebase_core: ^2.0.0
                firebase_auth: ^4.0.0
                
• Rodar:
        
    flutter pub get

•Inicializar o Firebase no projeto:

        void main() async {
          WidgetsFlutterBinding.ensureInitialized();
          await Firebase.initializeApp();
          runApp(MyApp());
        }
3️) Telas de Autenticação

•Criar duas páginas:

•LoginPage: tela com formulário para email e senha.

•RegisterPage: para criar uma conta nova.

•Implementar login e cadastro com métodos do firebase_auth.

4️)  Consumo de API (PokéAPI)

Após o login, o usuário é redirecionado para a tela principal.

Criar uma função para fazer fetch da API:

    final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu'));

•Mostrar:

•Imagem do Pokémon

•Nome

•Tipo

•Altura / peso

5️) Lista de Pokémons

•Utilizar ListView.builder para renderizar uma lista com vários Pokémons.

•Criar rota dinâmica (por exemplo: /pokemon/pikachu) para abrir detalhes do Pokémon clicado.

6️) Rotas e Navegação

•Usar Navigator.push para navegar entre:

•Login → Home

•Home → Detalhes do Pokémon

7️) Logout

•Adicionar botão de logout no AppBar com:

    FirebaseAuth.instance.signOut();

Resultado:

![Image](https://github.com/user-attachments/assets/59d0e88c-f5e5-4cd5-af7c-62ce0a4c1854)

![Image](https://github.com/user-attachments/assets/b2bf92eb-fcb0-43c7-811b-d7b11d0699d0)

![Image](https://github.com/user-attachments/assets/93add576-7c1a-405f-aa6c-3fa0d747cc5e)

![Image](https://github.com/user-attachments/assets/0eeaae15-43a2-45bc-a6f0-df464055bf56)

![Image](https://github.com/user-attachments/assets/c1d1c87b-aac6-460a-a6f8-ff1e3695aaa2)

![Image](https://github.com/user-attachments/assets/742b8012-c34c-4870-b73c-f0e81a3e6865)

 Link para testar a versão web:

 https://preview.flutlab.io/lucas_roque2/pokedex/
