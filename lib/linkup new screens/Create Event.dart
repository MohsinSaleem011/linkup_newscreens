import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CouponImage.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
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
              height: 50.h,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Create Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 130.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Group 163959 (4).png'),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Icon(
                      Icons.add,
                      size: 42,
                      color: Colors.white,
                    ),
                    Text(
                      "Upload Cover Image",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  largetext('Event Title'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Toyota'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Description'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Description'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                              color: Color.fromARGB(255, 56, 170, 215),
                              width: 2)),
                      child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 56, 170, 215),
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(child: Text('Organizer Image')),
                  SizedBox(
                    height: 30.h,
                  ),
                  largetext('Event Category'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Coorporate'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Address'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Address'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Type'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Type'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('Event Start Time'),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: largetext('Event Start Date'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('Time'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 115),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: smalltext('Date'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('Event End Time'),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: largetext('Event End Date'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('Time'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 115),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: smalltext('Date'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event is free'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 0,
                              groupValue: 'null',
                              onChanged: (index) {}),
                          Text('Yes')
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 0,
                              groupValue: 'null',
                              onChanged: (index) {}),
                          Text('No')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('Early Bird General (Price)'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: largetext('#of Seats'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('\$0000'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: smalltext('2'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('Early Bird VIP (Price)'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: largetext('#of Seats'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('\$0000'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: smalltext('2'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('General (Price)'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: largetext('#of Seats'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('\$0000'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: smalltext('2'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('VIP (Price)'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: largetext('#of Seats'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('\$0000'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: smalltext('2'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Early Bird Price active until (date)'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Date'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('EMAIL'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Email'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Phone'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('123 456 789'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Website'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('www'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      largetext('Country'),
                      SizedBox(
                        width: 70.w,
                      ),
                      largetext('State'),
                      SizedBox(
                        width: 70.w,
                      ),
                      largetext('City'),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('Country'),
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      smalltext('State'),
                      SizedBox(
                        width: 75.w,
                      ),
                      smalltext('City'),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Disclaimer'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('Event Disclaimer'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      largetext('Event Latitude'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: largetext('Event Longitude '),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: smalltext('11 64 8 64 3'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: smalltext('11 64 8 64 3'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Live / Dead'),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: smalltext('live/dead'),
                  ),
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
                            return CouponImage();
                          }));
                          },
                          child: Center(
                              child: Text(
                            'NEXT',
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Text smalltext(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Color.fromARGB(255, 110, 110, 110),
        fontSize: 10.sp,
      ),
    );
  }

  Text largetext(String title) {
    return Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
