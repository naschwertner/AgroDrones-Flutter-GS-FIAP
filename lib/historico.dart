import 'main.dart';

import 'package:flutter/material.dart';

class Historico extends StatelessWidget {
  Historico({Key? key}) : super(key: key);

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
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/03/33/81/09/500_F_333810946_myQ5U5TlGfOfESvI9FrKEf8ELUcWdNCG.jpg',
      'id': 'ID195515435617',
      'name': 'Drone 3'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/98/24/22/1000_F_298242226_jw0LilQmIALroH1LQScpIk9cjcLsFcbp.jpg',
      'id': 'ID195515435617',
      'name': 'Drone 4'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/42/56/26/500_F_242562684_5VC68EHElXConqPjRazxCGuJk6btgmec.jpg',
      'id': 'ID195515435617',
      'name': 'Drone 5'
    },
    {
      'url':
          'https://t4.ftcdn.net/jpg/02/44/49/75/360_F_244497513_pj9qN7NuQHYdAEMtLOEvHAjXZlv6bTbG.webp',
      'id': 'ID195515435617',
      'name': 'Drone 6'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico das Imagens Capturadas'),
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
