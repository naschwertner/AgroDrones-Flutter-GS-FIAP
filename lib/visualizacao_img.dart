import 'package:flutter/material.dart';

import 'main.dart';

class visualizacao_img extends StatelessWidget {
  const visualizacao_img({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'visualizacao_img',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 35, 125, 71)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Visualização de Imagens'),
    );
  }
}
