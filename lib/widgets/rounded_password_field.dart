import 'package:application/widgets/text_field_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/core/constants.dart';


class RoundedPasswordField extends StatelessWidget {
   RoundedPasswordField({ Key? key, required String hintText}) : super(key: key);

  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
 var showpass = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
         onChanged: (value) {
          password = value;
        },
        obscureText: showpass,
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
