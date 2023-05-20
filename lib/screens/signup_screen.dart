
import 'package:application/home/search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/page_title_bar.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../exemple.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/register.png",
                ),
                const PageTitleBar(title: 'Créer un nouveau compte'),
                Padding(
                  padding: const EdgeInsets.only(top: 300.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        iconButton(context),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Ou utilisez votre compte de messagerie",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Form(
                          child: Column(
                            children: [
                               RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                               RoundedInputField(
                                  hintText: "Nom", icon: Icons.person),
                               RoundedPasswordField(hintText: 'Mot de passe'),
                              RoundedButton( press:() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exemple(),));
                                  },
                                text: 'REGISTRE',
                              
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Vous avez déja un compte ?",
                                navigatorText: "Se connecter",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginScreen())
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

