/// Modelo que representa uma receita do aplicativo.
class Receita {
  final String id;
  final String titulo;
  final String descricao;
  final List<String> ingredientes;
  final List<String> modoPreparo;
  final String tempo;
  final String rendimento;
  final String emoji;

  const Receita({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.ingredientes,
    required this.modoPreparo,
    required this.tempo,
    required this.rendimento,
    required this.emoji,
  });
}
