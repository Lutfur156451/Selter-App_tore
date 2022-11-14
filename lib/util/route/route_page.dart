
import 'package:get/get.dart';
import 'package:selter_app/util/view/onboarding_screen.dart';
import 'package:selter_app/util/view/splash_screen.dart';


const String splash='/splash_screen';
const String onborading='/onboarding_screen';
//Control oure page route flow



List<GetPage>getpages=[

  GetPage(name: splash, page: ()=>splash_screen()),
  GetPage(name: onborading, page: ()=>onboarding_screen())
];