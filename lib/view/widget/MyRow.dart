import 'package:first_flutter_app/model/pet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRow extends StatelessWidget {
  MyRow({
    super.key,
    required this.myPet,
  });

  //Receber o nome e imagem ou receber o Pet
  Pet myPet;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child:
            Image.network(myPet.image!),
          ),
          Text(myPet.name!)
        ],
      ),
    );
  }
}
