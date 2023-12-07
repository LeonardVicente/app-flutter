class ExercicioModelo {
  String id;
  String nome;
  String treino;
  String comofazer;

  String? urlImagem;

  ExercicioModelo({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comofazer,
  });

  ExercicioModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        nome = map["nome"],
        treino = map["treino"],
        comofazer = map["comofazer"],
        urlImagem = map["urlImagem"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "treino": treino,
      "comofazer": comofazer,
      "urlImagem": urlImagem,
    };
  }
}
