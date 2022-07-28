import 'package:flutter/material.dart';
import 'package:ujianakhirsemester/data.dart';

class DataCard extends StatelessWidget {
  final Data data;

  const DataCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(0, 7))
          ],
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 131, 243, 137)),
      child: Column(
        children: [
          //  Row(
//children: [
          //   const SizedBox(
          //   width: 50,
          //    child: Text('Post Id',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       )),
          // ),
          //  SizedBox(width: 220, child: Text(': ${data.postId}'))
          // ],
          //),
          Row(
            children: [
              const SizedBox(
                width: 50,
                child: Text('Id',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              SizedBox(
                  width: 220,
                  child: Text(
                    ': ${data.id}',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
                child: Text('Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              SizedBox(
                  width: 220,
                  child: Text(
                    ': ${data.name}',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
                child: Text('Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              SizedBox(
                  width: 220,
                  child: Text(
                    ': ${data.email}',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
                child: Text('Body',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              SizedBox(
                  width: 220,
                  child: Text(
                    ': ${data.body}',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
