import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Olave Cruz Cesar Daniel',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Text('21308051280458',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithCaption(
                      icon: Icons.home, caption: 'Inicio', color: Colors.blue),
                  IconWithCaption(
                      icon: Icons.search,
                      caption: 'Buscar',
                      color: Colors.green),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithCaption(
                      icon: Icons.settings,
                      caption: 'Configuración',
                      color: Colors.orange),
                  IconWithCaption(
                      icon: Icons.person,
                      caption: 'Perfil',
                      color: Colors.purple),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithCaption extends StatelessWidget {
  final IconData icon;
  final String caption;
  final Color color;

  IconWithCaption(
      {required this.icon, required this.caption, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: color),
        SizedBox(height: 8),
        Text(caption),
      ],
    );
  }
}
