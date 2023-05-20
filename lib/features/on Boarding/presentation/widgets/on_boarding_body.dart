import 'dart:math';

import 'package:application/core/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../screens/create_new_password.dart';
import '../../../../screens/login_screen.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';



class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {

 PageController? pageController;

 @override
  void initState() {
    pageController = PageController(
      initialPage: 0
    )..addListener(() 
    {
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context)  {
    return Stack(
       children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize ! *24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page :0,
          ),
        ),
        Visibility(
          visible:pageController!.hasClients ? (pageController?.page == 2 ? false : true) : true,
          child: Positioned(
            top: SizeConfig.defaultSize! *10,
            right: 32,
            child: InkWell(
            child: Text(
              'Passer',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0XFF898989),
              ),
              textAlign: TextAlign.left,
            ),
        onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen()));
                   },
            ),
          ),
        ),

        Positioned(
          left: SizeConfig.defaultSize !*10,
          right: SizeConfig.defaultSize !*10,
          bottom: SizeConfig.defaultSize ! *10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage (
                duration: Duration(milliseconds: 500), 
                curve: Curves.easeIn);
                } else  {
                  Get.to(() => LoginScreen(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
                }
            },
             text: pageController!.hasClients ? (pageController?.page == 2 ? 'Démarrer':'Suivante') : 'Suivante',
          )),
       ],
    );
    }
    
      
}

