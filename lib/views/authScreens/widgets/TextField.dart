import 'package:flutter/material.dart';
import '../../../consts/colors.dart';

Widget InputTextField({required context,required hinttext,required type}){
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: purpleColor)
        ),
        suffix: GestureDetector(
            onTap: (){

            },
            child: Text("Send Otp",style: TextStyle(color: purpleColor,fontSize: 15),)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
        hintText: hinttext,
        hintStyle: TextStyle(color: purpleColor)
    ),
  );
}