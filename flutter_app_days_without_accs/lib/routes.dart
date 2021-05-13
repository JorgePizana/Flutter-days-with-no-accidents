import 'package:flutter/material.dart';
import 'package:flutter_app_days_without_accs/screens/accidentsTableRecord/index.dart';
import 'package:flutter_app_days_without_accs/screens/homePage/index.dart';
import 'package:flutter_app_days_without_accs/screens/recordAccident/index.dart';

//const String splashRoute = '/'
const String startRoute = 'home';
const String recordAccRoute = 'record';
const String recordTableRoute = 'tableRecord';

class Router {
  static Route <dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case startRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case recordAccRoute:
        return MaterialPageRoute(builder: (_) => RecordAccScreen());
      case recordTableRoute:
        return MaterialPageRoute(builder: (_) => RecordTableScreen());

      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
          ),
        );

    }
  }
}