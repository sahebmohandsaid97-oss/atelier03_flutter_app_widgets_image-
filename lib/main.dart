import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets de base',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Atelier 3'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Bienvenue dans cet atelier !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://picsum.photos/200',
                width: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Découvrez comment construire une interface simple et élégante.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Tu as cliqué sur Commencer.");
                    },
                    child: const Text('Commencer'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print("Tu as cliqué sur En savoir plus.");
                    },
                    child: const Text('En savoir plus'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}