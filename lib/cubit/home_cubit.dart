import 'package:eraa_flutter_app/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../cach_helper/cach_helper.dart';
import '../chat_screen.dart';
import '../home_screen.dart';
import '../notification.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeInitialState());

  static HomeCubit get(context)=>BlocProvider.of(context);


  List<Widget> screens=[
    HomeScreen(),
    NotiScreen(),
    ChatScreen(),
    ChatScreen(),
    ChatScreen(),
  ];
  int currentIndex=0;


  void changeBottomNavBarIndex(int index){
    currentIndex=index;
    emit(ChangeBottomNavigationBarIndexState());
  }

  void register({
  required String email,
  required String password,
}){
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password).then((value) {
          print(value.user!.uid);
          CachHelper.saveData(key: "token", value: value.user!.uid);
          emit(UserRegisterSuccessfullyState());
    }).catchError((error){
      emit(UserRegisterErrorState());

    });

  }

}