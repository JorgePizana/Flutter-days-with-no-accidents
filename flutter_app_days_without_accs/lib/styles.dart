import 'package:flutter/material.dart';

class ThemeBuilder {
  ThemeBuilder._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        //Appbar titles
        color: Colors.black,
        fontFamily: 'Montserrat',
      ),
      headline5: TextStyle(
          //Big title
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20),
      headline4: TextStyle(
          //Big Title in red/orange
          color: Color.fromARGB(255, 201, 73, 85),
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          fontSize: 20),
      headline3: TextStyle(
        //For Text fields
        fontFamily: 'Montserrat',
        color: Colors.grey[800],
        fontSize: 15,
      ),
      headline2: TextStyle(
        //Home screen text
        fontFamily: 'Montserrat',
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    cardTheme: CardTheme(
      //Card theme
      color: Colors.white,
      shadowColor: Colors.grey[400].withOpacity(.6),
    ),
    iconTheme: IconThemeData(
      color: Colors.grey,
    ),
    tabBarTheme: TabBarTheme(
      //Possibly For under bar
      labelColor: Color.fromARGB(255, 201, 73, 85),
      unselectedLabelColor: Colors.grey[400],
    ),
    buttonColor: Color.fromARGB(255, 201, 73, 85),
  );


  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.grey,
  );
}
