import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBottom extends StatefulWidget {
  @override
  _LoginBottomState createState() => _LoginBottomState();
}

class _LoginBottomState extends State<LoginBottom> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(1000)),
      height: ScreenUtil.getInstance().setWidth(1100),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('flutter_assets/bg/register_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
