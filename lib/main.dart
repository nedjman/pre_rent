import 'package:application/home/detail.dart';
import 'package:application/screens/create_new_password.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/splash/presentation/splash_view.dart';
import 'home/home.dart';
import 'home/search.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  runApp(MyHouse());
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
class MyHouse extends StatelessWidget {
  const MyHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
        home: SplashView(),    
    );
  }
}
  


    
    
      