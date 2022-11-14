import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:selter_app/util/view/splash_screen.dart';

class onboarding_screen extends StatelessWidget {
  List _lottie = [
    'assets/json/welcome.json',
    'assets/json/support.json',
    'assets/json/catrgory.json',
  ];
  List _title = [
    'welcome',
    'Catagory',
    'Support',
  ];
  List _description = [
    'Loram uses cookies to keep our sites reliable, improve performance, and to analyze how our sites are used',
    'Loram uses cookies to keep our sites reliable, improve performance, and to analyze how our sites are used',
    'Loram uses cookies to keep our sites reliable, improve performance, and to analyze how our sites are used',
  ];

   RxInt _currentIndex=0.obs;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                  flex: 3,
                  child:Lottie.asset(_lottie[_currentIndex.toInt()])
              ),
            ),

            Expanded(
              flex: 1,
              child: Card(

               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() => Text('${_title[_currentIndex.toInt()]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),),
                      // SizedBox(height: 10.h,),
                      Obx(()=>Text('${_description[_currentIndex.toInt()]}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       Obx(() =>  DotsIndicator(
                         dotsCount: _lottie.length,
                         position: _currentIndex.toDouble(),
                         decorator: DotsDecorator(
                           color: Colors.black87, // Inactive color
                           activeColor: Colors.redAccent,
                         ),
                       ),),
                          InkWell(
                            onTap: (){

                              if(_currentIndex==2){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => splash_screen(),));
                              }
                              else{
                                _currentIndex+1;
                              }


                            },
                            child: Container(

                              decoration: BoxDecoration(
                                shape: BoxShape.circle,


                              ),
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          )



                        ],
                      )
                      // ElevatedButton(onPressed: (){
                      //   _currentIndex+1;
                      //   print(_currentIndex);
                      //
                      // }, child: Text('Next'))
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      )
    );
  }
}

