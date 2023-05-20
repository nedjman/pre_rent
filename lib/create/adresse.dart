import 'package:application/create/logement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../core/constants.dart';
import 'caractéristique.dart';

class Adresse extends StatefulWidget {
  const Adresse({super.key});

  @override
  State<Adresse> createState() => _AdresseState();
}

class _AdresseState extends State<Adresse> {
  List<dynamic> countries = [];
  List<dynamic> statesMasters = [];
  List<dynamic> states = [];

  String?  countryId;
  String? stateId;

  @override
   void initState() {
     super.initState();

    this.countries.add({"id":1, "name":"Adrar"});
    this.countries.add({"id":2, "name":"Chlef"});
    this.countries.add({"id":3, "name":"laghouat"});
    this.countries.add({"id":4, "name":"Oum El Bouaghi"});
    this.countries.add({"id":5, "name":"Batna"});
    this.countries.add({"id":6, "name":"Béjaia"});
    this.countries.add({"id":7, "name":"Biskra"});
    this.countries.add({"id":8, "name":"Bèchar"});
    this.countries.add({"id":9, "name":"Blida"});
    this.countries.add({"id":10, "name":"Buira"});
    this.countries.add({"id":11, "name":"Tamanrasset"});
    this.countries.add({"id":12, "name":"Tebessa"});
    this.countries.add({"id":13, "name":"Tlemcen"});
    this.countries.add({"id":14, "name":"Tiaret"});
    this.countries.add({"id":15, "name":"Tizi Ouzou"});
    this.countries.add({"id":16, "name":"Alger"});
    this.countries.add({"id":17, "name":"Djelfa"});
    this.countries.add({"id":18, "name":"Jijel"});
    this.countries.add({"id":19, "name":"Sétif"});
    this.countries.add({"id":20, "name":"Saida"});
    this.countries.add({"id":21, "name":"Skikda"});
    this.countries.add({"id":22, "name":"Sidi Bel Abbès"});
    this.countries.add({"id":23, "name":"Annaba"});
    this.countries.add({"id":24, "name":"Guelma"});
    this.countries.add({"id":25, "name":"Constantine"});
    this.countries.add({"id":26, "name":"Médéa"});
    this.countries.add({"id":27, "name":"Mostaganem"});
    this.countries.add({"id":28, "name":"M'Sila"});
    this.countries.add({"id":29, "name":"Mascara"});
    this.countries.add({"id":30, "name":"Ouargla"});
     this.countries.add({"id":31, "name":"Oran"});
    this.countries.add({"id":32, "name":" El Bayadh"});
    this.countries.add({"id":33, "name":"Illizi"});
    this.countries.add({"id":34, "name":"Bordj Bou Arreridj"});
    this.countries.add({"id":35, "name":"Boumerdès"});
    this.countries.add({"id":36, "name":"El Tarf"});
    this.countries.add({"id":37, "name":"Tindouf"});
    this.countries.add({"id":38, "name":"Tissemsilt"});
    this.countries.add({"id":39, "name":"El Oued"});
    this.countries.add({"id":40, "name":"Khenchela"});
    this.countries.add({"id":41, "name":"Souk Ahras"});
    this.countries.add({"id":42, "name":"Tipaza"});
    this.countries.add({"id":43, "name":" Mila"});
    this.countries.add({"id":44, "name":"Ain Defla"});
    this.countries.add({"id":45, "name":"Naama"});
    this.countries.add({"id":46, "name":"Ain Témouchent"});
    this.countries.add({"id":47, "name":"Ghardaia"});
    this.countries.add({"id":48, "name":"Relizane"});
    this.countries.add({"id":49, "name":"Timimoun"});
    this.countries.add({"id":50, "name":"Bordj Badji Mokhtar"});
    this.countries.add({"id":51, "name":"Ouled Djellal"});
    this.countries.add({"id":52, "name":"Béni Abbès"});
    this.countries.add({"id":53, "name":"In Salah"});
    this.countries.add({"id":54, "name":"In Guezzam"});
    this.countries.add({"id":55, "name":"Touggourt"});
    this.countries.add({"id":56, "name":"Djanet"});
    this.countries.add({"id":57, "name":"El M'Ghaier"});
    this.countries.add({"id":58, "name":"El Meniaa"});

    this.statesMasters = [
      {"ID":1, "Name": "Adrar", "ParentId":1},
      {"ID":2, "Name": "Tamest", "ParentId":1},
      {"ID":3, "Name": "Charouine", "ParentId":1},
      {"ID":4, "Name": "Reggane", "ParentId":1},
      {"ID":5, "Name": "Inozghmir", "ParentId":1},
      {"ID":6, "Name": "Tit", "ParentId":1},
      {"ID":7, "Name": "Ksar Kaddour", "ParentId":1},
      {"ID":8, "Name": "Tsabit", "ParentId":1},
      {"ID":9, "Name": "Timimoun", "ParentId":1},
      {"ID":10, "Name": "Ouled Said", "ParentId":1},
      {"ID":11, "Name": "Zaouiet Kounta", "ParentId":1},
      {"ID":12, "Name": "Aoulef", "ParentId":1},
      {"ID":13, "Name": "Timokten ", "ParentId":1},
      {"ID":14, "Name": "Tamentit", "ParentId":1},
      {"ID":15, "Name": "Fenoughil", "ParentId":1},
      {"ID":16, "Name": "Tinerkouk", "ParentId":1},
      {"ID":17, "Name": "Deldoul", "ParentId":1},
      {"ID":18, "Name": "Sali", "ParentId":1},
      {"ID":19, "Name": "Akabli", "ParentId":1},
      {"ID":20, "Name": "Metarfa", "ParentId":1},
       {"ID":21, "Name": "O Ahmed Timmi", "ParentId":1},
      {"ID":22, "Name": "Bouda", "ParentId":1},
      {"ID":23, "Name": "Aougrout", "ParentId":1},
      {"ID":24, "Name": "Talmine", "ParentId":1},
      {"ID":25, "Name": "B Badji Mokhtar", "ParentId":1},
      {"ID":26, "Name": "Sbaa", "ParentId":1},
      {"ID":27, "Name": "Ouled Aissa", "ParentId":1},
      {"ID":28, "Name": "Timiaouine", "ParentId":1},
      
      {"ID":1, "Name": "Chlef", "ParentId":2},
      {"ID":2, "Name": "Ténès", "ParentId":2},
      {"ID":3, "Name": "Bénairia", "ParentId":2},
      {"ID":4, "Name": "El Karimia", "ParentId":2},
      {"ID":5, "Name": "Tadjena", "ParentId":2},
      {"ID":6, "Name": "Taougrite", "ParentId":2},
      {"ID":7, "Name": "Beni Haoua", "ParentId":2},
      {"ID":8, "Name": "Sobha", "ParentId":2},
      {"ID":9, "Name": "Harchoun", "ParentId":2},
      {"ID":10, "Name": "Ouled Fares", "ParentId":2},
      {"ID":11, "Name": "Sidi Akkacha", "ParentId":2},
      {"ID":12, "Name": "Boukadir", "ParentId":2},
      {"ID":13, "Name": "Beni Rached", "ParentId":2},
      {"ID":14, "Name": "Talassa", "ParentId":2},
      {"ID":15, "Name": "Harenfa", "ParentId":2},
      {"ID":16, "Name": "Oued Goussine", "ParentId":2},
      {"ID":17, "Name": "Dahra", "ParentId":2},
      {"ID":18, "Name": "Ouled Abbes", "ParentId":2},
      {"ID":19, "Name": "Sendjas", "ParentId":2},
      {"ID":20, "Name": "Zeboudja", "ParentId":2},
      {"ID":1, "Name": "Oued Sly", "ParentId":2},
      {"ID":2, "Name": "Abou El Hassan", "ParentId":2},
      {"ID":3, "Name": "El Marsa", "ParentId":2},
      {"ID":4, "Name": "Chettia", "ParentId":2},
      {"ID":5, "Name": "Sidi Abderrahmane", "ParentId":2},
      {"ID":6, "Name": "Moussade", "ParentId":2},
      {"ID":7, "Name": "El Hadjadj", "ParentId":2},
      {"ID":8, "Name": "Labiod Medjadja", "ParentId":2},
      {"ID":9, "Name": "Oued Fodda", "ParentId":2},
      {"ID":10, "Name": "Ouled Ben Abdelkader", "ParentId":2},
      {"ID":11, "Name": "Bouzeghaia", "ParentId":2},
      {"ID":12, "Name": "Aïn Merane", "ParentId":2},
      {"ID":13, "Name": "Oum Drou", "ParentId":2},
      {"ID":14, "Name": "Breira", "ParentId":2},
      {"ID":15, "Name": "Beni Bouateb", "ParentId":2},

      {"ID":1, "Name": "Laghouat", "ParentId":3},
      {"ID":2, "Name": "Ksar El Hirane", "ParentId":3},
      {"ID":3, "Name": "Bennasser Benchohra", "ParentId":3},
      {"ID":4, "Name": "Sidi Makhlouf", "ParentId":3},
      {"ID":5, "Name": "Hassi Delaa", "ParentId":3},
      {"ID":6, "Name": "Hassi R'Mel", "ParentId":3},
      {"ID":7, "Name": "Aïn Madhi", "ParentId":3},
      {"ID":8, "Name": "Tadjemout", "ParentId":3},
      {"ID":9, "Name": "Kheneg", "ParentId":3},
      {"ID":10, "Name": "Gueltat Sidi Saad", "ParentId":3},
      {"ID":11, "Name": "Aïn Sidi Ali", "ParentId":3},
      {"ID":12, "Name": "Beidha", "ParentId":3},
      {"ID":13, "Name": "Brida", "ParentId":3},
      {"ID":14, "Name": "El Ghicha", "ParentId":3},
      {"ID":15, "Name": "Hadj Mechri", "ParentId":3},
      {"ID":16, "Name": "Sebgag", "ParentId":3},
      {"ID":17, "Name": "Taouiala", "ParentId":3},
      {"ID":18, "Name": "Tadjrouna", "ParentId":3},
      {"ID":19, "Name": "Aflou", "ParentId":3},
      {"ID":20, "Name": "El Assafia", "ParentId":3},
      {"ID":21, "Name": "Oued Morra", "ParentId":3},
      {"ID":22, "Name": "Oued M'Zi", "ParentId":3},
      {"ID":23, "Name": "El Houaita", "ParentId":3},
      {"ID":24, "Name": "Sidi Bouzid", "ParentId":3},

      {"ID":1, "Name": "Oum el Bouaghi", "ParentId":4},
      {"ID":2, "Name": "Aïn Beïda", "ParentId":4},
      {"ID":3, "Name": "Aïn M'lila", "ParentId":4},
      {"ID":4, "Name": "Behir Chergui", "ParentId":4},
      {"ID":5, "Name": "El Amiria", "ParentId":4},
      {"ID":6, "Name": "Sigus", "ParentId":4},
      {"ID":7, "Name": "El Belala", "ParentId":4},
      {"ID":8, "Name": "Aïn Babouche", "ParentId":4},
      {"ID":9, "Name": "Berriche", "ParentId":4},
      {"ID":10, "Name": "Ouled Hamla", "ParentId":4},
      {"ID":11, "Name": "Dhalaa", "ParentId":4},
      {"ID":12, "Name": "Aïn Kercha", "ParentId":4},
      {"ID":13, "Name": "Hanchir Toumghani", "ParentId":4},
      {"ID":14, "Name": "El Djazia", "ParentId":4},
      {"ID":15, "Name": "Aïn Diss", "ParentId":4},
      {"ID":16, "Name": "Fkirina", "ParentId":4},
      {"ID":17, "Name": "Souk Naamane", "ParentId":4},
      {"ID":18, "Name": "Zorg", "ParentId":4},
      {"ID":19, "Name": "El Fedjoudj Boughrara Saoudi", "ParentId":4},
      {"ID":20, "Name": "Ouled Zouaï", "ParentId":4},
      {"ID":21, "Name": "Bir Chouhada", "ParentId":4},
      {"ID":22, "Name": "Ksar Sbahi", "ParentId":4},
      {"ID":23, "Name": "Oued Nini", "ParentId":4},
      {"ID":24, "Name": "Meskiana", "ParentId":4},
      {"ID":25, "Name": "Aïn Fakroun", "ParentId":4},
      {"ID":26, "Name": "Rahia", "ParentId":4},
      {"ID":27, "Name": "Aïn Zitoun", "ParentId":4},
      {"ID":28, "Name": "Ouled Gacem", "ParentId":4},
      {"ID":29, "Name": "El Harmilia", "ParentId":4},
    ];
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
      
       FormHelper.dropDownWidgetWithLabel(
        context,
        "Wilaya",
        "Choisir wilaya",
        this.countryId,
        this.countries,
        (onChangedVal){
          this.countryId = onChangedVal;
          print("Choisir wilaya: $onChangedVal");
          
          this.states = this.statesMasters.where(
          (stateItem) => 
          stateItem["ParentId"].toString() == 
          onChangedVal.toString(),
          )
          .toList();
         this.stateId = null;
        },
        (onValidateVal) {
          if (onValidateVal == null){
            return 'Veuillez choisir wilaya';
          }
          return null;
        },
        borderColor:Theme.of(context).primaryColor,
        borderFocusColor:Theme.of(context).primaryColor,
        borderRadius:10,
        //optionValue:"id",
       // optionLabel:"name",
       ),
      
      FormHelper.dropDownWidgetWithLabel(
        context, 
        "Commune",
        "Choisir Commune",
        this.stateId,
        this.states,
        (onChangedVal) {
          this.stateId = onChangedVal;
          print("Choisir Commune: $onChangedVal");
        },
         (onVaLidate){
          return null; 
        },
        borderColor:Theme.of(context).primaryColor,
        borderFocusColor:Theme.of(context).primaryColor,
        borderRadius:10,
        optionValue:"ID",
        optionLabel:"Name",
      ),
     ],
     ),

     persistentFooterButtons: [
         Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         TextButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => logement(),
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
             Navigator.push(context, MaterialPageRoute(builder: (context) => Caracterstique(),
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



