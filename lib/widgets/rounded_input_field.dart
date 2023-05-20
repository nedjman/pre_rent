import 'package:application/widgets/text_field_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/core/constants.dart';


class RoundedInputField extends StatelessWidget {
   RoundedInputField({Key? key, this.hintText, this.icon = Icons.person})
      : super(key: key);
  final String? hintText;
  final IconData icon;
  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
 var showpass = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: (value) {
          email = value;
        },
        cursorColor: KMainColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: KMainColor,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'OpenSans'),
            border: InputBorder.none
            ),
      ),
    );
  }
}
