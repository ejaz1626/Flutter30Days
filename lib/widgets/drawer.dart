import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter30days/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                // margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Muhammad Ejaz",
                      style: TextStyle(color: Colors.white),
                    ),
                    accountEmail: Text(
                      "flutter30days@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                    // currentAccountPicture: Image.asset("assets/images/login_image.png"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/login_image.png"),
                    ))),
            ListTile(
              onTap: () =>
                  Navigator.popAndPushNamed(context, MyRoutes.loginRoute),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
