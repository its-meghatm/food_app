import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController editingController;
  final String hintText;
  final IconData iconData;
  const AppTextField({Key? key,required this.editingController,required this.hintText, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // TextEditingController mailEditingController=TextEditingController();
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1,10),
                color: Colors.grey.withOpacity(0.2)
            )
          ],
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        controller: editingController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(iconData,color: Colors.amber[700],),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.white)),

        ),
      ),
    )
    ;
  }
}
