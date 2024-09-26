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
          backgroundColor: Color.fromARGB(255, 99, 0, 237), //Color de la AppBar azul
          foregroundColor: Colors.white, //Color del texto en la AppBar blanco
        ),
      ),



      home: Scaffold( //Scaffold es lo más importante
        appBar: AppBar(
          leading: const Row( //Ícono de menú (LEADING = Lo primero que sale a la izquierda)
            children: [
              Icon(Icons.menu),
              SizedBox(width: 8), //Espacio entre íconos
              Icon(Icons.circle),
            
            ],
          ), 
          title: const Text(
            'Hola Francisca',
            style: TextStyle(
              fontSize: 30, 
            )
          ),
          actions: const [ //(ACTIONS = se van automático a la derecha)
            Icon(Icons.notifications_on), //Ícono "more vert"
            SizedBox(width: 8),
            Icon(Icons.question_mark),
          ],
        ),

        body: ListView( //Usamos ListView en lugar de SingleChildScrollView. Renderiza solo lo que se ve en pantalla, es más rápido.

            children: [
              Container(
                height: 280.0, //Altura de 148 pixeles
                width: double.infinity, //Pcupa todo el ancho disponible
                color: Colors.white, //Color de fondo gris
                child: const Text('Mi Cuenta'), //Texto dentro del primer Container
              ), //Container

              const SizedBox(height: 32.0), //Espacio de 12 pixeles entre los containers
              
              Container(
                height: 140.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: const Color.fromARGB(255, 72, 28, 149), //Color de fondo azul
                child: const Text('¡Evoluciona a Cuenta Corriente!'), //Texto dentro del segundo Container
              ),

              const SizedBox(height: 40.0), //Espacio de 12 pixeles entre los containers
              
              Container(
                height: 20.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: Colors.white, //Color de fondo azul
                child: const Text('¿Qué quieres hacer hoy?'), //Texto dentro del segundo Container
              ),

              const SizedBox(height: 40.0), //Espacio de 12 pixeles entre los containers
              
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150.0,
                      color:Colors.white,
                      ),
                    ),
                    
                    const SizedBox(width: 8),

                    Expanded(
                    child: Container(
                      height: 150.0,
                      color: Colors.white,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                    child: Container(
                      height: 150.0,
                      color:Colors.white,
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 32.0),

              Container(
                height: 20.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: Colors.white, //Color de fondo azul
                child: const Text('Conoce MACH'), //Texto dentro del segundo Container
              ),

              const SizedBox(height: 40.0),

              Container(
                height: 400.0, //Altura de 148 pixeles
                width: double.infinity, //Ocupa todo el ancho diponible
                color: const Color.fromARGB(255, 0, 238, 228), //Color de fondo azul
                child: const Text('Conoce MACH'), //Texto dentro del segundo Container
              ),


            ],
        ),
      ),
    );
  }
}
