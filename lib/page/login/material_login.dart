import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialLogin extends StatefulWidget {
  @override
  _MaterialLoginState createState() => _MaterialLoginState();
}

class _MaterialLoginState extends State<MaterialLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'flutter_assets/bg/loginScreen_bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                _loginTop(),
                _loginBottom(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _loginTop() {
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

  _loginBottom() {
    return Container(
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

//  child: Image.asset('flutter_assets/bg/login_bg.png'),
//  child: Image.asset('flutter_assets/bg/register_bg.png'),
