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
      theme: ThemeData.light().copyWith(),
      home: Scaffold(
        //Scaffold es lo más importante
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios), //Icono de back arrow
          title: const Center(
            child: Text(
              'francsc.aa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ), //Título de la AppBar
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0), //Margen derecho
              child: Icon(Icons
                  .person_add_alt_1_outlined), //Icono de add person outlined
            ),
          ],
        ),

        body: ListView(
          children: [
            for (var i = 1;
                i <= 20;
                i++) // Lista de 20 items, utilizando un ciclo
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //Alinea texto a la izquierda
                  children: [
                    Text(
                      'Nombre $i',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height: 0.5), //Espacio entre el título y la descripción
                    Text(
                      'usuario$i',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize
                      .min, // Ajusta el tamaño de la fila a su contenido
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, //Color del texto
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4) //Bordes menos curvados
                            ),
                      ),
                      child: const Text('Amigos'),
                    ),
                    const SizedBox(
                        width: 8), // Espacio entre el botón y el ícono
                    const Icon(Icons.more_horiz), // Ícono de more_horiz
                  ],
                ),
              ),
            const SizedBox(height: 12.0), // Espacio entre los items
          ],
        ),
      ),
    );
  }
}
