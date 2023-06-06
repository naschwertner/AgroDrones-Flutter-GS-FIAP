import 'package:flutter/material.dart';

import 'main.dart';

class historico extends StatelessWidget {
  const historico({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'historico',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 35, 125, 71)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Histórico de Imagens Capturadas'),
    );
  }
}
