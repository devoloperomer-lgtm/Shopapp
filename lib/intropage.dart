import 'package:flutter/material.dart';
import 'package:shopping/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.only(top: 120),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage("assets/logo (1).png"),

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Lets Enroll In Anime World",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "The Anime World is Aowsome it include the much character and Action scence",
                textAlign: .center,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Anime Page  ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
