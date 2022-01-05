// ignore_for_file: prefer_const_constructors

import 'package:cart_app_example/data.dart';
import 'package:cart_app_example/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(name: ''),
      child: Consumer<Data>(builder: (context, state, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cart App Exaple',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: HomePage(),
        );
      }),
    );
  }
}
