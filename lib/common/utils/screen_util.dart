import 'package:flutter/material.dart';

// Kindly know that this class has not been tested and trusted yet
class ScreenUtil {
  // This accepts the design height
  double _designHeight;

  // This is the getter for the design height
  double get designHeight => _designHeight;

  // This accepts the design width
  double _designWidth;

  // This is the getter for the design width
  double get designWidth => _designWidth;

  // This holds the height of device screen
  double _deviceHeight;

  // This is the getter for the device height
  double get deviceHeight => _deviceHeight;

  // This holds the width of device screen
  double _deviceWidth;

  // This is the getter for the device width
  double get deviceWidth => _deviceWidth;

  // This holds the text scale factor of the device
  double _deviceTextScale;

  // This is the getter for the device text scale
  double get deviceTextScale => _deviceTextScale;

  init({BuildContext context, double designHeight, double designWidth}) {
    _designHeight = designHeight;
    _designWidth = designWidth;
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextScale = MediaQuery.of(context).textScaleFactor;
  }
}

extension ScreenUtilExtn on BuildContext {
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
