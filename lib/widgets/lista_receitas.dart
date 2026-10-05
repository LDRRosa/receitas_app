import 'package:flutter/material.dart';

import '../models/receita.dart';
import 'receita_card.dart';

/// Lista de receitas exibida dentro de cada aba.
class ListaReceitas extends StatelessWidget {
  final List<Receita> receitas;

  const ListaReceitas({super.key, required this.receitas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: receitas.length,
      itemBuilder: (context, index) => ReceitaCard(receita: receitas[index]),
    );
  }
}
