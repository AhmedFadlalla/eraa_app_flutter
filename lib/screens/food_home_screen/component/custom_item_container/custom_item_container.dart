import 'package:flutter/material.dart';
class CustomItemContainer extends StatelessWidget {
  const CustomItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color:Colors.red,
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/images/burger.png"),
          ),
          Text("Burger",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),),
          Text("200g",style: TextStyle(
              color: Colors.grey
          ),),
          Text("2.58\$",
              style: TextStyle(
                  color: Colors.yellow
              )),
        ],
      ),
    );
  }
}
