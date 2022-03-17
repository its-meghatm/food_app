import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/utils/constant.dart';
import 'package:food_app/src/utils/utils.dart';
import 'package:food_app/src/widgets/large_text_widget.dart';

import '../widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
             //SizedBox(height: screenHeight(context,dividedBy: 60),),
          Center(child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.amber[200],
            child: Icon(Icons.person,
              color: Colors.white,size: 50,),
          )),
          //SizedBox(height: screenHeight(context,dividedBy: 60),),
          ProfileWidget(bigText: LargeText(text: "megha",), appIcon: Icons.person,),
          ProfileWidget(bigText: LargeText(text: "7510256951",), appIcon: Icons.call,color: AppColors.iconColor1,),
          ProfileWidget(bigText: LargeText(text: "meghamanoharan72@gmail.com",), appIcon: Icons.mail,color: AppColors.iconColor1),
          ProfileWidget(bigText: LargeText(text: "Fill in your address",), appIcon: Icons.location_on,color: AppColors.iconColor1),
          ProfileWidget(bigText: LargeText(text: "none",), appIcon: Icons.message,color: Colors.deepOrange,),
        ],
      ),
    );
  }
}
