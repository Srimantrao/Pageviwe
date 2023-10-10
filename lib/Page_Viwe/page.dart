// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pageviwe/utils/string.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../PageList/commen_PageViwe.dart';
import '../PageList/pageviwe_list.dart';

class Page_Viwe extends StatefulWidget {
  const Page_Viwe({super.key});

  @override
  State<Page_Viwe> createState() => _Page_ViweState();
}

class _Page_ViweState extends State<Page_Viwe> {


  //Page Conatroller to initialpage
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  //Animated Starting index (To Change Value)
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //To All Page
    return Scaffold(

      //Bottem Navigation (Custam Bottem Navigation)
      bottomNavigationBar: Container(
        width: size.width,
        height: size.height / 15,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //Skip Button
              InkWell(
                onTap: (){},
                child: Text(
                  Horizontal_Conatiner_Taxt.skip,

                  //Skip Button (TextStyle)
                  style: TextStyle(
                    fontSize: size.width / 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //AnimatedSmoothIndicator
              AnimatedSmoothIndicator(
                curve: Curves.bounceOut,

                //Animated index
                activeIndex: activeIndex,

                //Listage Length
                count: listpage.length,
                effect: const SwapEffect(
                  dotColor: Colors.black12,
                  dotWidth: 12,
                  dotHeight: 4,
                  spacing: 4,
                ),
              ),

              //Next Button
              InkWell(
                onTap: () {
                  controller.nextPage(
                    duration: const Duration(seconds: 3),
                    curve: Curves.bounceOut,
                  );
                },
                child: Text(
                  Horizontal_Conatiner_Taxt.next,

                  //Next Button (TextStyle)
                  style: TextStyle(
                    fontSize: size.width / 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //Flull Body
      body: Container(

        //Flull Body Height width
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(color: Colors.white),

        //PageViwe
        child: PageView.builder(
          controller: controller,
          onPageChanged: (value) {
            activeIndex = value;
            setState(() {});
          },

          //itemCount (Listpage Lanth)
          itemCount: listpage.length,

          //item Builder
          itemBuilder: (BuildContext context, int index) {

            //Listage
            return Commane_Page(
              pageimage: listpage[index].image,
              pageString: listpage[index].text,
            );
          },
        ),
      ),
    );
  }
}
