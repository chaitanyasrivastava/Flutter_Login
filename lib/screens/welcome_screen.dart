import 'package:flutter/material.dart';
import 'package:login_page/screens/signin_screen.dart';
import 'package:login_page/screens/signup_screen.dart';
import 'package:login_page/theme/theme.dart';
import 'package:login_page/visit/custom_scaffold.dart';
import 'package:login_page/visit/welcomebutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(

            flex : 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Back!\n",
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "\n Enter your personal details to your account ",
                        style: TextStyle(
                          fontSize: 20,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
           Flexible(
             flex : 1,
            child : Align(
              alignment: Alignment.bottomRight,

child: SingleChildScrollView( child : Row(
                           children: [const  Expanded(
                               child: WelcomeButton(
                                    butttonText: "Sign in",
                                   onTap : SignInScreen(),
                                   color: Colors.transparent,
                                   textColors: Colors.white,
                )),

                 Expanded(

                  child: WelcomeButton(
                  butttonText: "Sign up",
                  onTap : const SignUpScreen(),
                  color: Colors.white,
                  textColors: lightColorScheme.primary,


                ),),

              ],
            ),
          ),
           ),
    //Padding(padding: const EdgeInsets.only(
      //bottom: 30,

     // ),
           ),
   // ),
        ],
      ),
    );
  }
}
