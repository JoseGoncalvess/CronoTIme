import 'package:crono_time/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          primaryColor: const Color.fromARGB(255, 255, 208, 40),
          primaryColorDark: const Color.fromARGB(255, 31, 31, 31)),
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
