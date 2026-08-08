import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/components/anime.dart';
import 'package:shopping/components/data.dart';

import 'package:shopping/shoetile.dart' show shoetile;

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  void additemtouser(Data data) {
    // add the card on list
    Provider.of<Char>(context, listen: false).additems(data);
    // notify user that the item is added sussesfully
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("SuccessFully added "),
        content: Text("check in your card"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Char>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //name
                    Text("Search by names... "),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          // this is the head lines for just show
          Text(
            "Even if the world forgets us, we will remember who we were.",
            style: TextStyle(color: Colors.grey),
            textAlign: .center,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks  🔥",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("see All", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                Data data = value.getcharshop()[index];

                return shoetile(data: data, onTap: () => additemtouser(data));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
