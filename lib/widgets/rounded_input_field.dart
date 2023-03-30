import 'package:application/widgets/text_field_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/core/constants.dart';


class RoundedInputField extends StatelessWidget {
  const RoundedInputField({Key? key, this.hintText, this.icon = Icons.person})
      : super(key: key);
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
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
