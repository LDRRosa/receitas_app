import 'package:flutter/material.dart';

import '../data/favoritos.dart';

/// Tela informativa de Configurações.
/// Volta para a tela principal pela seta da AppBar ou pelo botão do aparelho.
class ConfiguracoesScreen extends StatelessWidget {
  const ConfiguracoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma'),
            subtitle: Text('Português (Brasil)'),
          ),
          const Divider(height: 1),
          const ListTile(
            leading: Icon(Icons.palette),
            title: Text('Tema'),
            subtitle: Text('Claro — cor principal laranja'),
          ),
          const Divider(height: 1),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações'),
            subtitle: Text('Desativadas'),
          ),
          const Divider(height: 1),
          ValueListenableBuilder<Set<String>>(
            valueListenable: Favoritos.instancia,
            builder: (context, favoritos, _) => ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Receitas favoritas'),
              subtitle: Text('${favoritos.length} receita(s) salva(s)'),
            ),
          ),
          const Divider(height: 1),
          const ListTile(
            leading: Icon(Icons.storage),
            title: Text('Armazenamento'),
            subtitle: Text('Favoritos ficam salvos enquanto o app estiver aberto'),
          ),
        ],
      ),
    );
  }
}
