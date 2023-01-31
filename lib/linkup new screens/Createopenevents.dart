import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Controllers/controller.dart';
import 'CouponImage.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.eventtitleController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Event Title",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Description'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.discriptionController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Discription",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.eventcategoryController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Coorporate",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Address'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      scrollPadding: EdgeInsets.all(20),
                      controller: authController.eventaddress,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Address",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Type'),
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        scrollPadding: EdgeInsets.all(20),
                        controller: authController.eventtypeController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Type",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      )),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: largetext('Event Start Time'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: largetext('Event Start Date'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DateTimeField(
                          controller: authController.starttimeController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "Time",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: DateTimeField(
                            controller: authController.startdateController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                hintText: "Date",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                            format: format,
                            onShowPicker: (context, currentValue) {
                              return showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  initialDate: currentValue ?? DateTime.now(),
                                  lastDate: DateTime(2100));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: largetext('Event End Time'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: largetext('Event End Date'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DateTimeField(
                          controller: authController.endtimeController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "Time",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: DateTimeField(
                            controller: authController.enddateController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                hintText: "Date",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                            format: format,
                            onShowPicker: (context, currentValue) {
                              return showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  initialDate: currentValue ?? DateTime.now(),
                                  lastDate: DateTime(2100));
                            },
                          ),
                        ),
                      ),
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
                    children: [
                      Expanded(child: largetext('Early Bird General (Price)')),
                      SizedBox(width: 40.w),
                      Expanded(child: largetext('#of Seats'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.generalController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "\$0000",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.seats1Controller,
                            decoration: InputDecoration(
                                hintText: "2",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: largetext('Early Bird VIP (Price)')),
                      SizedBox(width: 40.w),
                      Expanded(child: largetext('#of Seats'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.vipController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "\$0000",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.seats2Controller,
                            decoration: InputDecoration(
                                hintText: "2",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: largetext('General (Price)')),
                      SizedBox(width: 40.w),
                      Expanded(child: largetext('#of Seats'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.generalpriceController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "\$0000",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.seats3Controller,
                            decoration: InputDecoration(
                                hintText: "2",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: largetext('VIP (Price)')),
                      SizedBox(width: 40.w),
                      Expanded(child: largetext('#of Seats'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.vippriceController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "\$0000",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.seats4Controller,
                            decoration: InputDecoration(
                                hintText: "2",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Early Bird Price active until (date)'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: DateTimeField(
                      controller: authController.earlybirddateController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Date",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                      format: format,
                      onShowPicker: (context, currentValue) {
                        return showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('EMAIL'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Phone'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.phoneController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "123 456 789",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Website'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.websiteController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "www",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: largetext('Country')),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(child: largetext('State')),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(child: largetext('City'))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.countryController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "Country",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: authController.stateController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "State",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.cityController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                hintText: "City",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Event Disclaimer'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextFormField(
                      controller: authController.disclaimerController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Event Disclaimer",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: largetext('Event Latitude')),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(child: largetext('Event Longitude')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: authController.latitudeController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "11 64 8 64 3",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: authController.longitudeController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "11 64 8 64 3",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  largetext('Live / Dead'),
                  TextFormField(
                    controller: authController.livedeadController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "live/dead",
                        hintStyle: TextStyle(fontSize: 10.sp)),
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
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
