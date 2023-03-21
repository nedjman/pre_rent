import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';
import '../utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key , this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap :onTap,
    child : Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
      color: KMainColor,
      borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text!,
           style: TextStyle(
              fontSize: 14,
              color: const Color(0Xffffffff),
              fontWeight: FontWeight.w500,
            ),
           textAlign: TextAlign.left,
        ),
      ),
      )
    );
  }
}