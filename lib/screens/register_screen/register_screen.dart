import 'package:eraa_flutter_app/screens/register_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../component/app_images.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            width: 360,
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image:
                    NetworkImage('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQjOW3YSreE_-C6FucgfCY8SAXVhLWYDi4DhAXXKKOKn-RBt7sv'),fit: BoxFit.contain)
            ),
          ),
          const SizedBox(height: 20,),
          const Text('Welcome Back !' , style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
          const SizedBox(width: 20,),
          Row(
            children: const [
              SizedBox(width: 15,),
              Text('E-mail address',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45
                ),),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: Colors.deepPurple.shade900,
                      )
                  ),
                  hintText: 'Enter Your Email',
                  suffixIcon:  Icon(Icons.email , color: Colors.deepPurple.shade900 ,)
              ),
            ),
          ),
          Row(
            children:  [
              const SizedBox(width: 15,),
              Expanded(
                child: const Text('Password',
                  style:TextStyle(
                    color: Colors.black45 ,
                    fontSize: 15,
                  ) ,
                ),
              ),
              TextButton(onPressed:(){},
                  child:  Text('Forgot password ?' ,
                      style: TextStyle(decoration: TextDecoration.underline ,
                          color: Colors.deepPurple.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ))
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: Colors.deepPurple.shade900,
                      )
                  ),
                  hintText: 'Enter Your Password',
                  suffixIcon:  Icon(Icons.remove_red_eye_outlined , color: Colors.deepPurple.shade900 ,)
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value){}),
              Text("Remeber Me"),
            ],
          ),
          ElevatedButton(onPressed: (){}, child:const Text('Login'
            ,style: TextStyle(
                color: Colors.white ,
                fontWeight: FontWeight.bold ,
                fontSize: 20,
               // backgroundColor: Colors.black45

            ),) )


        ],
      ),
    ) ;
  }
}

