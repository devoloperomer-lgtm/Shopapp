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
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/logo (1).png")),
            Divider(),
            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home Page"),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text("Card Page"),
              ),
            ),
          ],
        ),
      ),
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
