import 'package:application/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/page_title_bar.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';
import 'create_new_password.dart';

class TrouverVotreCompte extends StatelessWidget {
  const TrouverVotreCompte ({super.key});

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
                  imgUrl: "assets/images/Emails-amico.png",
                ),
                const PageTitleBar(title: 'Trouver votre compte'),
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

                             const Text(
                          "Entrez votre adresse e-mail",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                              const RoundedInputField(
                                  hintText: "exemple@gmail.com", icon: Icons.email),
                              RoundedButton(press: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPassword(),
                                 ),
                                 );
                              },
                                text: 'Rechercher',
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

