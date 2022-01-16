import 'package:flutter/material.dart';
import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      // home: const HomePage(),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        "/homepage": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
