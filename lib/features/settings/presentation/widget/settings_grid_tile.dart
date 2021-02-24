import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/utils/screen_util.dart';

class SettingsGridTile extends StatelessWidget {
  final String title;
  final String icon;
  const SettingsGridTile({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context: context, designHeight: 100, designWidth: 100);
    return Container(
      height: context.setHeight(50),
      width: context.setWidth(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(icon),
          ),
          SizedBox(
            height: context.setHeight(20),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: context.setFontSize(14),
            ),
          ),
        ],
      ),
    );
  }
}
