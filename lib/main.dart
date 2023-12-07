import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sgs_app/telas/autenticacao_tela.dart';
import 'package:sgs_app/telas/tela1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AutenticacaoTela(),
    );
  }
}
