import 'package:first_flutter_app/model/pet.dart';
import 'package:first_flutter_app/view/widget/MyRow.dart';
import 'package:flutter/material.dart';

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      
      body: GridView.count(
        crossAxisCount: 2,
      
        children: myPets.map((pet) => MyRow(myPet: pet,)).toList()
      ),
    );
  }
}