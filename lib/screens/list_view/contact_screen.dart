import 'package:flutter/material.dart';

import 'list/contatct.dart';
import 'my_card.dart';


class ContactScreen extends StatelessWidget{
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        body:
        Container(
          decoration: BoxDecoration(color: Color(0xff242037)),
          child: ListView.builder(
              itemCount: personList.length,
              itemBuilder: (context,index){
                return mycard(person: personList[index]);
              }),
        ),
      );
  }





}