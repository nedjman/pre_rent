import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.dotIndex});
 final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
          decorator: DotsDecorator(
            color: Colors.transparent,
          activeColor: KMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: KMainColor),
          )
          ),
          dotsCount: 3,
          position: dotIndex!,
          );
  }
}