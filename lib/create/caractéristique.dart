import 'package:application/create/points_forts.dart';
import 'package:application/create/types_facturation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'adresse.dart';

class Caracterstique extends StatefulWidget {
  const Caracterstique({super.key});

  @override
  State<Caracterstique> createState() => _CaracterstiqueState();
}

class _CaracterstiqueState extends State<Caracterstique>{
  
 List<bool> _isSelected = [false, false, false,false]; //initialize the list with boolean values to track which button is selected
      List<Widget> _buttonList = [
         Column(
         children: [
             Icon(Icons.ac_unit,size: 50,),
             SizedBox(width: 5),
             Text("  Climatiseur  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ],
        ),
        Column(
       children: [
         Icon(Icons.garage,size: 50,),
         SizedBox(width: 5),
         Text("  Parking  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
       ],
      ),
      Column(
         children: [
             Icon(Icons.pool,size: 50,),
             SizedBox(width: 5),
             Text("  Piscine  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ],
        ),
      Column(
     children: [
        Icon(Icons.local_florist_sharp,size: 50,),
        SizedBox(width: 5),
       Text("Jardin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      ],
     ),  
     ];

     List<bool> _isSelected1 = [false, false, false]; //initialize the list with boolean values to track which button is selected
      List<Widget> _buttonList1 = [
         Column(
         children: [
             Icon(Icons.wifi,size: 50,),
             SizedBox(width: 5),
             Text("  Connexion internet  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ],
        ),
        Column(
       children: [
         Icon(Icons.tv,size: 50,),
         SizedBox(width: 5),
         Text("  Télévision  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
       ],
      ),
       Column(
         children: [
             Icon(Icons.chair,size: 55,),
             SizedBox(width: 5),
             Text("  Meublée  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ],
        ),
     ];

     List<bool> _isSelected2 = [false, false,false]; //initialize the list with boolean values to track which button is selected
      List<Widget> _buttonList2 = [
         Column(
         children: [
             Icon(Icons.kitchen,size: 55,),
             SizedBox(width: 5),
             Text("  Frigidaire  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
          ],
        ),
         Column(
     children: [
        Icon(Icons.sunny,size: 50,),
        SizedBox(width: 5),
       Text("  Chauffage  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      ],
     ),
         Column(
     children: [
        Icon(Icons.bathtub,size: 55,),
        SizedBox(width: 5),
       Text("  Douche  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      ],
     ),
     ];


     List<bool> _isSelected3 = [false,]; //initialize the list with boolean values to track which button is selected
      List<Widget> _buttonList3 = [
         Column(
       children: [
         Icon(Icons.video_camera_front,size: 50,),
         SizedBox(width: 5),
         Text("  Caméra de surveillance  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
       ],
      ),
     ];

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
      const SizedBox(height: 20,),

     ToggleButtons(
      children: _buttonList,
      color: Color(0xFFD1D1D1),
      fillColor: Colors.white38,
      selectedBorderColor: Colors.white60,
      selectedColor: KMainColor,
         borderColor: Colors.white,
          isSelected: _isSelected,
       onPressed: (index) {
       setState(() {
        _isSelected[index] = !_isSelected[index]; //toggle the selected state of the button
       });
    },
    ),

    const SizedBox(height: 15,),

    ToggleButtons(
      children: _buttonList1,
      color: Color(0xFFD1D1D1),
      fillColor: Colors.white38,
      selectedBorderColor: Colors.white60,
      selectedColor: KMainColor,
          borderColor: Colors.white,
          isSelected: _isSelected1,
       onPressed: (index) {
       setState(() {
        _isSelected1[index] = !_isSelected1[index]; //toggle the selected state of the button
       });
    },
    ),

     const SizedBox(height: 15,),

    ToggleButtons(
      children: _buttonList2,
      color: Color(0xFFD1D1D1),
      fillColor: Colors.white38,
      selectedBorderColor: Colors.white60,
      selectedColor: KMainColor,
       borderColor: Colors.white,
          isSelected: _isSelected2,
       onPressed: (index) {
       setState(() {
        _isSelected2[index] = !_isSelected2[index]; //toggle the selected state of the button
       });
    },
    ),

     const SizedBox(height: 15,),

    ToggleButtons(
      children: _buttonList3,
      color: Color(0xFFD1D1D1),
      fillColor: Colors.white38,
      selectedBorderColor: Colors.white60,
        selectedColor: KMainColor,
        borderColor: Colors.white,
          isSelected: _isSelected3,
       onPressed: (index) {
       setState(() {
        _isSelected3[index] = !_isSelected3[index]; //toggle the selected state of the button
       });
    },
    ),
     ],
     ),

     persistentFooterButtons: [
         Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         TextButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Adresse(),
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
          TextButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => TypesFacturation(),
                  ),
                );
               }, 
          child: Text("Suivante",style: TextStyle(
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

