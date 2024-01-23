import 'package:sellerecommerce/consts/const.dart';
import 'package:sellerecommerce/views/authScreens/widgets/TextField.dart';
import 'package:sellerecommerce/views/authScreens/widgets/WhySell.dart';
import 'package:sellerecommerce/views/authScreens/widgets/userReview.dart';
import 'package:sellerecommerce/widgets/textStyle.dart';

class RegisterSeller extends StatefulWidget {
  const RegisterSeller({super.key});

  @override
  State<RegisterSeller> createState() => _RegisterSellerState();
}

class _RegisterSellerState extends State<RegisterSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.08,
        iconTheme: const IconThemeData(color: Colors.white,size: 25),
        title: const Text("Register Here",style: TextStyle(color: Colors.white,fontSize: 22),),
      ),
      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02,vertical: MediaQuery.of(context).size.height*0.01),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04,vertical: MediaQuery.of(context).size.height*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Container(
                    //     width: MediaQuery.of(context).size.width*1,
                    //     decoration: BoxDecoration(
                    //         color: purpleColor.withOpacity(0.15),
                    //         borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.03),
                    //         border: Border.all(color: purpleColor.withOpacity(0.25),width: 1)
                    //     ),
                    //     child: TabBar(
                    //       controller: _tabController,
                    //       indicatorWeight: 5.0,
                    //       tabs: [
                    //         Tab(text: 'Tab 1'),
                    //         Tab(text: 'Tab 2'),
                    //         Tab(text: 'Tab 3'),
                    //       ],
                    //     )
                    // ),
                    //todo we need to implement the Text that used to show the things
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Column(
                      children: <Widget>[
                        InputTextField(context: context, hinttext: "Enter Phoneno",type: "phone"),
                        SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                        InputTextField(context: context, hinttext: "Enter Email Id",type: "email"),
                        SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                        TextFormField(  decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: purpleColor)
                          ),
                            contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                            hintText: "Enter GSTIN",
                            hintStyle: const TextStyle(color: purpleColor)
                        ),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        normalText(text: "GSTIN is required to sell products on eMart. You can also share it in the final Step", color: purpleColor,size: 10.0),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02),
                      child: const Text("People's Review",softWrap: true,style: TextStyle(fontSize: 16),),
                    ),
                    const SizedBox(height: 5),
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: MediaQuery.of(context).size.height*0.18,
                        enlargeCenterPage: true,
                        itemCount: 4,
                        itemBuilder: (context,index){
                          return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                              child: UserReview(context: context,image: imP1, message: "eMart helped me in reaching to a varse Customers", details: "Vinay jain, panipat"));
                        }
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.black54,
                          boxShadow:  [
                            BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1)
                          ]
                      ),
                      width: MediaQuery.of(context).size.width*1,
                      height: MediaQuery.of(context).size.height*0.3,
                      child: Image.asset(b1,fit: BoxFit.cover,),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    WhySell(context: context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

