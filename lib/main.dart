import 'package:coffe_shop/Pages/home_screen.dart';
import 'package:coffe_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => coffeeshop(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Home_Screen(),
            ));
  }
}
