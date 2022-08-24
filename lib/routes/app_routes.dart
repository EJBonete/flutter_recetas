import 'package:app01/screen/screen.dart';
import 'package:flutter/material.dart';

class AppROutes {
  static const String initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'dashboard': (BuildContext context) => const DashboardScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'loggin': (BuildContext context) => const LogginScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    //  'card': (BuildContext context) => const CardScreen(),
  };

//si la pagina principal no es encontrada salta el ongenerateRouter
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
