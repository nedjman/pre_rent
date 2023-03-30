import 'package:application/screens/create_new_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/splash/presentation/splash_view.dart';


void main() {
  runApp(MyHouse());
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





  


    
    
      