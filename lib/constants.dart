import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const MaterialAccentColor inactiveButtonColor = Colors.blueAccent;
const MaterialAccentColor activeButtonColor = Colors.redAccent;

const MaterialAccentColor inactiveTextColor = Colors.blueAccent;
const MaterialAccentColor activeTextColor = Colors.redAccent;

const String inactiveString = 'PLAY';
const String activeString = 'PAUSE';

const TextStyle songNameStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.black);
const TextStyle artistName = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400);

const double sizeBoxHeight = 15.0;
const Widget whiteGap = SizedBox(height: sizeBoxHeight,);

const double buttonContainerWidth = 150.0;
const EdgeInsetsGeometry buttonContainerPadding = EdgeInsets.all(5.0);
BorderRadiusGeometry buttonBorderRadius = BorderRadius.circular(10);