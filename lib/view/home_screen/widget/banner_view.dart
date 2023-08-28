import 'package:flutter/material.dart';

import '../../../constants/AppColor.dart';

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Offer of the Week',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 16,
                    color: Color(0xFFA5A5BA),
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Avocado Chicken \nSalad",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish'),
                    textAlign: TextAlign.start),
                SizedBox(
                  height: 5,
                ),
                //Cafe Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_location,
                      color: Colors.red,
                      size: 15,
                    ),
                    Text(
                      'Cafe Bistrovia - Baku, Azerbaijan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Mulish'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                // Review & Star
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(2.5k Reviews)',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Mulish'),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //Depreciated price & Offer Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //DEpreciated Price
                    Text(
                      '20.40Rs',
                      style: TextStyle(
                          color: Color(0xFF0C9BFE),
                          fontSize: 20,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                    //Offer Price
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '15.40Rs',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/food.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
