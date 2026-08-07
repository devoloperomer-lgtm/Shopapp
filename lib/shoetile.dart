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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset("assets/logo (4).png"),
          ),

          //discription
          Text("Kame hame haaaa...", style: TextStyle(fontSize: 18)),
          SizedBox(height: 4),

          //price and tag
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Son Goku",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      "778k",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                // add button
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Icon(color: Colors.white, Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
