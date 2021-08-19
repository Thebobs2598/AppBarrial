import 'package:app_barrial_automatas/screens/HomeScreen.dart';
import 'package:app_barrial_automatas/shared/themes/colors.dart';
import 'package:app_barrial_automatas/shared/themes/textTheme.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'chat.dart';



class LoginScreen extends StatefulWidget {
  static const String route = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = 'testlogin@gmail.com';
  String _password = 'jossue123';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      
      child: Scaffold(
        backgroundColor: Colors.black,
        ///Stack para apilar el background y luego el cuerpo de la pantalla
        body: _loginBody(size, context),
            ///contiene todo el cuerpo de la pantalla, se envía el size y el context
            ///para poder controlar varios tamaños de dispositivos y controlar
            ///la fuente
            
          
        ),
      );
    
  }
  _loginBody(Size size, BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.08, vertical: 64),
      children: [
        /// app logo
        SizedBox(
            height: 150,
          ),
        /// App Title
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Text(
            'Inicio de sesión'.toUpperCase(),
            style: bebasNeueFont.headline4,
            textAlign: TextAlign.center,
          ),
        ),

        

          /// formulario (falta aplicar backend)
          _loginForm(context),
        ],
      
    );
  }
   ///Formulario de login
  _loginForm(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
          Text(
            'INGRESE EL USUARIO',
            style: bebasNeueFont.headline6.apply(fontSizeFactor: 1.3,color: ColorsApp.primaryColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          _userField(context),
          SizedBox(
            height: 35,
          ),
          Text(
            'INGRESE LA CONTRASEÑA',
            style: bebasNeueFont.headline6.apply(fontSizeFactor: 1.3,color: ColorsApp.primaryColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          _passwordField(context),
          SizedBox(
            height: 15,
          ),
          _loginButton(context),
          _registerText(context),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  TextButton _registerText(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('texto de registro presionado');
      },
      style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.red)),
      child: RichText(
        text: TextSpan(
          text: '¿No tienes cuenta? Regístrate ',
          style: bebasNeueFont.headline6?.apply(fontSizeFactor: 0.7),
          children: [
            TextSpan(
              text: 'aquí',
              style: bebasNeueFont.headline6?.apply(
                  decoration: TextDecoration.underline, fontSizeFactor: 0.7),
            )
          ],
        ),
      ),
    );
  }

  ///campo de usuario
  _userField(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        initialValue: _email,
        onChanged: (value) {
          _email = value;
        },
        cursorColor: Colors.black54,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.apply(color: Colors.black54, fontSizeFactor: 0.8),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'usuario',
          hintStyle: Theme.of(context)
              .textTheme
              .headline5
              ?.apply(color: Colors.black54, fontSizeFactor: 0.8),
        ),
      ),
    );
  }

  ///campo de contraseña
  _passwordField(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        initialValue: _password,
        onChanged: (value) {
          _password = value;
        },
        cursorColor: Colors.black54,
        style: bebasNeueFont.headline5?.apply(
          color: Colors.black54,
          fontSizeFactor: 0.8,
        ),
        textAlign: TextAlign.center,
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'password',
          hintStyle: Theme.of(context)
              .textTheme
              .headline5
              ?.apply(color: Colors.black54, fontSizeFactor: 0.8),
        ),
      ),
    );
  }

  _loginButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width;
    return Container(
      width: buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsApp.primaryColor,
          elevation: 5,
        ),
        onPressed: () => Navigator.of(context).pushReplacementNamed(HomeScreen.route),
         
        child: Text(
          'Ingresar',
          style: bebasNeueFont.headline6,
        ),
      ),
    );
  }
}
