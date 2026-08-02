import 'package:flutter/material.dart';
import 'package:shopping/Storepage.dart';
import 'package:shopping/firstpage.dart';
import 'package:shopping/navigation.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectiveindex = 0;
  List pages = [Firstpage(), Storepage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anime App"), centerTitle: true),
      bottomNavigationBar: Navigations(
        currentindex: _selectiveindex,
        onchanged: (index) {
          setState(() {
            _selectiveindex = index;
          });
        },
      ),
      body: pages[_selectiveindex],
    );
  }
}
