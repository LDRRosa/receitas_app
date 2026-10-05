import 'package:flutter/foundation.dart';

/// Guarda em memória os IDs das receitas favoritas.
/// Os widgets escutam este notifier para atualizar o ícone de coração.
class Favoritos extends ValueNotifier<Set<String>> {
  Favoritos._() : super(<String>{});

  static final Favoritos instancia = Favoritos._();

  bool contem(String id) => value.contains(id);

  void alternar(String id) {
    final novo = Set<String>.from(value);
    if (!novo.remove(id)) {
      novo.add(id);
    }
    value = novo;
  }
}
