import 'package:flutter/material.dart';
import 'package:pertemuan3_slice/pages/get-started-page.dart';
import 'package:pertemuan3_slice/pages/halaman3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: Halaman3 ()
    );
  }
}
