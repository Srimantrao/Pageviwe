// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../utils/image.dart';
import '../utils/string.dart';

class Commane_Page extends StatefulWidget {

  //To Change Value (Data Transfar)
  final String pageimage;
  final String pageString;

  const Commane_Page(

      //Requird change Widget's
      {super.key, required this.pageimage, required this.pageString});

  @override
  State<Commane_Page> createState() => _Commane_PageState();
}

class _Commane_PageState extends State<Commane_Page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //Full Vartical Body
    return Column(

      //All Elimants to a Center
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //BhaneShree Chockrao image's
        Image.asset(

          //(Tranfar a String Data)
          widget.pageimage,
          scale: 1,
        ),

        //Text
        //with (1.2 Width)
        SizedBox(
          width: size.width / 1.2,
          child: Text(

            //All Text Elimants are Center
            textAlign: TextAlign.center,

            //(Tranfar a String Data)
            widget.pageString,

            //Text (TextStyle)
            style: TextStyle(
              fontSize: size.width / 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
