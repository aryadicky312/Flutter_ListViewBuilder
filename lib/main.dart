import 'package:flutter/material.dart';
import 'package:login_form/home.dart';
import 'package:login_form/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(),
        '/product': (context) => const Product(),
      },
      title: 'Skincare Product App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 15, 92, 209),
          ),
          useMaterial3: true),
      home: const Home(),
    );
  }
}
