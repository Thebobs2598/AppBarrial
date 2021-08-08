import 'package:app_barrial_automatas/screens/splash.screen.dart';
import 'package:app_barrial_automatas/shared/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppBarrial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Para ocultar barra de estado
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Lab Móvil 2222',

      /// TODO: show banner only on development
      debugShowCheckedModeBanner: false,

      /// material app theme
      

      initialRoute: SplashScreen.route,

      /// aquí van las páginas existentes, son las rutas a las páginas (pantallas)
      onGenerateRoute: (settings) => buildMaterialPageRoute(settings),
    );
  }
}
