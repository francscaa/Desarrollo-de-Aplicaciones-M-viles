import 'package:flutter/material.dart';

void main() { 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 128, 2, 120), //Color de la AppBar azul
          foregroundColor: Colors.white, //Color del texto en la AppBar blanco
        ),
      ),



      home: Scaffold( //Scaffold es lo más importante
        appBar: AppBar(
          leading: const Icon(Icons.menu), //Ícono de menú (LEADING = Lo primero que sale a la izquierda)
          title: const Text('Diagramación'),
          actions: const [ //(ACTIONs = se van automático a la derecha)
            Icon(Icons.more_vert), //Ícono "more vert"
          ],
        ), //AppBar


        body: ListView( //Usamos ListView en lugar de SingleChildScrollView. Renderiza solo lo que se ve en pantalla, es más rápido.

            children: [

              Container(
                height: 570.0, //Altura de 148 pixeles
                width: double.infinity, //Pcupa todo el ancho disponible
                color: Colors.grey, //Color de fondo gris
                child: const Text('Tamaño card'), //Texto dentro del primer Container
              ), //Container

              const SizedBox(height: 12.0), //Espacio de 12 pixeles entre los containers
              Container(
                height: 148.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: Colors.blue, //Color de fondo azul
                child: const Text('Tamaño ítem lista'), //Texto dentro del segundo Container
              ),

              const SizedBox(height: 12.0), //Espacio de 12 pixeles entre los containers
              Container(
                height: 148.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: Colors.blue, //Color de fondo azul
                child: const Text('Tamaño ítem lista'), //Texto dentro del segundo Container
              ),

              const SizedBox(height: 12.0), //Espacio de 12 pixeles entre los containers
              Container(
                height: 148.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: Colors.blue, //Color de fondo azul
                child: const Text('Tamaño ítem lista'), //Texto dentro del segundo Container
              ),
            ],
        ),
      ),
    );
  } 
}
