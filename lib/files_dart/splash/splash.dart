import 'dart:async';
import 'package:bango_shop/controlpanel.dart';
import 'package:bango_shop/files_dart/aurth_app/authpage.dart';
import 'package:bango_shop/files_dart/homepage/homepage.dart';
import 'package:bango_shop/files_dart/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
class splash extends StatefulWidget {


  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  String pageopen = "aa";
  @override

  void initState() {
    getpageopen();
    Timer(Duration(seconds: 2), () {
      if  (pageopen=="1"){
      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage_app()));
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>main_controlpanel()));

      }
      else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>auth()));
      }
    });
  }
  @override
  getpageopen ()async {
    final prefersget = await SharedPreferences.getInstance();
    setState(() {
     pageopen = prefersget.getString("pagedecidevalue")!;


    });

  }
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF422C94),
      body: SafeArea (
        child: SingleChildScrollView (
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: hei,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("splash.gif")),
            color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
