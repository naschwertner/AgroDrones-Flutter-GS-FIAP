import 'package:flutter/material.dart';

class AnaliseImgHistorico extends StatelessWidget {
  final Map<String, String> data;

  AnaliseImgHistorico({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análise de Imagem: ${data['id']}'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              data['url']!,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Análise da imagem com ID: ${data['id']}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(data['analysis']!),
          ],
        ),
      ),
    );
  }
}
