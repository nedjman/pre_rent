import 'dart:collection';

import 'package:application/create/adresse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import 'logement.dart';
import 'nature.dart';

class PointsForts extends StatefulWidget {
  const PointsForts({Key? key}) : super(key: key);

  @override
  State<PointsForts> createState() => _PointsFortsState();
}

class _PointsFortsState extends State<PointsForts> {
  List<Nature> natureList = [
    Nature("Près de la mosquée",
        "https://th.bing.com/th/id/R.621f42630155fcc8d651b3ce6c73c784?rik=SIAWu7dKMwe2Qw&pid=ImgRaw&r=0"),
    Nature("Proche du l'hopital",
        "https://th.bing.com/th/id/OIP.uY0qwn1AbfitklcFadzScQHaEs?pid=ImgDet&rs=1"),
    Nature("Proche du l'école",
        "https://th.bing.com/th/id/R.54f464824fa644de2a3089f74ec3be87?rik=v%2fiMTZ7C60C00Q&riu=http%3a%2f%2ftaleem-edu.com%2fwp-content%2fuploads%2fTESC-16.png&ehk=Z%2fKuslsOVUY8TF7H7Dm3HCgpmlSSC7BUK1nNZfA2oNw%3d&risl=&pid=ImgRaw&r=0"),
    Nature("Près de la mer",
        "https://images.unsplash.com/photo-1545579133-99bb5ab189bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Près de l'aéroport",
        "https://th.bing.com/th/id/R.a3dff65995a3b7aa4aed4ade662fd51f?rik=OMQ%2fzKUlFUoMSw&riu=http%3a%2f%2fwww.firstluxemag.com%2fwp-content%2fuploads%2f2012%2f12%2fAEROPORT2.jpg&ehk=gvieSwYCet4pyvCmiv088RFHNeu%2fIFfv9Y%2bDJNclHYY%3d&risl=&pid=ImgRaw&r=0"),
    Nature("Proche du bus",
        "https://th.bing.com/th/id/R.1a50cd1c6b0fb6b50157009d768eed6d?rik=YU4Onn7h3lC4NQ&pid=ImgRaw&r=0"),
    Nature("Proche du tramway",
        "https://th.bing.com/th/id/R.d9a2389c04ca856cdbc7e7faa0b5c2d9?rik=P7NaXpUl%2fpXvIw&riu=http%3a%2f%2fmoudjahed.o.m.f.unblog.fr%2ffiles%2f2011%2f07%2ftramway2.jpg&ehk=j%2fbIzA%2bXfiKsXf5AZMty9sjL6Za9KoOsfle6As14A9w%3d&risl=&pid=ImgRaw&r=0"),
    Nature("Proche du centre de divertissement",
        "https://fscomps.fotosearch.com/compc/CSP/CSP994/%D8%AD%D8%AF%D9%8A%D9%82%D8%A9-%D8%A7%D9%84%D8%AA%D8%B3%D9%84%D9%8A%D8%A9-%D9%81%D9%8A-%D9%85%D9%86%D8%AA%D8%B5%D9%81-%D8%A7%D9%84%D8%B7%D8%B1%D9%8A%D9%82-%D8%A3%D9%84%D8%A8%D9%88%D9%85-%D8%A7%D9%84%D8%B5%D9%88%D8%B1__k16207633.jpg"),
    Nature("A proximité des centre d'activités sportives",
        "https://th.bing.com/th/id/OIP.gLBpMvefX1wtHDU0z8ZwtAHaE8?pid=ImgDet&rs=1"),
    Nature("Proche des activités commerciales",
        "https://th.bing.com/th/id/OIP.REcRb5cmoXRKVrkH8e_QXQHaE8?pid=ImgDet&w=820&h=547&rs=1"),
  ];

  HashSet<Nature> selectedItem = HashSet();
  bool isMultiSelectionEnabled = false;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: KMainColor,
        centerTitle: isMultiSelectionEnabled ? false : true,
        leading: isMultiSelectionEnabled
            ? IconButton(
                onPressed: () {
                  selectedItem.clear();
                  isMultiSelectionEnabled = false;
                  setState(() {});
                },
                icon: Icon(Icons.close))
            : null,
        title: Text(isMultiSelectionEnabled
            ? getSelectedItemCount():''),
        actions: [
          Visibility(
              visible: isMultiSelectionEnabled,
              child: IconButton(
                icon: Icon(
                  Icons.select_all,
                  color: selectedItem.length == natureList.length
                      ? kPrimaryLightColor
                      : Colors.white,
                ),
                onPressed: () {
                  if (selectedItem.length == natureList.length) {
                    selectedItem.clear();
                  } else {
                    for (int index = 0; index < natureList.length; index++) {
                      selectedItem.add(natureList[index]);
                    }
                  }
                  setState(() {});
                },
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
           Text("Sélectionnez les points forts de votre logement",
           textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:KMainColor),),
           const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: natureList.map((Nature nature) {
                return Card(
                    elevation: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      height: 70.0,
                      child: getListItem(nature),
                    ));
              }).toList(),
            ),
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
    );
  }
  String getSelectedItemCount() {
    return selectedItem.isNotEmpty
        ? selectedItem.length.toString() + " item selected"
        : "No item selected";
  }

  void doMultiSelection(Nature nature) {
    if (isMultiSelectionEnabled) {
      if (selectedItem.contains(nature)) {
        selectedItem.remove(nature);
      } else {
        selectedItem.add(nature);
      }
      setState(() {});
    } else {
      //Other logic
    }
  }
  InkWell getListItem(Nature nature) {
    return InkWell(
        onTap: () {
          doMultiSelection(nature);
        },
        onLongPress: () {
          isMultiSelectionEnabled = true;
          doMultiSelection(nature);
        },
        child: Stack(alignment: Alignment.centerRight, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                nature.url,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 38,
                      child: Text(nature.name,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                  ],
                ),
              )
            ],
          ),
          Visibility(
              visible: isMultiSelectionEnabled,
              child: Icon(
                selectedItem.contains(nature)
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                size: 30,
                color: KMainColor,
              ))
        ]));
  }
}
