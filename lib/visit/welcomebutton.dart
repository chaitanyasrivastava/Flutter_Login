import 'package:flutter/material.dart';
import 'package:login_page/screens/signin_screen.dart';
class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, this.butttonText, this.onTap, this.color, this.textColors});
  final String? butttonText;
  final Widget? onTap;
  final  Color? color;
  final Color? textColors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (e)=> onTap!),);
      },
       child :Container(
         padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: color!,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),

   child: Text (
     butttonText!,
   textAlign: TextAlign.center,
   style:  TextStyle(
     fontSize: 20.0,
     fontWeight: FontWeight.bold,
     color: textColors!,
   ),),
       ),

    );
  }
}
