import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/AppColor.dart';
import 'package:flutter_assignment/constants/AppImages.dart';
import 'package:flutter_assignment/view/catergory_screen/category_view.dart';
import 'package:flutter_assignment/view/home_screen/home_view.dart';

import '../cart_screen/cart_view.dart';
import '../favourite_screen/favourite_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List isSelected = [true, false, false, false];
  int index = 0;
  List Page = const [
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[index],
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          child: Center(
            child:
                Icon(Icons.discount_outlined, color: AppColor.secondaryColor),
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: AppColor.secondaryColor,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home,
                  color: (isSelected[0]) ? Colors.black : Colors.white),
              onPressed: () {
                setState(() {
                  index = 0;
                  isSelected = [true, false, false, false];
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: IconButton(
                icon: Icon(Icons.category_outlined,
                    color: (isSelected[1]) ? Colors.black : Colors.white),
                onPressed: () {
                  setState(() {
                    index = 1;
                    isSelected = [false, true, false, false];
                  });
                },
              ),
            ),
            IconButton(
              //turny operator will be used and length of the list will be checked
              icon: Stack(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.favorite_border_outlined,
                          color:
                              (isSelected[2]) ? Colors.black : Colors.white)),
                  Positioned(
                    top: 1,
                    right: 0,
                    child: CircleAvatar(
                      radius: 6.5,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text('1',
                            style: TextStyle(
                                color: AppColor.secondaryColor, fontSize: 8)),
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  index = 2;
                  isSelected = [false, false, true, false];
                });
              },
            ),
            IconButton(
              //turny operator will be used and length of the list will be checked
              icon: Stack(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.shopping_cart_outlined,
                          color:
                              (isSelected[3]) ? Colors.black : Colors.white)),
                  Positioned(
                    top: 1,
                    right: 0.5,
                    child: CircleAvatar(
                      radius: 6.5,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text('1',
                            style: TextStyle(
                                color: AppColor.secondaryColor, fontSize: 8)),
                      ),
                    ),
                  ),
                ],
              ),
              // icon: const Image(
              //   image: AssetImage(NavigationBarIcon.NavCart),
              // ),
              onPressed: () {
                setState(() {
                  index = 3;
                  isSelected = [false, false, false, true];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
