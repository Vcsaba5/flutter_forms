import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';

class DetailsView extends StatelessWidget {
  DetailsView({required this.user});
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details View"),),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text("Firstname: ", style: TextStyle(fontSize: 50),),
            Text(user.firstname, style: TextStyle(fontSize: 30)),
            Text("Lastname: ", style: TextStyle(fontSize: 50)),
            Text(user.lastname, style: TextStyle(fontSize: 30)),
            Text("Date: ", style: TextStyle(fontSize: 50)),
            Text(user.date.toString(), style: TextStyle(fontSize: 30)),
            Text("Neme: ", style: TextStyle(fontSize: 50)),
            Text((user.male)?"férfi":"nő", style: TextStyle(fontSize: 30)),
            Text("Kedvenc autómárka: ", style: TextStyle(fontSize: 50)),
            Text(user.favoriteCarBrand, style: TextStyle(fontSize: 30)),
            Text("Kedvenc színeid: ", style: TextStyle(fontSize: 50)),
            Text(user.favoriteColors.toString(), style: TextStyle(fontSize: 30)),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: user.favoriteColors.length,
              itemBuilder: (_,i){
                return Text(user.favoriteColors[i]);
              },
            ),
          ],
        ),
      )
    );
  }
}