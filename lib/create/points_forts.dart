import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import 'nature.dart';

class PointsForts extends StatefulWidget {
  const PointsForts({Key? key}) : super(key: key);

  @override
  State<PointsForts> createState() => _PointsFortsState();
}

class _PointsFortsState extends State<PointsForts> {
  List<Nature> natureList = [
    Nature("Près de la mosquée",
        "https://images.unsplash.com/photo-1589779677460-a15b5b5790ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
    Nature("Proche du l'hopital",
        "https://images.unsplash.com/photo-1520301255226-bf5f144451c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80"),
    Nature("Proche du l'école",
        "https://images.unsplash.com/photo-1504472478235-9bc48ba4d60f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
    Nature("Près de la mer",
        "https://images.unsplash.com/photo-1545579133-99bb5ab189bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Près de l'aéroport",
        "https://images.unsplash.com/photo-1545579133-99bb5ab189bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Proche du bus",
        "https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Proche du tramway",
        "https://images.unsplash.com/photo-1624964562918-0b8cf87deee6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Proche du centre de divertissement",
        "https://images.unsplash.com/photo-1597499216184-b56bf75f84c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("A proximité des centre d'activités sportives",
        "https://images.unsplash.com/photo-1558102822-da570eb113ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Proche des activités commerciales",
        "https://images.unsplash.com/photo-1545579133-99bb5ab189bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
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
            ? getSelectedItemCount()
            : "Sélectionnez les points forts de votre logement"),
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
      body: ListView(
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
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 18.0,
                      child: Text(nature.name,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ),
                    const SizedBox(
                      height: 18,
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
