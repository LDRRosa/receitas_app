# Receitas App (Flutter)

Aplicativo de receitas com navegação por abas inferiores, cards, tela de detalhes e menu lateral (Drawer).

## Como rodar

Esta pasta contém apenas o código Dart (`lib/`) e o `pubspec.yaml`. Para gerar as pastas de plataforma (android, ios, web…), rode dentro da pasta:

```bash
flutter create .
flutter pub get
flutter run
```

## Estrutura

```
lib/
├── main.dart                      # MaterialApp e tema
├── models/receita.dart            # Modelo Receita
├── data/
│   ├── receitas_data.dart         # 3 doces, 3 salgadas, 3 bebidas
│   └── favoritos.dart             # Favoritos em memória (ValueNotifier)
├── screens/
│   ├── home_screen.dart           # AppBar + Drawer + BottomNavigationBar
│   ├── detalhes_screen.dart       # Título, descrição, ingredientes, preparo
│   ├── configuracoes_screen.dart  # Tela informativa
│   └── sobre_screen.dart          # Tela informativa
└── widgets/
    ├── app_drawer.dart            # Menu lateral (Configurações / Sobre)
    ├── lista_receitas.dart        # Lista de cards de uma aba
    └── receita_card.dart          # Card clicável de receita
```
