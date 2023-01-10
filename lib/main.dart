import 'package:flutter/material.dart';
import 'package:portfolio/pages/HomePage.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
        scaffoldBackgroundColor: const Color(0xFF261A17),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 176, 101, 67),
          ),
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD9B89C),
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD9B89C),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
