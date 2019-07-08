import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAndRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            title: Text('Login and Register Pages',
                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(38))),
          ),
          preferredSize:
              Size.fromHeight(ScreenUtil.getInstance().setWidth(90))),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'flutter_assets/products/bgapp.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            height: ScreenUtil.getInstance().setWidth(110) * 5,
            child: Column(
              children: <Widget>[
                _getListWidget(context,0, 'Dark Login'),
                _getListWidget(context,1, 'Animated Background Login'),
                _getListWidget(context,2, 'Light Login'),
                _getListWidget(context,3, 'Simple Login'),
                _getListWidget(context,4, 'Material Login'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getListWidget(BuildContext context,int i, String str) {
    return GestureDetector(
      onTap: (){
        switch(i){
          case 4:
          Navigator.of(context).pushNamed('materialLogin');
          break;
        }
      },
      child: Container(
        height: ScreenUtil.getInstance().setWidth(90),
        margin: EdgeInsets.only(
          left: ScreenUtil.getInstance().setWidth(40),
          right: ScreenUtil.getInstance().setWidth(40),
          top: ScreenUtil.getInstance().setWidth(20),
        ),
        child: Text(
          str,
          style: TextStyle(color: Colors.white),
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
            color: Colors.black,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )),
      ),
    );
  }
}
