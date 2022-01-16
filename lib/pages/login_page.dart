import 'package:flutter/material.dart';
// import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to Login",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "User Name"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                      width: 0,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(160, 35)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text("Login")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
//  print(Text("Welcome Flutter"));
// Center(
//         child: Text(
//           "Login Page",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w900, color: Colors.blue),
//           key: Key("LoginPage"),
//         ),
//       ),

// child: 



