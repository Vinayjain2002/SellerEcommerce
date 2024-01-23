import 'package:flutter/material.dart';
import 'package:sellerecommerce/consts/colors.dart';
import 'package:sellerecommerce/consts/const.dart';

Widget WhySell({required context}){

  List whySellIcon=[Icon(Icons.local_shipping,),Icon(Icons.exposure_zero), Icon(Icons.person), Icon(Icons.arrow_downward), Icon(Icons.calculate), Icon(Icons.access_time), Icon(Icons.money), Icon(Icons.phone_android)];
  List whySellHeading=["Sell Across India", "Higher Profits","Account Management", "Lower Return CHarges", "Simple Pricng Calculator", "24x7 Seller Support", "Fast & Regular Payment","Buisness on the go" ];
  List whySellDescription=[
    "Reach Over 50 crore+ customers across 27000+ pincodes",
    "With 0% commision, you take 100% profit with you.",
    "Our Dedicated managers will help your Buisness on eMart",
    "With our flat or return charges, ship your product stress-free",
    "Use our simple pricing calculator to decide the best and compettetive selling price for your product"
    ,"All the Queries and issues are ansered by our dedicated seller Support Team"
    ,"Get payments as fast as 7-10 date from the date of dispatch",
    "Download our eMart Seller app to manage your buisness anywhere, anytime"
  ];
  return Container(
    padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.03),
    decoration: BoxDecoration(
      color: purpleColor.withOpacity(0.15),
      border: Border.all(color: purpleColor.withOpacity(0.35),width: 2),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Text("Why sell on eMart?",style: TextStyle(color: purpleColor,fontSize: MediaQuery.of(context).size.width*0.08,fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index)=> Container(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.009),
              child: ListTile(
                leading:CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: MediaQuery.of(context).size.width*0.06,
                  child: ClipOval(
                      child: whySellIcon[index],
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(whySellHeading[index], style: TextStyle(color: purpleColor,fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 2,),
                    Text(whySellDescription[index], style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),softWrap: true,maxLines: 2,overflow: TextOverflow.ellipsis,)
                  ],
                ),
              ),
            ),
          itemCount: 8,
        )
      ],
    ),
  );
}