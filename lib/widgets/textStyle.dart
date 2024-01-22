import 'package:flutter/material.dart';

Widget normalText({required text, required color,size=14.0}){
  return Text(text, style: TextStyle(color: color, fontSize: size));
}

Widget boldText({required text, required color, size=14.0}){
  return Text(text, style: TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: size),);
}