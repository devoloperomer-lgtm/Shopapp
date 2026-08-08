import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/components/anime.dart';
import 'package:shopping/components/data.dart';

class Animetile extends StatefulWidget {
  final data;

  Animetile({super.key, required this.data});

  @override
  State<Animetile> createState() => _AnimetileState();
}

class _AnimetileState extends State<Animetile> {
  void removeitems() {
    Provider.of<Char>(context, listen: false).removeitem(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
        ),
        padding: EdgeInsets.only(bottom: 4, left: 4),
        child: ListTile(
          leading: Image.asset(widget.data.image),
          title: Text(widget.data.name),
          subtitle: Text(widget.data.price),
          trailing: IconButton(
            onPressed: removeitems,
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
