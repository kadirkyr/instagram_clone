import 'package:flutter/material.dart';
import 'package:instagram_clone/views/home_view.dart';

void main(List<String> args) {
  runApp(const MyInstagramApplication());
}

class MyInstagramApplication extends StatelessWidget {
  const MyInstagramApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(centerTitle: false),
          textTheme: const TextTheme(
              headlineSmall: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              labelLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      home: const HomeView(),
    );
  }
}
