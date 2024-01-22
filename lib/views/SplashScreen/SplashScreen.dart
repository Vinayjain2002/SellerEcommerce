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
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.7),
                ),
                child: Image.asset(iclogo, fit: BoxFit.fill),
              ),
            ),
            const Spacer(),
            normalText(text: "@ Vinay jain", color: Colors.white, size: 18.0),
          ],
        ),
      ),
    );
  }
}
