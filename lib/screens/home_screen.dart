import 'package:flutter/material.dart';

import '../data/receitas_data.dart';
import '../widgets/app_drawer.dart';
import '../widgets/lista_receitas.dart';

/// Tela principal: AppBar com ícone de menu (Drawer) e abas inferiores
/// para as categorias Doces, Salgadas e Bebidas.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Índice da aba selecionada. Como a HomeScreen continua na pilha do
  // Navigator enquanto a tela de detalhes está aberta, este valor é
  // preservado e o usuário volta exatamente para a aba de onde saiu.
  int _abaSelecionada = 0;

  static const List<String> _titulos = ['Doces', 'Salgadas', 'Bebidas'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas ${_titulos[_abaSelecionada]}'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      drawer: const AppDrawer(),
      // IndexedStack mantém as três abas vivas: a posição da rolagem de
      // cada lista também é preservada ao trocar de aba.
      body: IndexedStack(
        index: _abaSelecionada,
        children: const [
          ListaReceitas(receitas: receitasDoces),
          ListaReceitas(receitas: receitasSalgadas),
          ListaReceitas(receitas: receitasBebidas),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaSelecionada,
        onTap: (indice) => setState(() => _abaSelecionada = indice),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake_outlined),
            activeIcon: Icon(Icons.cake),
            label: 'Doces',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lunch_dining_outlined),
            activeIcon: Icon(Icons.lunch_dining),
            label: 'Salgadas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink_outlined),
            activeIcon: Icon(Icons.local_drink),
            label: 'Bebidas',
          ),
        ],
      ),
    );
  }
}
