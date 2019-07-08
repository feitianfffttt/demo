import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoingTop extends StatefulWidget {
  @override
  _LoingTopState createState() => _LoingTopState();
}

class _LoingTopState extends State<LoingTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(50)),
      height: ScreenUtil.getInstance().setWidth(1100),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('flutter_assets/bg/login_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: ScreenUtil.getInstance().setWidth(90),
            right: ScreenUtil.getInstance().setWidth(90)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(320),
            ),
            Theme(
              data: ThemeData(primaryColor: Colors.black),
              child: TextField(
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorRadius: Radius.circular(15.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(15),
            ),
            Theme(
              data: ThemeData(primaryColor: Colors.black),
              child: TextField(
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.access_alarm,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
                cursorColor: Colors.black,
                cursorRadius: Radius.circular(15.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(40),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Forget Password?',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil.getInstance().setSp(40),
                  )),
                  
            )
          ],
        ),
      ),
    );
  }
}