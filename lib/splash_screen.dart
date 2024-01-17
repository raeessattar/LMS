import 'dart:async';

import 'package:admin_teacher_student/home_screen.dart';
import 'package:admin_teacher_student/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;

    if(isLogin){
      Timer(Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    }else{
      Timer(Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        image: NetworkImage('https://d3rf6j5nx5r04a.cloudfront.net/Z8VxT_L3FAx-T3wxo8xQRbT9SvI=/900x0/product/3/3/c107a9717a8f46fb9ab364cd084cdf01_opt.jpg'),
      ),
    );

  }
}
