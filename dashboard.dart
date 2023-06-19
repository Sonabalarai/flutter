import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../result.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// ignore: must_be_immutable
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int count = 0;
  // get child => null;

  // get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            // count.toString(),
            "The value is $count",
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: const Size(200, 35)),
            onPressed: () {
              // log(count.toString());
              //1*****)THIS CODE IS  THE WAY FOR GOINGING NEXT PAGE****
              // Navigator.push(
              //     context,
              //     CupertinoPageRoute(
              //         builder: (context) => const ResultScreen()));

              // Navigator.push(
              //     context,
              //     CupertinoPageRoute(
              //         builder: (context) => const ResultScreen()));

              //2)******THIS CODE IS FOR ADDITION***** on cLICKING BUTTON
              setState(() {
                count++;
              });
            },
            child: Container(
              width: 30,
              height: 35,
              // margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text(
                "Add",
                textAlign: TextAlign.center,
                style: TextStyle(overflow: TextOverflow.visible),
                softWrap: false,
              ),
            ),
          ),

          //3)*****FOR SUBTRACT******
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: const Size(200, 35)),
            onPressed: () {
              setState(() {
                count--;
              });
            },
            child: Container(
              // margin: const EdgeInsets.only(left: 200),
              width: 30,
              height: 35,
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text(
                "Subtract",
                textAlign: TextAlign.center,
                style: TextStyle(overflow: TextOverflow.visible),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(),
    );
  }
}
