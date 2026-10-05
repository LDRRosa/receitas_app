import 'package:flutter/material.dart';

/// Tela informativa "Sobre".
/// Volta para a tela principal pela seta da AppBar ou pelo botão do aparelho.
class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texto = Theme.of(context).textTheme;
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        backgroundColor: cores.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu, size: 80, color: cores.primary),
            const SizedBox(height: 16),
            Text('Receitas', style: texto.headlineMedium),
            Text('Versão 1.0.0', style: texto.bodyMedium),
            const SizedBox(height: 24),
            Text(
              'Aplicativo desenvolvido em Flutter para explorar receitas '
              'doces, salgadas e bebidas. Toque em um card para ver a '
              'descrição, os ingredientes e o modo de preparo, e use o '
              'coração para marcar suas favoritas.',
              textAlign: TextAlign.center,
              style: texto.bodyLarge,
            ),
            const SizedBox(height: 24),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recursos de navegação utilizados:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('• BottomNavigationBar para as abas'),
                    Text('• Navigator.push / pop entre telas'),
                    Text('• Drawer para funções gerais'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
