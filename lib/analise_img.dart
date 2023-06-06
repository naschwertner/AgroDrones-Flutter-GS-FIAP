import 'package:flutter/material.dart';

import 'main.dart';

class analise_img extends StatelessWidget {
  const analise_img({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'analise_img',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 35, 125, 71)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Analise de Imagens'),
    );
  }
}
