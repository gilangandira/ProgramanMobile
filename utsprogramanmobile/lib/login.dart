import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:utsprogramanmobile/main.dart';
import 'package:utsprogramanmobile/mainpage.dart';
import 'package:utsprogramanmobile/register.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 11, 106, 184)),
            ),
            Container(
              width: size.width * 0.7,
              child: Image(image: AssetImage('assets/register.png')),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Icon(Icons.switch_account),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Icon(Icons.key),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return mainpage();
                      }));
                    },
                  ),
                  ElevatedButton(
                    child: Text("Sign Up"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return register();
                      }));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
