import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/const.dart';
import 'package:sellerecommerce/views/authScreens/loginScreen.dart';
import 'package:sellerecommerce/widgets/textStyle.dart';

import '../../consts/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigator();
  }

  void navigator() async {
    // Use the await keyword to wait for the delay to complete
    await Future.delayed(Duration(seconds: 3));

    // Use context from the BuildContext where the widget is created
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: purpleColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Center(

              child: Column(
                  children: [
                 Image.asset(iclogo, fit: BoxFit.fill,width: MediaQuery.of(context).size.width*0.25,),
                    SizedBox(height: 10,),
                    Text("eMart Seller Hub",style: TextStyle(color: Colors.white, fontSize: 21,fontWeight: FontWeight.w500,wordSpacing: 5),)
              ]),
            ),
            const Spacer(),
            normalText(text: "@ Vinay jain", color: Colors.white, size: 18.0),
          ],
        ),
      ),
    );
  }
}
