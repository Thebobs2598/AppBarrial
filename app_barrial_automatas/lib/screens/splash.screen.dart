import 'dart:async';

import 'package:app_barrial_automatas/screens/login.screen.dart';
import 'package:app_barrial_automatas/shared/themes/colors.dart';
import 'package:app_barrial_automatas/shared/themes/textTheme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => _createRoute(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      /// define a color for all page since it is a single color page
      backgroundColor: ColorsApp.backgroundBlack,

      /// creando pantalla introductoria
      body: GestureDetector(
        onTap: () => _createRoute(context),
        child: Stack(
          children: [
            //llamando al widget del arco

            //llamando al cuerpo
            _introductionBody(size),
          ],
        ),
      ),
    );
  }

  _createRoute(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return LoginScreen();
        },
        transitionDuration: Duration(seconds: 5),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // var begin = Offset(0.0, 1.0);
          // var end = Offset.zero;
          // var curve = Curves.easeInQuart;

          // var tween =
          //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          // return SlideTransition(
          //   position: animation.drive(tween),
          //   child: child,
          // );
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}

_introductionBody(Size size) {
  //Creando el Scroll
  
  return Column(children: [
    
    SizedBox(height: size.height * 0.03),
    //llamando el logo introductorio
    _logoIntro(size),
    //creando el espaciado necesario
    SizedBox(height: size.height * 0.06),
    //llamando el logo UTPL pantalla inicial
    
  
        
    Text('app emergencias barriales'.toUpperCase(),
        style:
            bebasNeueFont.headline2?.apply(fontSizeFactor: size.height * 0.00065)),
  ]);
}

 _logoIntro(Size size) {
    return Container(
      //largo y ancho del logo dentro
      
      width: double.infinity,
      height: size.height * 0.45,
      child: Image(
        width: 300,
        height: 300,
        image: AssetImage(
          'assets/logos/logoAtukKuri.png',
        ),
        filterQuality: FilterQuality.high,
      ),
      padding: EdgeInsets.only(
        top: size.height * 0.04,
        
      ),
    );
  }
