import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/components/anime.dart';
import 'package:shopping/components/data.dart';
import 'package:shopping/modules/animetile.dart';

class Storepage extends StatefulWidget {
  const Storepage({super.key});

  @override
  State<Storepage> createState() => _StorepageState();
}

class _StorepageState extends State<Storepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Char>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Card page 🧧",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getuseritems().length,

                itemBuilder: (context, index) {
                  Data data = value.getuseritems()[index];
                  return Animetile(data: data);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
