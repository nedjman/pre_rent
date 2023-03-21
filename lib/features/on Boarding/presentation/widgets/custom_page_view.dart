import 'package:application/features/on%20Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image:'assets/images/Tiny house.png',
          title: 'Bienvenue Sur RenHouse',
          subTitle: 'RenHouse pour la location immobilière,qui vous aidera a trouver l appartement, le studio ou une villa que vous souhaitez', 
        ),
         PageViewItem(
          image:'assets/images/House searching.png',
          title: 'Arretez de recherche',
          subTitle: 'Créez tout simplement un compte RenHouse et choisissez le bien qui vous convient au meilleur prix', 
        ),
         PageViewItem(
          image:'assets/images/Apartment rent.png',
          title: 'Trouvez une maison qui vous convient',
          subTitle: 'RenHouse vous garantit le prix et la qualité de votre location en vous offrant des services distingués', 
        ),
      ],
    );
  }
}