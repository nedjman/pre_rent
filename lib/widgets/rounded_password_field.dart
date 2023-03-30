import 'package:application/widgets/text_field_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/core/constants.dart';


class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({ Key? key, required String hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: KMainColor,
         decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: KMainColor,
            ),
            hintText: "Mot de passe",
            hintStyle:  TextStyle(fontFamily: 'OpenSans'),
            suffixIcon: Icon(
              Icons.visibility,
              color: KMainColor,
            ),
            border: InputBorder.none
         ),
      ),
      );
  }
}
