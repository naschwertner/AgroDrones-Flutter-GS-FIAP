import 'package:flutter/material.dart';

// Página fictícia para demonstração
class AnaliseImg extends StatelessWidget {
  final String id;
  final String imgUrl;
  final String analysis;

  AnaliseImg(
      {Key? key,
      required this.id,
      required this.imgUrl,
      required this.analysis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análise de Imagem: $id'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Análise da imagem com ID: $id',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(analysis),
          ],
        ),
      ),
    );
  }
}

// A página VisualizacaoImg atualizada
class VisualizacaoImg extends StatelessWidget {
  VisualizacaoImg({Key? key}) : super(key: key);

  // código da VisualizacaoImg anterior...

  @override
  Widget build(BuildContext context) {
    // código da VisualizacaoImg anterior...

    var imgData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualização de Imagens'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(imgData.length, (index) {
          return Column(
            children: [
              // código da VisualizacaoImg anterior...

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnaliseImg(
                        id: imgData[index]['text']!,
                        imgUrl: imgData[index]['url']!,
                        analysis:
                            'Este é um texto de análise fictícia para a imagem com o ID: ${imgData[index]['text']}',
                      ),
                    ),
                  );
                },
                child: Text('Ver análise'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
