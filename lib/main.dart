import 'package:flutter/material.dart';
import 'package:zodiac_teller/pages/home_detail_page.dart';
import 'package:zodiac_teller/pages/homepage.dart';
import 'package:zodiac_teller/utils/routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepPurple),
      home: Homepage(),
      routes: {
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.homedetail: (context) => HomeDetail(),
      },
    );
  }
}
