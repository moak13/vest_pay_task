import 'package:flutter/material.dart';

import '../utils/screen_util.dart';

extension AdaptiveScreenExtensions on BuildContext {
  // This is the function to generate an adaptive height
  double setHeight(double height) {
    return (ScreenUtil().deviceHeight * height) / ScreenUtil().designHeight;
  }

  // This is the function to generate an adaptive width
  double setWidth(double width) {
    return (ScreenUtil().deviceWidth * width) / ScreenUtil().designWidth;
  }

  // This is the function to generate an adaptive text size
  double setFontSize(double fontSize) {
    return (ScreenUtil().deviceWidth *
            fontSize *
            ScreenUtil().deviceTextScale) /
        ScreenUtil().designWidth;
  }
}
