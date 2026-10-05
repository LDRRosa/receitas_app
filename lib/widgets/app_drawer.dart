import 'package:flutter/material.dart';

import '../screens/configuracoes_screen.dart';
import '../screens/sobre_screen.dart';

/// Menu lateral com as funções gerais do aplicativo.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _abrir(BuildContext context, Widget tela) {
    Navigator.pop(context); // fecha o Drawer antes de abrir a nova tela
    Navigator.push(context, MaterialPageRoute(builder: (_) => tela));
  }

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: cores.primary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.restaurant_menu, size: 48, color: cores.onPrimary),
                const SizedBox(height: 8),
                Text(
                  'Receitas',
                  style: TextStyle(
                    color: cores.onPrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () => _abrir(context, const ConfiguracoesScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Sobre'),
            onTap: () => _abrir(context, const SobreScreen()),
          ),
        ],
      ),
    );
  }
}
