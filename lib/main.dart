import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selter_app/const/app_color.dart';
import 'package:selter_app/const/app_string.dart';
import 'package:selter_app/util/route/route_page.dart';
import 'package:selter_app/util/view/splash_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_,child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title:AppSting.APP_NAME,

          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(),
            ),
            scaffoldBackgroundColor: Appcolor.Scaffoldcolor,
          ),

          initialRoute: splash,
          getPages: getpages,

          home: splash_screen(),
        );
      },
    );
  }
}


