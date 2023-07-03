import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.hinttext, required this.valuecontroller});
  String hinttext;
  TextEditingController valuecontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        // controller:pController,
        controller: valuecontroller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: const Color.fromARGB(255, 166, 155, 155),
            filled: true,
            labelText: hinttext,
            hintText: hinttext),
      ),
    );
  }
}
