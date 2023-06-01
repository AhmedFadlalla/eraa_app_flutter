import 'package:flutter/material.dart';

import 'component/custom_item_container/custom_item_container.dart';
class FoodHomeScreen extends StatelessWidget {
  const FoodHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 22,
        leading:InkWell(
          onTap: (){

          },
            child: Icon(Icons.menu,color: Colors.yellow,)),
        title: Text("Home",style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Icon(Icons.notifications,color: Colors.yellow,size: 20,),
          SizedBox(width: 8,),
          CircleAvatar(
            backgroundColor: Colors.yellow,
            radius: 12,
            child: Icon(Icons.add_shopping_cart,size: 12,),
          ),
          SizedBox(width: 8,),

          CircleAvatar(
            radius: 12,
            backgroundImage: Image.asset("assets/images/man.jpg",

              fit: BoxFit.fill,
            ).image,
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("OverView",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 8,),
              Text("Hello Ahmed",style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.normal
              ),),
              SizedBox(height: 8,),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextFormField(
                  decoration:InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                         color: Colors.white
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    )
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 60,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>Container(
                      child: Column(
                        children: [
                          Icon(Icons.category_sharp),
                          Text("Category",style: TextStyle(
                              fontSize: 13,

                              color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                    separatorBuilder:  (context,index)=>SizedBox(width: 5,),
                    itemCount: 8),
              ),
              GridView.count(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 11/16,
                  crossAxisCount:3,
                children: List.generate(8, (index) => CustomItemContainer(),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
