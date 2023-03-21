import 'package:application/core/utils/size_config.dart';
import 'package:application/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.title, required this.subTitle, required this.image});

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! *22,
          child: Image.asset(image)),
        const VerticalSpace(3),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 21,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(1.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal :8.0),
            child: Text(
            subTitle,
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 15,
              color: const Color(0xff78787c),
            ),
            textAlign: TextAlign.center,
                  ),
          ),
      ],
    );
  }
}
//