import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping/components/anime.dart';

import 'package:shopping/shoetile.dart' show shoetile;

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    // List picks = [
    //   data(
    //     discription: "I will not give up",
    //     image: "assets/logo (7).png",
    //     name: "Naruto Uzumaki",
    //     price: "777k",
    //   ),
    //   data(
    //     discription: "kame hame haaaa",
    //     image: "assets/logo (4).png",
    //     name: "Son Goku",
    //     price: "872k",
    //   ),
    //   data(
    //     discription: "Its hero time ",
    //     image: "assets/logo (2).png",
    //     name: "Ben 10",
    //     price: "999+",
    //   ),
    //   data(
    //     discription: "Jujutsu kaisen",
    //     image: "assets/logo (5).png",
    //     name: "Gojo Satoro students",
    //     price: "597k",
    //   ),
    // ];
    return Column(
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
            itemCount: 4,
            itemBuilder: (Context, index) {
              Data data = Data(
                discription: "kame hame haa ",
                image: "assets/logo (4).png",
                name: "son Goku",
                price: "778",
              );

              return shoetile(data: data);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
