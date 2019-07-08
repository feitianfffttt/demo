import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/user.jpg',
                iconData: Icons.tab,
                name: 'Login and Register',
                positon: 0),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg2.jpg',
                iconData: Icons.wallpaper,
                name: 'Wizard',
                positon: 1),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg3.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 2),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg4.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 3),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg5.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 4),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg6.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 5),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg7.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 6),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg1.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 7),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg1.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 8),
            _getItemAll(
                context: context,
                assetPath: 'flutter_assets/bg/bg1.jpg',
                iconData: Icons.tab,
                name: 'Tabs',
                positon: 9),
          ]),
    );
  }

  _getItemAll(
      {BuildContext context,
      String assetPath,
      IconData iconData,
      String name,
      int positon}) {
    return GestureDetector(
      onTap: () {
        switch (positon) {
          case 0:
            Navigator.of(context).pushNamed('login');
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  assetPath,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
              size: ScreenUtil.getInstance().setWidth(50),
            ),
            SizedBox(height: 4,),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil.getInstance().setSp(36),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
