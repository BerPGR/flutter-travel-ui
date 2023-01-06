import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Travel UI',
        theme: ThemeData(
          primaryColor: Color(0xff3ebace),
          accentColor: Color(0xffd8ecf1),
          scaffoldBackgroundColor: Color(0xfff3f5f7),
        ),
        home: HomeScreen());
  }
}
