import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/constants.dart';
import '../screens/create_new_password.dart';
import 'adresse.dart';
import 'nature.dart';




class logement extends StatefulWidget {
  const logement({super.key}); 

  @override
  State<logement> createState() => _logementState();
}

class User {
  String username;
  String urlAvatar;

  User(
   this.username, 
   this.urlAvatar, 
  );
}

class _logementState extends State<logement> { 

 List<User> users = [
    User( "Appartement",
        "https://th.bing.com/th/id/R.fb647fe2376e47b113c511cbfde9c123?rik=wq%2bNuTZenodt8g&pid=ImgRaw&r=0"),
    User("Studio",
        "https://th.bing.com/th/id/OIP.eJ5glq7fZhUwShGaAVoj_QHaJJ?pid=ImgDet&rs=1"),
    User("Villa",
        "https://th.bing.com/th/id/R.60ede78026fe9460c23915a2d3d2ecc1?rik=hYra4InHSSSjUg&pid=ImgRaw&r=0"),
    User("Niveau la villa",
        "https://th.bing.com/th/id/R.1dd0d42f1e2f53437b3b3b8e68402042?rik=j7UPkivUYqg%2fSA&pid=ImgRaw&r=0"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: KMainColor,
        title: const Text("Choisissez type de logement"),
        centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Transform.scale(
            scale: 1.3,
         child: Card(
             color: kPrimaryLightColor,
             elevation: 20,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(user.urlAvatar),
            ),
            title: Text(user.username),
            trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Adresse(),
                ),
                );
              },
          ),
        ),);
       },
     ),

     persistentFooterButtons: [
         Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         TextButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPassword(),
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
          TextButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Adresse(),
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