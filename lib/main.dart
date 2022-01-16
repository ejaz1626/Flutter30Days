import 'package:flutter/material.dart';
import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/pages/login_page.dart';
import 'package:flutter30days/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      // home: const HomePage(),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(), // "/homepage"
        MyRoutes.loginRoute: (context) => const LoginPage(), //"/login"
      },
    );
  }
}
