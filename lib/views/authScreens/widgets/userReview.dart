import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/colors.dart';

Widget UserReview({required context,required image,required message, required details}){
  return Container(
    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.grey,spreadRadius: 1,blurRadius:1)
      ],
      borderRadius: BorderRadius.circular(10)
    ),
    width: MediaQuery.of(context).size.width * 0.8,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Place the CircleAvatar at the start
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.07,
          child: ClipOval(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Add spacing between the CircleAvatar and the Container
        SizedBox(width: MediaQuery.of(context).size.width * 0.04),

        // The rest of the content
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(color: purpleColor, fontSize: 13,),
                softWrap: true,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                details,
                style: TextStyle(color: purpleColor, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );

}

// Container(
// color: Colors.black54,
// width: MediaQuery.of(context).size.width*0.7,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// CircleAvatar(
// backgroundColor: Colors.blue,
// radius: MediaQuery.of(context).size.width*0.08,
// child: ClipOval(child: Image.asset(image, fit: BoxFit.cover,)),
// ),
// SizedBox(height: MediaQuery.of(context).size.width*0.1,),
// Container(
// width: MediaQuery.of(context).size.width*0.5,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Text(message, style: TextStyle(color: purpleColor,fontSize: 15,),softWrap: true,),
// Text(details, style: TextStyle(color: purpleColor, fontSize: 12),)
// ],
// ),
// )
// ],
// ),
// );