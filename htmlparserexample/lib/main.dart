import 'package:htmlparserexample/home.dart';
import 'package:flutter/material.dart';
import 'package:htmlparserexample/themes.dart';
import 'package:htmlparserexample/colors.dart';

void main() {
runApp(MyApp());    
  
}

class MyApp extends StatelessWidget {
  final routes = {
    '/': (context) => HomeScreen(),
//    '/simulation': (context) => SimulationPage(),
//    '/form': (context) => FormPage(),
//    '/statements': (context) => StatementsPage(),
//    '/offers': (context) => OffersPage(),
//    '/request': (context) => RequestPage(),
//    '/contacts': (context) => ContactsPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      //theme: CustomTheme.of(context),
      routes: routes,
    );
  }
}