import 'package:flutter/material.dart';

import '../../component/stroy_component.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.camera_alt,color: Colors.green,),
                    Text("Instagram",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.green
                      ),
                    ),
                    Icon(Icons.send,color: Colors.green,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StoryComponent(image: "assets/images/man.jpg", name: "Ahmed"),
                     StoryComponent(image: "assets/images/man.jpg", name: "Ahmed"),
                     StoryComponent(image: "assets/images/man.jpg", name: "Ahmed"),

                    StoryComponent(image: "assets/images/man.jpg", name: "Ahmed"),
                  ],
                ),
                SizedBox(height: 18,),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black,
                ),
                Padding(
                  padding:  EdgeInsets.all(15),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/images/man.jpg"),
                            ),
                            SizedBox(width: 10,),
                            Text("Amr")
                          ],
                        ),
                        Image(
                          height: 400,
                            width: 250,
                            image: AssetImage("assets/images/man.jpg")),
                        Row(
                          children: [
                            Icon(Icons.favorite_outline_sharp),
                            SizedBox(width: 15,),
                            Icon(Icons.comment),
                            SizedBox(width: 15,),
                            Icon(Icons.share),
                            Spacer(),
                            Icon(Icons.accessibility_new_outlined)
                          ],
                        ),
                        Text("152 Like your post"),
                        Text("1500"),
                        InkWell(onTap: (){
                          print("155");
                        },
                            child: Text("View 150 Comments")),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
