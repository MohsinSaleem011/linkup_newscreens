import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SponsorImage.dart';

class CouponImage extends StatelessWidget {
  const CouponImage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Group 163959 (4).png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Coupon Image",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    size: 42,
                    color: Colors.white,
                  ),
                  Text(
                    "ADD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            largetext('Ticket (Coupon Select)'),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                smalltext('Select'),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 56, 170, 215),
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Title (Coupon Title)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('Title'),
            SizedBox(
              height: 15.h,
            ),
            largetext('Description (Coupon Description)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('Description'),
            SizedBox(
              height: 50.h,
            ),
            largetext('Code (Coupon Code)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('12345789'),
            SizedBox(
              height: 15.h,
            ),
            largetext('Discount Type (Coupon Type)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('Type'),
            SizedBox(
              height: 15.h,
            ),
            largetext('Discount (Coupon Discount)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('0000'),
            SizedBox(
              height: 15.h,
            ),
            largetext('Expiry Date (Coupon Title)'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('Date'),
            SizedBox(
              height: 15.h,
            ),
            largetext('Status live/dead'),
            SizedBox(
              height: 6.h,
            ),
            smalltext('Live'),
            SizedBox(
                    height: 25.h,
                  ),
                  Center(
                    child: Container(
                      height: 30.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 56, 170, 215),
                          borderRadius: BorderRadius.circular(4)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                            return SponsorImage();
                          }));
                          },
                          child: Center(
                              child: Text(
                            'PUBLISH',
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),
                  ),
          ],
        )),
      ),
    );
  }

  Padding smalltext(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 10.sp,
            color: Color.fromARGB(255, 110, 110, 110),
         ),
      ),
    );
  }

  Padding largetext(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
