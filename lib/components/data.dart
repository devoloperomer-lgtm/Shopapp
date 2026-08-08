import 'package:flutter/material.dart';
import 'package:shopping/components/anime.dart';

//list of characters
class Char extends ChangeNotifier {
  List<Data> picks = [
    Data(
      discription: "I will not give up",
      image: "assets/logo (7).png",
      name: "Naruto Uzumaki",
      price: "777k",
    ),
    Data(
      discription: "kame hame haaaa",
      image: "assets/logo (4).png",
      name: "Son Goku",
      price: "872k",
    ),
    Data(
      discription: "Its hero time ",
      image: "assets/logo (2).png",
      name: "Ben 10",
      price: "999+",
    ),
    Data(
      discription: "Jujutsu kaisen",
      image: "assets/logo (5).png",
      name: "Gojo Satoro students",
      price: "597k",
    ),
    Data(
      discription: "Greate sage user",
      image: "assets/logo (6).png",
      name: "Jiraya Sensai",
      price: "997",
    ),
    Data(
      discription: "Greate Rival",
      image: "assets/logo (3).png",
      name: "Prince Vegita  ",
      price: "695",
    ),
  ];
  //list of items in user card
  List<Data> usercard = [];
  //get list of shoes for sale
  List<Data> getcharshop() {
    return picks;
  }

  //get card
  List<Data> getuseritems() {
    return usercard;
  }

  //add item to card
  void additems(Data data) {
    usercard.add(data);
    notifyListeners();
  }

  //remove item from card
  void removeitem(Data data) {
    usercard.remove(data);
    notifyListeners();
  }
}
