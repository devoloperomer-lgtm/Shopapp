import 'package:flutter/material.dart';
import 'package:shopping/components/anime.dart';

class shoetile extends StatelessWidget {
  Data data;
  shoetile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //image
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset("assets/logo (4).png"),
          ),

          //discription
          //price and tag
          // add button
        ],
      ),
    );
  }
}
