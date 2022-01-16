import 'package:flutter/material.dart';
// import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "Welcome to Login $name",
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
                            hintText: "Enter User Name",
                            labelText: "User Name"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Cannot be Empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Cannot be Empty";
                          } else if (value.length < 6) {
                            return "Password Length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                        width: 0,
                      ),
                      Material(
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          splashColor: Colors.green,
                          onTap: () => moveToHome(context),
                          // () async {
                          // setState(() {
                          //   changeButton = true;
                          // });
                          // await Future.delayed(
                          //   Duration(seconds: 1),
                          // );
                          // await Navigator.pushNamed(
                          //     context, MyRoutes.homeRoute);
                          // setState(() {
                          //   changeButton = false;
                          // });
                          // },
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            // decoration: BoxDecoration(
                            //   color: Colors.deepOrange,
                            //   // shape: changeButton
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(changeButton ? 50 : 8),
                            // ),
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 40.0,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                          // AnimatedContainer(
                          //   alignment: Alignment.center,
                          //   duration: Duration(seconds: 1),
                          //   width: changeButton ? 50 : 150,
                          //   height: 50,
                          //   decoration: BoxDecoration(
                          //     // shape: changeButton
                          //     //     ? BoxShape.circle
                          //     //     : BoxShape.rectangle,
                          //     borderRadius: BorderRadius.circular(8),
                          //     color: Colors.deepOrange,
                          //   ),
                          //   child: changeButton
                          //       ? Icon(
                          //           Icons.done,
                          //           color: Colors.white,
                          //           size: 40.0,
                          //         )
                          //       : Text(
                          //           "Login",
                          //           style: TextStyle(
                          //               color: Colors.white,
                          //               fontSize: 18,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          // ),
                        ),
                      ),
                      // ElevatedButton(
                      //     style: TextButton.styleFrom(minimumSize: Size(160, 35)),
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //     },
                      //     child: Text("Login")),
                    ],
                  ),
                )
              ],
            ),
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



