import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/components/data.dart';
import 'package:shopping/intropage.dart';

void main() {
  runApp(myaap());
}

class myaap extends StatelessWidget {
  const myaap({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Char(),
      builder: (context, child) => const MaterialApp(home: Intropage()),
    );
  }
}
