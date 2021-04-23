import 'package:flutter/material.dart';

class Start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
              child: MaterialApp(
                  title: "Anda Recicla",
                  theme: ThemeData(
                      primarySwatch: Colors.green,
                      primaryColor: Color.fromARGB(255, 0,128,0)
                  ),
                  debugShowCheckedModeBanner: false,
              );
          }
  }