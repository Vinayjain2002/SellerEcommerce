import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/const.dart';
import 'package:sellerecommerce/widgets/textStyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var bottomNavbar=[
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Dashboard"),
    BottomNavigationBarItem(icon: Image.asset(icProducts, color: darkGrey, width: 24,),label: "Products"),
    BottomNavigationBarItem(icon: Image.asset(icOrders, color: darkGrey, width: 24,),label: "Orders"),
    BottomNavigationBarItem(icon: Image.asset(icgeneralSettings, color: darkGrey, width: 24,),label:"Settings"),
  ];

  var navScreens=[];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: "Dashboard", color: fontGrey,size: 18.0),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: darkGrey,
        items: bottomNavbar,),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(

              )
            )
          ],
        ),
      ),
    );
  }
}
