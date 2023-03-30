import 'package:flutter/material.dart';
import 'names_page.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 63, 95, 110),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 63, 95, 110) 
        )
      ),
      debugShowCheckedModeBanner: false,
      home: NamesPage(),
    );
  }
}