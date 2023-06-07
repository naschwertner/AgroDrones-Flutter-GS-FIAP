import 'package:flutter/material.dart';

import 'AnaliseImgHistorico.dart';

class Historico extends StatefulWidget {
  Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  List<Map<String, String>> imgData = [
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/64/83/16/1000_F_264831691_dRX2OwpVvOW24mben6VIj2q5sHhJA5Ke.jpg',
      'id': 'ID195515435616',
      'name': 'Drone 1',
      'data': 'Dia 03/04/2023',
      'analysis':
          'A análise de imagem de solo agrícola foi realizada com base em uma foto capturada por um drone, mostrando uma plantação. A inteligência artificial identificou boas condições de textura e presença de nutrientes no solo, além da ausência de pragas e doenças visíveis. Recomenda-se monitorar a umidade do solo e acompanhar o crescimento da cobertura vegetal para garantir um desenvolvimento saudável.'
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/02/44/49/75/1000_F_244497526_G8VVBifcserH9NMKLwME0LyOXNOemEpt.jpg',
      'id': 'ID195515435623',
      'name': 'Drone 2',
      'data': 'Dia 13/06/2023'
    },
    {
      'url':
          'https://as2.ftcdn.net/v2/jpg/03/33/81/09/500_F_333810946_myQ5U5TlGfOfESvI9FrKEf8ELUcWdNCG.jpg',
      'id': 'ID195515435630',
      'name': 'Drone 3',
      'data': 'Dia 06/06/2023'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/98/24/22/1000_F_298242226_jw0LilQmIALroH1LQScpIk9cjcLsFcbp.jpg',
      'id': 'ID195515435647',
      'name': 'Drone 4',
      'data': 'Dia 10/04/2023'
    },
    {
      'url':
          'https://as1.ftcdn.net/v2/jpg/02/42/56/26/500_F_242562684_5VC68EHElXConqPjRazxCGuJk6btgmec.jpg',
      'id': 'ID195515435654',
      'name': 'Drone 5',
      'data': 'Dia 09/05/2023'
    },
    {
      'url':
          'https://t4.ftcdn.net/jpg/02/44/49/75/360_F_244497513_pj9qN7NuQHYdAEMtLOEvHAjXZlv6bTbG.webp',
      'id': 'ID195515435661',
      'name': 'Drone 6',
      'data': 'Dia 27/06/2023'
    },
  ];
  List<Map<String, String>> filteredData = [];
  List<Map<String, String>> dummySearchList = [];

  @override
  void initState() {
    super.initState();
    filteredData = [...imgData];
    dummySearchList = [...imgData];
  }

  void filterSearchResults(String query) {
    if (query.isNotEmpty) {
      List<Map<String, String>> dummyListData = [];
      dummySearchList.forEach((item) {
        if (item['id']!.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredData.clear();
        filteredData.addAll(dummyListData);
      });
    } else {
      setState(() {
        filteredData.clear();
        filteredData.addAll(dummySearchList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico das Imagens Capturadas'),
        backgroundColor: Color.fromARGB(255, 35, 125, 71),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightGreen.shade100,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network(
                                filteredData[index]['url']!,
                                width: 100.0,
                                height: 100.0,
                              ),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      filteredData[index]['id']!,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      filteredData[index]['name']!,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    Text(
                                      filteredData[index]['data']!,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnaliseImgHistorico(
                                                data: filteredData[index])),
                                  );
                                },
                                child: Text('Ver Análise'),
                              ),
                            ],
                          ),
                        )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
