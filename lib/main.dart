import 'package:eraa_flutter_app/cubit/home_cubit.dart';
import 'package:eraa_flutter_app/cubit/state.dart';
import 'package:eraa_flutter_app/screens/food_home_screen/food_home_screen.dart';
import 'package:eraa_flutter_app/screens/instagram_screen/instagarm_screen.dart';
import 'package:eraa_flutter_app/screens/list_view/contact_screen.dart';
import 'package:eraa_flutter_app/screens/list_view/my_card.dart';
import 'package:eraa_flutter_app/screens/list_view/list/contatct.dart';
import 'package:eraa_flutter_app/screens/register_screen/register_screen.dart';
import 'package:eraa_flutter_app/screens_component.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cach_helper/cach_helper.dart';
import 'constraint.dart';
import 'firebase_options.dart';
import 'home_screen.dart';
import 'notification.dart';


void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FoodHomeScreen(),
    );
  }
}



