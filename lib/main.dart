import 'package:flutter/material.dart';
import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/pages/login_page.dart';
import 'package:flutter30days/utils/routes.dart';
import 'package:flutter30days/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

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

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      //  theme:ThemeData(
      //   primarySwatch: Colors.deepOrange,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   appBarTheme: AppBarTheme(
      //       color: Colors.white,
      //       elevation: 0.0,
      //       iconTheme: IconThemeData(color: Colors.black),
      //       toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
      //       titleTextStyle: Theme.of(context).textTheme.headline6),
      // ),

      // home: const HomePage(),
      initialRoute: MyRoutes.homeRoute, //"/login"
      routes: {
        // "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(), // "/homepage"
        MyRoutes.loginRoute: (context) => const LoginPage(), //"/login"
      },
    );
  }
}
