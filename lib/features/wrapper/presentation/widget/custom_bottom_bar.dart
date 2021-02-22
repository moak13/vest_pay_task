import 'package:flutter/material.dart';
import 'package:vest_pay_test/common/utils/screen_util.dart';

class CustomBottomBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color backgroundColor;
  final List items;
  const CustomBottomBar(
      {Key key,
      this.currentIndex,
      this.onTap,
      this.backgroundColor,
      this.items})
      : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context: context);
    return Stack(
      children: [
        Container(
          height: context.setHeight(10),
          width: context.setWidth(double.infinity),
        ),
        Center(
            child: FloatingActionButton(
          onPressed: () {},
        )),
      ],
    );
  }
}
