import 'package:flutter/material.dart';

import 'AnaliseImg.dart';

class VisualizacaoImg extends StatelessWidget {
  VisualizacaoImg({Key? key}) : super(key: key);

  final List<Map<String, String>> imgData = [
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/64/83/16/1000_F_264831691_dRX2OwpVvOW24mben6VIj2q5sHhJA5Ke.jpg',
      'text': 'ID195515435616',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 16" W',
      'analysis':
          'A análise de imagem de solo agrícola foi realizada com base em uma foto capturada por um drone, mostrando uma plantação. A inteligência artificial identificou boas condições de textura e presença de nutrientes no solo, além da ausência de pragas e doenças visíveis. Recomenda-se monitorar a umidade do solo e acompanhar o crescimento da cobertura vegetal para garantir um desenvolvimento saudável.'
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/02/44/49/75/1000_F_244497526_G8VVBifcserH9NMKLwME0LyOXNOemEpt.jpg',
      'text': 'ID195515435623',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 23" W',
      'analysis':
          'Através da análise de uma imagem capturada por um drone em uma plantação, foi possível observar que o solo apresenta uma textura adequada e indícios de nutrientes presentes. Não foram encontradas evidências de pragas ou doenças. Sugere-se monitorar a umidade do solo e o crescimento da cobertura vegetal para manter o desenvolvimento saudável das plantas.'
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/03/33/81/09/500_F_333810946_myQ5U5TlGfOfESvI9FrKEf8ELUcWdNCG.jpg',
      'text': 'ID195515435630',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 30" W',
      'analysis':
          'Com base em uma análise de imagem de solo agrícola obtida por um drone, verificou-se que o solo apresenta uma textura favorável e indícios de nutrientes. Não foram identificadas pragas ou doenças aparentes. Recomenda-se monitorar a umidade do solo e acompanhar o crescimento da cobertura vegetal para garantir um bom desenvolvimento da plantação.'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/98/24/22/1000_F_298242226_jw0LilQmIALroH1LQScpIk9cjcLsFcbp.jpg',
      'text': 'ID195515435647',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 47" W',
      'analysis':
          'Utilizando a análise de uma imagem de solo agrícola capturada por um drone, constatou-se que o solo exibe uma textura adequada e indícios de nutrientes presentes. Não foram encontrados sinais visíveis de pragas ou doenças. Recomenda-se monitorar a umidade do solo e a evolução da cobertura vegetal para manter a saúde e o crescimento das plantas.'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/42/56/26/500_F_242562684_5VC68EHElXConqPjRazxCGuJk6btgmec.jpg',
      'text': 'ID195515435654',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 54" W',
      'analysis':
          'A partir da análise de uma imagem de solo agrícola obtida por meio de um drone, verificou-se que o solo possui uma textura apropriada e indicações de nutrientes disponíveis. Não foram observadas pragas ou doenças aparentes. Recomenda-se o monitoramento regular da umidade do solo e do desenvolvimento da cobertura vegetal para garantir o sucesso do cultivo.'
    },
    {
      'url':
          'https://t4.ftcdn.net/jpg/02/44/49/75/360_F_244497513_pj9qN7NuQHYdAEMtLOEvHAjXZlv6bTbG.webp',
      'text': 'ID195515435661',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 61" W',
      'analysis':
          'Após analisar uma imagem de solo agrícola capturada por um drone, foi constatado que o solo apresenta uma textura favorável e evidências de nutrientes. Não foram identificadas pragas ou doenças visíveis. Recomenda-se a monitorização da umidade do solo e o acompanhamento do crescimento da cobertura vegetal para garantir um ambiente propício ao cultivo saudável.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualização de Imagens'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            childAspectRatio: 0.6,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: List.generate(imgData.length, (index) {
              return Column(
                children: [
                  Container(
                    height: 300.0,
                    width: 300.0,
                    child: Image.network(
                      imgData[index]['url']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    imgData[index]['text']!,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    imgData[index]['text2']!,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    imgData[index]['text3']!,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnaliseImg(
                            id: imgData[index]['text']!,
                            imgUrl: imgData[index]['url']!,
                            analysis: imgData[index]['analysis']!,
                          ),
                        ),
                      );
                    },
                    child: Text('Ver análise'),
                  )
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
