import 'main.dart';

import 'package:flutter/material.dart';

class AnaliseImg extends StatelessWidget {
  AnaliseImg({Key? key}) : super(key: key);

  final List<Map<String, String>> imgData = [
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/64/83/16/1000_F_264831691_dRX2OwpVvOW24mben6VIj2q5sHhJA5Ke.jpg',
      'id': 'ID195515435616',
      'name': 'Drone 1'
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/02/44/49/75/1000_F_244497526_G8VVBifcserH9NMKLwME0LyOXNOemEpt.jpg',
      'id': 'ID195515435617',
      'name': 'Drone 2'
    },
    // adicione mais mapas conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análise de Imagens'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: ListView.builder(
        itemCount: imgData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.network(
                  imgData[index]['url']!,
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imgData[index]['id']!,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      imgData[index]['name']!,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
