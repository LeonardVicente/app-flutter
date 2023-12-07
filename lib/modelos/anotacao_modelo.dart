class SentimentoModelo {
  String id;
  String sentido;
  String data;

  SentimentoModelo(
      {required this.id, required this.sentido, required this.data});
  SentimentoModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        sentido = map["sentido"],
        data = map["data"];

  Map<String, dynamic> topMap() {
    return {
      "id": id,
      "sentido": sentido,
      "data": data,
    };
  }
}
