import 'package:flutter/material.dart';

import '../../../../common/utils/screen_util.dart';

class WrapperHeader extends StatelessWidget {
  final String title;
  final double balance;
  final int index;
  const WrapperHeader(
      {Key key, @required this.title, @required this.index, this.balance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(
      context: context,
      designHeight: 100,
      designWidth: 100,
    );
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              index == 0
                  ? Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: context.setFontSize(14),
                          color: Color(0xffA6AAB4)))
                  : SizedBox(),
              SizedBox(
                height: context.setHeight(10),
              ),
              Text(
                index == 0 ? '\$ $balance' : title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: context.setFontSize(32),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: context.setHeight(20),
                width: context.setWidth(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Positioned(
                child: Container(
                  height: context.setHeight(5),
                  width: context.setWidth(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
