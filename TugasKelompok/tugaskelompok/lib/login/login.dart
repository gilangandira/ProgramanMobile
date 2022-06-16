import 'package:flutter/material.dart';
import 'package:tugaskelompok/Menu/home_page.dart';
import 'package:tugaskelompok/login/register.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Backround
            Container(
              child: Column(
                children: [
                  Container(
                    height: size.height / 2,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.white, Color(0xffD4E0F5)],
                          center: Alignment.topLeft,
                          radius: 1,
                          stops: [0.5, 1]),
                    ),
                  ),
                  Container(
                    height: size.height / 2,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.white, Color(0xffD4E0F5)],
                          center: Alignment.bottomRight,
                          radius: 1,
                          stops: [0.5, 1]),
                    ),
                  ),
                ],
              ),
            ),

            //
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 36, 20, 0),
              child: Column(
                children: [
                  ClipRect(
                    child: Image(image: AssetImage('assets/images/logo.png')),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 42, bottom: 29),
                      child: Text(
                        "Selamat datang penjelajah dunia",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 4, bottom: 16),
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: 'Masukan Alamat Email',
                          labelStyle:
                              TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text('Password',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(top: 4, bottom: 16),
                    height: 44,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: 'Masukan Password'),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color:
                                  (click == true) ? Colors.blue : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 115, 0),
                        height: 20,
                        child: Text(
                          "Ingat Saya",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 20,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Lupa Password ?",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  decoration: TextDecoration.underline),
                            )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32, bottom: 16),
                    child: SizedBox(
                        height: 44,
                        width: 335,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.blue,
                              shape: StadiumBorder(),
                              shadowColor: Colors.black,
                            ),
                            child: Text(
                              "MASUK",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20),
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.center,
                    child: Text(
                      "Atau Masuk dengan",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/google.png')),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/facebook.png')),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            InkWell(
                              onTap: (() {}),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/twitter.png')),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 96),
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Text("Belum punya akun ?"),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return register();
                            }));
                          },
                          child: Container(
                            child: Text(
                              "Buat akun",
                              style: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
