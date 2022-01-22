import 'package:flutter/material.dart';
import 'package:flutter30days/widgets/drawer.dart';
// import 'package:flutter30days/main.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30; //, week = 7, year = 2;
  final String name = "Ejaz";
  final double d = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Catalog App")),
      ),
      body: Center(
          child: Text("Welcome to $days Days of Flutter Developed by $name")),
      drawer: MyDrawer(),
    );
  }
}
