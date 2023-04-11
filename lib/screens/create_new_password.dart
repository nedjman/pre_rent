
import 'package:application/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/page_title_bar.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../core/constants.dart';
import '../create/points_forts.dart';
import '../create/type_facturation.dart';
import '../create/types_facturation.dart';
import '../home/home.dart';
import '../home/search.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';
import 'login_screen.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword ({super.key});

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
                  imgUrl: "assets/images/Reset password.png",
                ),
                const PageTitleBar(title: 'Réinitialiser le mot de passe'),
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
                          height: 20,
                        ),      
                        Form(
                          child: Column(
                            children: [
                              const RoundedPasswordField(
                                  hintText: "Mot de passe"),
                              const RoundedPasswordField(
                                  hintText: "Confirmer mot de passe"),
                              RoundedButton( press: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => TypesFacturation(),
                                 ),
                                 );
                              },
                                text: 'Sauvegarder',
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                               UnderPart(
                                title: "Vous n'avez pas de compte ?",
                                navigatorText: "Inscrivez-vous ici",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const SignUpScreen())
                                  );
                                },
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

