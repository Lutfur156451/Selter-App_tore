import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selter_app/const/app_string.dart';
import 'package:get/get.dart';

import '../route/route_page.dart';
class splash_screen extends StatelessWidget {
  const splash_screen({Key? key}) : super(key: key);
  // Timer(Duration(),)

  @override
  Widget build(BuildContext context) {
    Future.delayed( Duration(seconds:3 ), ()=>Get.toNamed(onborading));
    // Timer(Duration(seconds:10 ), ()=>Get.toNamed(onborading));

    return Scaffold(
      body: Container(
        width: double.maxFinite,  // new center for
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset('assets/logo/app_logo.png',height: 200.h,),
              SizedBox(height: 20.h),
              Text(AppSting.APP_NAME,style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
