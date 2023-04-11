import 'dart:math';

import 'package:application/create/points_forts.dart';
import 'package:application/create/type_facturation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/constants.dart';
import '../widgets/rounded_button.dart';

class TypesFacturation extends StatefulWidget {
  const TypesFacturation({super.key});

  @override
  State<TypesFacturation> createState() => _TypesFacturationState();
}

class _TypesFacturationState extends State<TypesFacturation>{
   bool val1 = true;
  bool val2 = true;
  onChangeFunction1(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
   }
   onChangeFunction2(bool newValue2){
    setState(() {
      val2 = newValue2;
    });
   }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
       CustomPaint(
        painter: appbarPainter(),
        size: const Size(400, 195),
        child: Container(  
        child:  _appBarContent(),
        ),
      ),
      customSwitch(' Par jour', val1, onChangeFunction1),
      customSwitch(' Par mois', val2, onChangeFunction2),
      const SizedBox(height: 200,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         TextButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => TypeFacturation(),
                  ),
                );
               },
                child: Text("Retour",style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 17),),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(130, 50)),
            foregroundColor: MaterialStateProperty.all(KMainColor),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: KMainColor,),
            )
          ),
          ),
          ),
          
          const SizedBox(width: 50),
          TextButton(onPressed: null, child: const Text("Suivante",style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 17),),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(130, 50)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(KMainColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: KMainColor,)
            )
          ),
          ),
          ),
        
        ],
      ),
     ],
     ),
    
    );
  }
   Widget customSwitch(String text, bool val, Function onChangeMethod){
    return Padding(
      padding: const EdgeInsets.only(top: 45.0 , left: 30.0 , right: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: const TextStyle(
            fontSize: 22.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            color: Colors.black
          )),
          const Spacer(),
             CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: KMainColor,
            value:val,
            onChanged:(newValue){
              onChangeMethod(newValue);
            }
          )
        ],
      ),
      );
}
} 
 Widget _appBarContent() {
  return Container(
    height: 195,
    width: 400,
    margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
    child: Column(
      children: [
        _header(),
   const SizedBox(height: 20,),
        _userInfo()
      ],
    ),
  );
}

Widget _header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Icon(Icons.arrow_back_rounded, color: Colors.white, size: 30,),
    ],
  );
}

Widget _userInfo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
    Text(
    "Choisir votre type de facturation",
     style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 28),
  ),
 ],
);
}
class appbarPainter extends CustomPainter {

  @override
  void  paint (Canvas canvas, Size size){
    var rect = Offset.zero & size;
    Paint paint = Paint() ;
    Path path = Path();
    paint.shader = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
     colors: [
       KMainColor,
       kPrimaryLightColor,
      ],
     ).createShader(rect);
    path.lineTo(0, size.height - size.height /8);
    path.conicTo(size.width / 1.2 , size.height, size.width, size.height - size.height / 8, 9);
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, kPrimaryLightColor, 4, false);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint (covariant CustomPainter oldDelegate){
     return true;
  }
}

