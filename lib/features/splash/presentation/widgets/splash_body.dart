import 'package:application/features/on%20Boarding/presentation/on_boardin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{


  AnimationController? animationController;
  Animation<double> ? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 600));
    fadingAnimation = Tween<double>(begin: .2 , end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   SizeConfig().int(context);
    var theme;
    return Container( 
      width:double.infinity,
      height:double.infinity,
      decoration:BoxDecoration(
        image:DecorationImage(
     image:AssetImage('assets/images/splash_view_image.jfif'),
     fit: BoxFit.cover, 
     ),
     ),

           child:Column(
           
               children: [
              RichText(
             text: TextSpan(
                 text: 'Ren',
                style: theme.headline1,
                 children: [
                 TextSpan(
                 text: 'House',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: const Color(0Xffffffff),
                 ),
                 ),
                 ] ),
                 ),
             ], 
             ),
         );
  }
  
  void goToNextView() 
  {
    Future.delayed(Duration(seconds: 3), ()
    {
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
}