import 'package:flutter/material.dart';

class AnaliseImg extends StatelessWidget {
  final String id;

  AnaliseImg({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análise de Imagem: $id'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: Center(child: Text('Análise da imagem com ID: $id')),
    );
  }
}
