import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferencias.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static String routeName = 'home';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    String gender = '';

    if(Preferences.gender == 1){
        gender = 'Masculino';
    } else {
        gender = 'Femenino';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMode: ${Preferences.isDarkMode} '),
          const Divider(),

          // Text('Genero: ${Preferences.gender} '), para mostrar el valor del gender en int
          Text('Genero: $gender'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          const Divider()
        ],
      )
    );
  }
}