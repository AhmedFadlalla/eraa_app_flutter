import 'package:flutter/material.dart';

import 'list/contatct.dart';

class mycard extends StatelessWidget{
  Person person;
   mycard( {required this.person});
  @override
  Widget build(BuildContext context) {
    return
      Container(
          child: Row(children: [CircleAvatar
            (backgroundImage: NetworkImage("https://img.freepik.com/free-photo/artist-white_1368-3543.jpg?w=826&t=st=1683680851~exp=1683681451~hmac=0a73fc6764c418f75ad66d9ecb001294d780ad66d3ec8bc724108ecde692941a"),radius: 50, backgroundColor: Colors.blue),
            Column(children: [Text(style: TextStyle(fontSize: 35,color: Colors.white),person.name),
              Row(children: [Icon(color: Colors.white,Icons.phone),
                Text(style:TextStyle(fontSize: 20,color: Colors.white) ,person.phonenumber)],
              ),Row(children: [Icon(color: Colors.white,Icons.mail),
                Text(style: TextStyle(fontSize: 20,color: Colors.white
                ),person.email
                ),
              ],
              )],
            )],

          ),height: 120,margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color:Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))

          ))

    ;
  }

}

