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

## Como a navegação atende ao enunciado

- **Abas inferiores**: `BottomNavigationBar` + `IndexedStack` na `HomeScreen`. O `IndexedStack` mantém as três listas vivas, então a troca entre abas é instantânea.
- **Card → Detalhes**: cada `Card` usa `InkWell` com `Navigator.push`, empilhando a `DetalhesScreen` sobre a tela principal.
- **Voltar para a mesma aba**: como a `HomeScreen` permanece na pilha (não é recriada), o índice da aba fica guardado no seu `State`. A seta da AppBar e o botão "voltar" do aparelho fazem `pop` e o usuário reaparece na aba de onde saiu.
- **Drawer**: aberto pelo ícone de menu que o `Scaffold` coloca automaticamente na AppBar. Os itens fecham o Drawer (`Navigator.pop`) e abrem Configurações ou Sobre com `Navigator.push`.
- **Favoritos** (extra): o coração no card e na tela de detalhes marca/desmarca a receita; a contagem aparece em Configurações.
