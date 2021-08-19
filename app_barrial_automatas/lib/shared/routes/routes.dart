import 'package:app_barrial_automatas/screens/HomeScreen.dart';
import 'package:app_barrial_automatas/screens/chat.dart';
import 'package:app_barrial_automatas/screens/login.screen.dart';
import 'package:app_barrial_automatas/screens/splash.screen.dart';
import 'package:flutter/material.dart';

MaterialPageRoute<dynamic> buildMaterialPageRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      switch (settings.name) {
        case SplashScreen.route:
          return SplashScreen();
        case LoginScreen.route:
          return LoginScreen(); 
        case HomeScreen.route:
          return HomeScreen();  
        case Chat.route:
          return Chat();   
        default:
          return SplashScreen();
      }
    },
  );
}
