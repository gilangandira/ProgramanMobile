import 'package:flutter/material.dart';
import 'package:utsprogramanmobile/login.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
                width: size.width * 0.7,
                child: Image(image: AssetImage('assets/regis.png'))),
            Row(
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
            Row(
              children: [
                Icon(Icons.email),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
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
            Row(
              children: [
                Icon(Icons.key),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: Text("Sign Up"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return login();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
