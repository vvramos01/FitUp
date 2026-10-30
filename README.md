# FitUp

Um aplicativo mobile moderno desenvolvido em Flutter para acompanhamento de rotinas de treinos, saúde e bem-estar.

# Sobre o Projeto

O FitUp é uma aplicação mobile focada em saúde e fitness, desenvolvida com o ecossistema Flutter / Dart. Seu objetivo é oferecer aos usuários uma interface simples, intuitiva e eficiente para gerenciar seus treinos e acompanhar sua evolução física.

Este repositório contém o código-fonte da aplicação, preparado para execução e build na plataforma Android (com suporte expansível para iOS).

# Tecnologias Utilizadas

O projeto utiliza as seguintes tecnologias e ferramentas:

Flutter (Framework UI Multiplataforma)

Dart (Linguagem de Programação)

Android SDK / Kotlin (Suporte nativo Android)

Material Design (Linguagem visual da interface)

# Estrutura do Projeto

A organização dos diretórios do projeto segue a estrutura padrão do Flutter:

FitUp/
├── android/               # Configurações nativas e scripts de build para Android
│   ├── app/
│   │   ├── build.gradle.kts
│   │   └── src/
│   │       └── main/
│   │           ├── kotlin/com/example/fitup/MainActivity.kt
│   │           └── AndroidManifest.xml
│   └── build.gradle.kts
├── lib/                   # Código-fonte principal da aplicação em Dart
│   └── main.dart          # Ponto de entrada (Entrypoint) do aplicativo
├── test/                  # Testes unitários e de widgets
│   └── widget_test.dart
├── .gitignore             # Arquivos ignorados pelo Git
├── analysis_options.yaml  # Regras de linter e análise de código Dart
├── pubspec.yaml           # Gerenciador de dependências e assets do Flutter
└── README.md              # Documentação do projeto


# Pré-requisitos

Antes de iniciar, certifique-se de ter as seguintes ferramentas instaladas em seu ambiente de desenvolvimento:

Flutter SDK (versão 3.x ou superior)

Dart SDK (incluído no Flutter SDK)

Android Studio com o Android Emulator ou um dispositivo físico configurado para depuração USB

Git

Para checar se o ambiente Flutter está configurado corretamente, execute no terminal:

flutter doctor


# Instalação e Execução

Siga os passos abaixo para clonar e rodar o projeto em sua máquina local:

Clonar o repositório:

git clone https://github.com/seu-usuario/FitUp.git


Acessar o diretório do projeto:

cd FitUp/FitUp


Instalar as dependências:

flutter pub get


Executar a aplicação:

Certifique-se de ter um emulador rodando ou um dispositivo físico conectado.

flutter run


# Testes e Qualidade de Código

Para garantir a qualidade e a padronização do código:

Análise estática (Linter):

flutter analyze


Executar testes unitários e de widgets:

flutter test


# Como Contribuir

Contribuições são super bem-vindas! Se você deseja colaborar com o projeto:

Faça um Fork do repositório.

Crie uma branch para sua funcionalidade (git checkout -b feature/MinhaNovaFeature).

Faça os Commits das suas alterações (git commit -m 'feat: adiciona nova funcionalidade').

Envie as alterações para a sua branch (git push origin feature/MinhaNovaFeature).

Abra um Pull Request.
