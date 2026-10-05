import 'package:flutter/material.dart';

import '../data/favoritos.dart';
import '../models/receita.dart';
import '../screens/detalhes_screen.dart';

/// Card que representa uma receita. Ao ser tocado, abre a tela de detalhes.
class ReceitaCard extends StatelessWidget {
  final Receita receita;

  const ReceitaCard({super.key, required this.receita});

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      clipBehavior: Clip.antiAlias, // faz o efeito de toque respeitar as bordas
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          // push empilha a tela de detalhes sobre a HomeScreen;
          // ao voltar (seta ou botão do aparelho), a aba atual é mantida.
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetalhesScreen(receita: receita),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: cores.secondaryContainer,
                child: Text(receita.emoji, style: const TextStyle(fontSize: 30)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      receita.titulo,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      receita.descricao,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.schedule, size: 16, color: cores.primary),
                        const SizedBox(width: 4),
                        Text(receita.tempo),
                        const SizedBox(width: 16),
                        Icon(Icons.restaurant, size: 16, color: cores.primary),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            receita.rendimento,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
        ),
      ),
    );
  }
}
