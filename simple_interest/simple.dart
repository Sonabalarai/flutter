import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
//  Late will controll the nullable value which might crash our API if not contrlled
  late TextEditingController pController;
  late TextEditingController tController;
  late TextEditingController rController;
  double si = 0;

  @override
  void initState() {
    pController = TextEditingController();
    tController = TextEditingController();
    rController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pController,
                // textCapitalization: TextCapitalization.words,
                // maxLength: 10,

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: const Color.fromARGB(255, 166, 155, 155),
                    filled: true,
                    // labelText: "helo",
                    hintText: "Please Enter Principal"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: tController,
                // textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(hintText: "Please Enter Time"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: rController,
                // textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(hintText: "Please Enter Rate"),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 35)),
                onPressed: () {
                  int p = int.parse(pController.text);
                  int t = int.parse(tController.text);
                  int r = int.parse(rController.text);
                  // log("$pController.text");
                  si = (p * t * r) / 100;
                  setState(() {});
                  log(si.toString());
                },
                child: const Text("Calculate")),
            Text("Principal is ${pController.text}"),
            Text("time is ${tController.text}"),
            Text("rate is ${rController.text}%"),
            Text("simple interest is = $si"),
            // Text("Total Amount is ${int.parse(pController.text)} + $si "),
          ],
        ),
      ),
      // ElevatedButton.icon(
      //     onPressed: () {},
      //     icon: const Icon(Icons.cabin),
      //     label: const Text("helo")),

      // Icon(Icons.cabin),

      appBar: AppBar(
        title: const Text("simple_interest calculator "),
      ),
    );
  }
}
