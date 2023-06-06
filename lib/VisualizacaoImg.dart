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
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/02/44/49/75/1000_F_244497526_G8VVBifcserH9NMKLwME0LyOXNOemEpt.jpg',
      'text': 'ID195515435623',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 23" W',
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/03/33/81/09/500_F_333810946_myQ5U5TlGfOfESvI9FrKEf8ELUcWdNCG.jpg',
      'text': 'ID195515435630',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 30" W',
      'ElevatedButton': 'teste'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/98/24/22/1000_F_298242226_jw0LilQmIALroH1LQScpIk9cjcLsFcbp.jpg',
      'text': 'ID195515435647',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 47" W',
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/42/56/26/500_F_242562684_5VC68EHElXConqPjRazxCGuJk6btgmec.jpg',
      'text': 'ID195515435654',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 54" W',
    },
    {
      'url':
          'https://t4.ftcdn.net/jpg/02/44/49/75/360_F_244497513_pj9qN7NuQHYdAEMtLOEvHAjXZlv6bTbG.webp',
      'text': 'ID195515435661',
      'text2': 'Latitude: 19º55 15" S',
      'text3': 'Longitude: 43º56 61" W',
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                      builder: (context) =>
                          AnaliseImg(id: imgData[index]['text']!),
                    ),
                  );
                },
                child: Text('Ver análise'),
              )
            ],
          );
        }),
      ),
    );
  }
}
