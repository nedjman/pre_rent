import 'package:application/screens/signup_screen.dart';
import 'package:application/screens/trouver_votre_compte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/page_title_bar.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../core/constants.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_icon.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';
import 'create_new_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  imgUrl: "assets/images/login.png",
                ),
                const PageTitleBar(title: 'Connectez-vous à votre compte'),
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
                          height: 15,
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
                              const RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                              const RoundedPasswordField(hintText: 'Mot de passe',),
                              switchListTile(),
                              RoundedButton(text: 'LOGIN', press: (){},),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Vous n'avez pas de compte?",
                                navigatorText: "Inscrivez-vous ici",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const SignUpScreen())
                                  );
                                },
                              ),
                              const SizedBox(height: 20,),
                              InkWell(
                                child: Text("Oubliez mot de passe ?",
                                style: TextStyle(
                                    color: KMainColor,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                                ),
                          onTap: () {
                             Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const TrouverVotreCompte()));
                                },
                           ),
                              const SizedBox(height: 20,),
                              
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

switchListTile() {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 40),
    child: SwitchListTile(
      dense: true,
      title: const Text(
        'Remember Me',
        style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
      ),
      value: true,
      activeColor: KMainColor,
      onChanged: (val) {},
    ),
  );
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/twitter.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}


