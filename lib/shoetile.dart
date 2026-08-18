import 'package:flutter/material.dart';
import 'package:shopping/components/anime.dart';

class shoetile extends StatelessWidget {
  final Data data;
  final void Function()? onTap;
  const shoetile({super.key, required this.data, required this.onTap});

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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // padding: EdgeInsets.all(10),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(data.image)),
              ),
            ),
          ),

          //discription
          Text(data.discription, style: TextStyle(fontSize: 18)),
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
                      data.name,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data.price,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // add button
                GestureDetector(
                  onTap: onTap,
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
