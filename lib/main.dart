import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/pages/home_page.dart';
import 'package:shoes_ecommerce/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: themeApp,
      home: const HomePage(),
    );
  }
}
