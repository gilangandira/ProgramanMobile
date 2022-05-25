import 'package:flutter/material.dart';
import 'package:utsprogramanmobile/login.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return login();
              }));
            },
            icon: Icon(Icons.logout)),
      ]),
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.7))
                  ]),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              boxShadow: []),
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(0.7))
                          ]),
                          child: Image(
                            image: AssetImage("assets/myimage.jpg"),
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: size.height * 0.05,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.blue.withOpacity(0.3))
                ]),
            child: Center(child: Text('Gilang Andira Pratama')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: size.height * 0.05,
                width: size.width * 0.45,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.8), border: Border.all()),
                child: Center(child: Text('20190801349')),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: size.height * 0.05,
                width: size.width * 0.45,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.8), border: Border.all()),
                child: Center(child: Text('Teknik Informatika')),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: size.height * 0.03,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue.withOpacity(0.8),
                border: Border.all()),
            child: Center(child: Text('gilangandy24@student.esaunggul.ac.id')),
          ),
        ],
      ),
    );
  }
}
