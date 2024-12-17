import 'package:flutter/material.dart';
import 'pages/PageOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<MainPage> {
  var currentIndex = 0;

  List<Widget> Pages = [FirstPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Pages[currentIndex]);
  }
}
