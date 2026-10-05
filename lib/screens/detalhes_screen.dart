import 'package:flutter/material.dart';

import '../data/favoritos.dart';
import '../models/receita.dart';

/// Tela de detalhes: título, descrição, ingredientes e modo de preparo.
/// A seta de voltar da AppBar é criada automaticamente pelo Scaffold,
/// e o botão "voltar" do aparelho também retorna à aba de origem.
class DetalhesScreen extends StatelessWidget {
  final Receita receita;

  const DetalhesScreen({super.key, required this.receita});

  @override
  Widget build(BuildContext context) {
    final texto = Theme.of(context).textTheme;
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(receita.titulo),
        backgroundColor: cores.primaryContainer,
        actions: [
          ValueListenableBuilder<Set<String>>(
            valueListenable: Favoritos.instancia,
            builder: (context, favoritos, _) {
              final favorito = favoritos.contains(receita.id);
              return IconButton(
                tooltip: favorito
                    ? 'Remover dos favoritos'
                    : 'Adicionar aos favoritos',
                icon: Icon(
                  favorito ? Icons.favorite : Icons.favorite_border,
                  color: favorito ? Colors.red : null,
                ),
                onPressed: () => Favoritos.instancia.alternar(receita.id),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Text(receita.emoji, style: const TextStyle(fontSize: 72)),
          ),
          const SizedBox(height: 12),
          Text(
            receita.titulo,
            textAlign: TextAlign.center,
            style: texto.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                avatar: const Icon(Icons.schedule, size: 18),
                label: Text(receita.tempo),
              ),
              const SizedBox(width: 8),
              Chip(
                avatar: const Icon(Icons.restaurant, size: 18),
                label: Text(receita.rendimento),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Descrição
          Text(receita.descricao, style: texto.bodyLarge),
          const SizedBox(height: 24),

          // Ingredientes
          const _Secao(titulo: 'Ingredientes', icone: Icons.shopping_basket),
          ...receita.ingredientes.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check_circle_outline,
                      size: 20, color: cores.primary),
                  const SizedBox(width: 8),
                  Expanded(child: Text(item, style: texto.bodyLarge)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Modo de preparo
          const _Secao(titulo: 'Modo de preparo', icone: Icons.menu_book),
          ...receita.modoPreparo.asMap().entries.map(
                (passo) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: cores.primary,
                        child: Text(
                          '${passo.key + 1}',
                          style: TextStyle(
                            fontSize: 13,
                            color: cores.onPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(passo.value, style: texto.bodyLarge),
                      ),
                    ],
                  ),
                ),
              ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _Secao extends StatelessWidget {
  final String titulo;
  final IconData icone;

  const _Secao({required this.titulo, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icone, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 8),
          Text(
            titulo,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
