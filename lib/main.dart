import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sellerecommerce/views/SplashScreen/SplashScreen.dart';
import 'package:sellerecommerce/views/authScreens/loginScreen.dart';
import 'firebase_options.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seller Ekart Login",
      home:  SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,elevation: 0),
        tooltipTheme: const TooltipThemeData(
          textStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
      // we are going to show the splash Screen ie when the app starts
      );
  }
}
