import 'package:flutter/material.dart';
import 'package:flutter_app_days_without_accs/routes.dart' as route;
import 'package:flutter_app_days_without_accs/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Days_with_no_accidents',
      debugShowCheckedModeBanner: false,
      initialRoute: route.startRoute,
      theme: ThemeBuilder.lightTheme,
      onGenerateRoute: route.Router.generateRoute,
    );
  }
}