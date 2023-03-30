import 'package:flutter/cupertino.dart';
import 'package:application/core/constants.dart';


class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({ Key? key,this.child }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal:20,vertical:3),
      width: size.width *0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
