import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 35, 125, 71)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'AgroDrones'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Bem-vindo ao AgroDrones!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Informações Gerais:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Sistema de monitoramento de plantações utilizando drones. ',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Plantações Monitoradas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                '- Plantio de milho\n- Plantio de trigo\n- Plantio de soja',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. Saúde das Plantas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Nossas imagens de NDVI (Índice de Vegetação por Diferença Normalizada) mostram que 80% da plantação está em excelente estado de saúde. As áreas restantes apresentam algum grau de estresse, principalmente devido à falta de irrigação e infestação de pragas.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Umidade do Solo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Os sensores do drone detectaram que 20% da área total da plantação tem umidade abaixo do ideal. As áreas afetadas foram marcadas no mapa para uma irrigação mais intensiva.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '3. Infestação de Pragas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Detectamos uma infestação de pragas em 15% da área de plantação. A área afetada é majoritariamente no setor nordeste da fazenda. Recomendamos a aplicação de pesticidas apropriados nestas áreas para controlar a infestação.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
