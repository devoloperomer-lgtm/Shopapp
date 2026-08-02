import 'package:flutter/material.dart';
import 'package:shopping/intropage.dart';

void main() {
  runApp(myaap());
}

class myaap extends StatelessWidget {
  const myaap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Intropage());
  }
}
