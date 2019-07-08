import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight,
        left: ScreenUtil.getInstance().setWidth(20),
        right: ScreenUtil.getInstance().setWidth(20),
      ),
      height: ScreenUtil.getInstance().setWidth(90)+ScreenUtil.statusBarHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Home',
            style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(40),
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
