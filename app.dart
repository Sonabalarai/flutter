import 'package:app5/simple_interest/simple.dart';
import 'package:flutter/material.dart';

import 'custom.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SimpleInterestScreen(),
      // home: Day10(),
    );
  }
}
