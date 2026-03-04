import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


//custom theme colors
const Color lightPink = Color(0xFFFADADD);
const Color cream = Color(0xFFFFF5E6);
const Color brown = Color(0xFF6B4F3A);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: lightPink,
        appBarTheme: const AppBarTheme(
          backgroundColor: brown,
          foregroundColor: lightPink,
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: brown),
          headlineSmall: TextStyle(color: brown),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: lightPink,
          surface: cream,
        ),
      ),
      home: const HomeScreen(), //calling homescreen class for whole page
    );
  }
}
