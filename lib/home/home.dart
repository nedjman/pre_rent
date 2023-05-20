import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 16),
            child: TextField(
              style: TextStyle(
                fontSize: 20,
                height: 1,
                color: Colors.black,
                fontWeight: FontWeight.bold,              
              ),
              decoration: InputDecoration(
                hintText: 'Ou allez-vous?',
                hintStyle: TextStyle(
                  fontSize: 26,
                  color: kPrimaryLightColor,
                ),
                enabledBorder: UnderlineInputBorder(      
                  borderSide: BorderSide(color:KMainColor),   
                ),  
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryLightColor),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color:kPrimaryLightColor),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: (16)),
                  child: Icon(
                    Icons.search,
                    color:kPrimaryLightColor,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Container(
                    height: 32,
                    child: Stack(
                      children: [

                        ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [

                            SizedBox(
                              width: 24,
                            ),
                            buildFilter("All"),
                            buildFilter("Appartement"),
                            buildFilter("Studio"),
                            buildFilter("Villa"),
                            buildFilter("Niveau la villa"),
                            buildFilter("Colocation"),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),                      
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
   Widget buildFilter(String filterName){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        )
      ),
      child: Center(
        child: Text(
          filterName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}