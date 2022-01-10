import 'package:bango_shop/files_dart/aurth_app/passwordreset.dart';
import 'package:bango_shop/files_dart/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:double_back_to_close/double_back_to_close.dart';

void main() {
  runApp(mainclass());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFF3BB73E)));
}

class mainclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoubleBack(child: splash()),
    );
  }
}
