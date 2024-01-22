import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/colors.dart';

Widget SubmitButton({required title, color=purpleColor,required onPress}){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
        onPressed: onPress,
        child: Text(title, style: TextStyle(fontSize: 18.0, letterSpacing:1,fontWeight: FontWeight.w500, color: Colors.white),),
    );
}