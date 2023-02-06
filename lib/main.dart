import 'package:flutter/material.dart';
import 'package:flutter_traveller_app/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
    ),
  );
}
