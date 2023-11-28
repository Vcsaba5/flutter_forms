import 'package:flutter/material.dart';

class User {
  String firstname;
  String lastname;
  DateTime date;
  bool male;
  List<String> favoriteColors;
  String favoriteCarBrand;
  User({
    required this.firstname,
    required this.lastname,
    required this.date,
    required this.male,
    required this.favoriteColors,
    required this.favoriteCarBrand,
  });
  void sendDataToTheNextView() {
    User user = User(
      firstname: firstname, 
      lastname: lastname, 
      date: date, 
      male: male, 
      favoriteColors: favoriteColors, 
      favoriteCarBrand: favoriteCarBrand);
  }
}
