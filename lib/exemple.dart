import 'dart:html';

import 'package:application/pages/favorite.dart';
import 'package:application/pages/message.dart';
import 'package:application/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:application/pages/notification.dart';
import 'core/constants.dart';
import 'create/adresse.dart';
import 'home/search.dart';

class Exemple extends StatefulWidget {
  const Exemple({super.key});

  @override
  State<Exemple> createState() => _ExempleState();
}

class _ExempleState extends State<Exemple> {

   final items = const [
          Icon(Icons.home,color: KMainColor,),
          Icon(Icons.message,color: KMainColor,),
          Icon(Icons.favorite,color: KMainColor,),
          Icon(Icons.notifications_active,color: KMainColor,),
          Icon(Icons.person,color: KMainColor,),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: kPrimaryLightColor,
        backgroundColor: Colors.white,
        color: kPrimaryLightColor,
        animationDuration: Duration(seconds: 1),
        animationCurve: Curves.bounceOut,
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        // animationCurve: ,
      ),
      body: Container(
        child: getSelectedWidget(index: index)
      ),
    );
  }
  
  getSelectedWidget({required int index}) {
        Widget widget;
    switch(index){
      case 0:
        widget =  Search();
        break;
      case 1:
        widget =  Message();
        break;
      case 2:
        widget =  Favorite();
        break;
      case 3:
        widget =  Notifications();
        break;
      case 4:
        widget =  Profile();
        break;
      default:
        widget =  Search();
        break;
    }
    return widget;
  }
}
