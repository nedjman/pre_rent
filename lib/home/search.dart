
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import 'data.dart';
import 'detail.dart';
import 'filter.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<Property> properties = getPropertyList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: kPrimaryLightColor,
        backgroundColor: Colors.white,
        color: kPrimaryLightColor,
        animationDuration: Duration(seconds: 1),
        animationCurve: Curves.bounceOut,
        items: <Widget>[
          Icon(Icons.home,color: KMainColor,),
          Icon(Icons.message,color: KMainColor,),
          Icon(Icons.notifications_active,color: KMainColor,),
          Icon(Icons.favorite,color: KMainColor,),
          Icon(Icons.person,color: KMainColor,),

        ],
        onTap: (index){
          
        },
      ),
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

                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 28,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                    KMainColor,
                                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
                                ],
                              ),
                            ),
                          ),
                        ),                      

                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    _showBottomSheet();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 24),
                    child: Text(
                      "Filters",
                      style: TextStyle(
                        color: KMainColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 24, left: 24, top: 24, bottom: 12),
            child: Row(
              children: [

                Text(
                  "53",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: KMainColor,
                  ),
                ),

                SizedBox(
                  width: 8,
                ),

                Text(
                  "Results found",
                  style: TextStyle(
                    color: KMainColor,
                    fontSize: 24,
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: buildProperties(),
              ),
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

  List<Widget> buildProperties(){
    List<Widget> list = [];
    for (var i = 0; i < properties.length; i++) {
      list.add(
        Hero(
          tag: properties[i].frontImage, 
          child: buildProperty(properties[i], i)
        )
      );
    }
    return list;
  }

  Widget buildProperty(Property property, int index){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(property: property)),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 24),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          height: 210,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(property.frontImage), 
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: 80,
                  padding: EdgeInsets.symmetric(vertical: 4,),
                  child: Center(
                    child: Text(
                      "FOR " + property.label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(),
                ),

                Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          property.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          r"$" + property.price,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 4,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 14,
                            ),

                            SizedBox(
                              width: 4,
                            ),

                            Text(
                              property.location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),

                            SizedBox(
                              width: 8,
                            ),

                            Icon(
                              Icons.zoom_out_map,
                              color: Colors.white,
                              size: 16,
                            ),

                            SizedBox(
                              width: 4,
                            ),

                            Text(
                              property.sqm + " sq/m",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 14,
                            ),

                            SizedBox(
                              width: 4,
                            ),

                            Text(
                              property.review + " Reviews",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context){ 
        return Wrap(
          children: [
            Filter(),
          ],
        );
      }
    );
  }

}