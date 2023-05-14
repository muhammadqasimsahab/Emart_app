import 'package:emart_new/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  //using velocity x here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
