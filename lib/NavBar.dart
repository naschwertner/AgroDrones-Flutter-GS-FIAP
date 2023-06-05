import 'package:flutter/material.dart';
import 'home.dart';
import 'visualizacao_img.dart';
import 'analise_img.dart';
import 'historico.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('José Carlos'),
              accountEmail: Text('josecarlos@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.network(
                  'https://www.shutterstock.com/image-photo/smiling-mature-man-straw-hat-260nw-2077467265.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                )),
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  'https://blog.climatefieldview.com.br/hubfs/drone%20é%20usado%20no%20monitoramento.jpg',
                ),
                fit: BoxFit.cover,
              ))),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Visualização de imagens'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => visualizacao_img()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('Análise de imagens'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => analise_img()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Histórico'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => historico()),
              );
            },
          ),
        ],
      ),
    );
  }
}
