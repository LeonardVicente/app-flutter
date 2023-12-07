import 'package:flutter/material.dart';
import 'package:sgs_app/_comum/cores.dart';
import 'package:sgs_app/modelos/anotacao_modelo.dart';
import 'package:sgs_app/modelos/tela_modelo.dart';

class Tela1 extends StatelessWidget {
  Tela1({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
      id: "01",
      nome: "RQA REFERENTE A PRODUÇÃO",
      treino: "teste",
      comofazer: "paia");

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(id: "001", sentido: "paia", data: "2023-11-27"),
    SentimentoModelo(id: "001", sentido: "paia02", data: "2023-11-28"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 243, 96),
        appBar: AppBar(
          title: Column(children: [
            Text(
              exercicioModelo.nome,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              exercicioModelo.treino,
              style: const TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ]),
          centerTitle: true,
          backgroundColor: MinhasCores.verde_escuro,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("APERTADO O BUTON");
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(172, 255, 255, 255),
              borderRadius: BorderRadius.circular(16)),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Tirar Foto"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Descrição do ocorrido",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(exercicioModelo.comofazer),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Color.fromARGB(0, 0, 0, 0),
                ),
              ),
              const Text(
                "inconformidades:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listaSentimentos.length, (index) {
                  SentimentoModelo sent = listaSentimentos[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(sent.sentido),
                    subtitle: Text(sent.data),
                    leading: const Icon(Icons.double_arrow),
                    trailing: IconButton(
                      icon: Icon(Icons.delete,
                          color: Color.fromARGB(172, 221, 0, 0)),
                      onPressed: () {
                        print("Deletar ${sent.sentido}");
                      },
                    ),
                  );
                }),
              )
            ],
          ),
        ));
  }
}
