import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/colors.dart';
import 'package:sellerecommerce/consts/const.dart';
import 'package:sellerecommerce/views/authScreens/RegisterScreen.dart';
import 'package:sellerecommerce/views/home.dart';
import 'package:sellerecommerce/widgets/SubmitButton.dart';
import 'package:sellerecommerce/widgets/textStyle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: purpleColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30,),
                normalText(text: welcome, color: white, size: 18.0),
                SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                Container(
                width: MediaQuery.of(context).size.width*0.3,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(iclogo,fit: BoxFit.fill,),
                                ),
                SizedBox(width: 10,),
                boldText(text: appname, color: white, size: 22.0),
                SizedBox(height: MediaQuery.of(context).size.width*0.1),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                          TextFormField(
                            decoration:InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email, color: purpleColor,),

                              hintText: "vendor@gmail.com",

                            )
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration:InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock, color: purpleColor,),

                              hintText: "****",

                            )
                          ),
                           // here we are going to define the forget Password
                          Align(
                            alignment: Alignment.centerRight,
                              child: TextButton(onPressed: (){}, child:normalText(text: "Forget Password", color: Colors.grey),)),
                            SizedBox(height: 6,),
                           SizedBox(
                             width: MediaQuery.of(context).size.width*1,
                               child: SubmitButton(title: login, onPress: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                               }
                               )
                           ),

                      SizedBox(height: 15,),
                      Text("Or.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSeller()));
                        },
                        child: Text("Register Here.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,wordSpacing: 4,letterSpacing: 1),),
                      ),
                      SizedBox(height: 20,),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //     child: normalText(text: anyProblem, color: Colors.grey,size: 12.0))
                    ],
                  ),
                ),

                // here we are defining the logic for the admin Permissions
                SizedBox(height: MediaQuery.of(context).size.height*0.15),
                Center(
                  child: boldText(text: "@ Vinay jain", color: Colors.white,size: 17.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
