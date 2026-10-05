import 'package:flutter_test/flutter_test.dart';

import 'package:receitas_app/main.dart';

void main() {
  testWidgets('volta para a mesma aba após abrir os detalhes',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ReceitasApp());

    // Começa na aba Doces
    expect(find.text('Receitas Doces'), findsOneWidget);

    // Vai para a aba Bebidas
    await tester.tap(find.text('Bebidas'));
    await tester.pumpAndSettle();
    expect(find.text('Receitas Bebidas'), findsOneWidget);

    // Abre um card
    await tester.tap(find.text('Chocolate Quente'));
    await tester.pumpAndSettle();
    expect(find.text('Modo de preparo'), findsOneWidget);

    // Volta pela seta da AppBar
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Receitas Bebidas'), findsOneWidget);
  });

  testWidgets('Drawer abre a tela Sobre', (WidgetTester tester) async {
    await tester.pumpWidget(const ReceitasApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Sobre'));
    await tester.pumpAndSettle();
    expect(find.text('Versão 1.0.0'), findsOneWidget);
  });
}
