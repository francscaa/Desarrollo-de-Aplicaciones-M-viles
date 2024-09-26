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
      ),



      home: Scaffold( //Scaffold es lo más importante
        appBar: AppBar(
          title: const Text('Textos según Material Design'), //Título de la AppBar
        ),


        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            //Titulo H1
            Text(
              'Título Principal (H1)',
              style: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.w300,
                letterSpacing: -1.5,
              ),
            ),

            Text(
              'Título Principal (H2)',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w300,
                letterSpacing: -0.5,
              ),
            ),

            Text(
              'Título Principal (H3)',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),

            Text(
              'Título Principal (H5)',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
