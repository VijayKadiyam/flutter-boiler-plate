import 'package:flutter/material.dart';

class Dimensions {
  getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
