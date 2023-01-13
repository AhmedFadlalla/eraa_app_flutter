import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}
//stateless
//stateful

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading:Icon(Icons.arrow_forward_ios) ,
          title: Text("Home"),
          actions: [
            Icon(Icons.add),
            Icon(Icons.search),
            Icon(Icons.add),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [

              Image(image: NetworkImage("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80")),
              Text("Home Screen",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                    fontWeight:FontWeight.bold ,
                    fontStyle: FontStyle.normal
                ),),
              Image(image: NetworkImage("https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Home Screen",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight:FontWeight.bold ,
                        fontStyle: FontStyle.normal
                    ),),
                  Text("Home Screen",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight:FontWeight.bold ,
                        fontStyle: FontStyle.normal
                    ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Home Screen",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight:FontWeight.bold ,
                        fontStyle: FontStyle.normal
                    ),),
                  Text("Home Screen",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight:FontWeight.bold ,
                        fontStyle: FontStyle.normal
                    ),),
                ],
              )
            ],
          ),
        ),
      ),
    );

  }


}


