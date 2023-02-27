import 'package:flutter/animation.dart';
import 'package:shop_product_price/utils/constants/app_constants.dart';

class Dimantions {
  // declaration of variables
  static double _screenHeight = 300;
  static double _screenWidth = 200;

// setters
  static set setSize(Size size) {
    // set width and height for letereuse
    _screenHeight = size.height;
    _screenWidth = size.width;
  }

// getters
  static get screenWidth => _screenWidth;
  static get screenHeight => _screenHeight;

  // convert size acoding to screen size

  static double heightOf(double height) =>
      // height Acoding to screen height
      (height / Constants.pixelRatio) * _screenHeight;

  static double widthOf(double width) =>
      // width Acoding to screen width
      (width / Constants.pixelRatio) * _screenWidth;

  static double fontSizeOf(double fontSize) {
    // fontSize Acoding to screen size        || also work for icons
    return widthOf(fontSize);
  }
}
