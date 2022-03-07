import 'package:flutter/material.dart';
import 'package:food_app/src/utils/constant.dart';
import 'package:food_app/src/widgets/large_text_widget.dart';
import 'package:food_app/src/widgets/small_text_widget.dart';

import 'food_page_body.dart';
class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
            child: Container(
              margin: EdgeInsets.only(top: 12,bottom: 15),
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children:  [
               LargeText(text: "Kerala",
                 color: AppColors.mainColor,
                 size: 25,
               ),
                    SmallText(text: "Tamilnadu")
                ],),
                Center(
                  child: Container(
                    height: 45,
                    width: 45,
                  child: Icon(Icons.search,color: AppColors.iconColor1),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(10)
                  ),),
                )
              ],),
            ),
    ),
             Expanded(
              child: SingleChildScrollView(
                  child: FoodPageBody()),
            ),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_menu_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: AppColors.mainColor,
      onTap: _onItemTapped,
    ),
    );
  }
}
