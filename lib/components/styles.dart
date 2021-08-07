import 'package:flutter/material.dart';
import 'package:untitled/classes.dart';

const int lavender = 0xff957DAD;
const int violet = 0xffD291BC;
const int lumber = 0xffFFDFD3;
const int defaultColor = cottonCandy;
const int cottonCandy = 0xffFEC8D8;

const double DEFAULT_PADDING = 5.0;

class Styles {
  final TextStyle defaultStyle =
  TextStyle(fontSize: 20.0);

  final ThemeData theme = ThemeData(
      primarySwatch: Colors.pink,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, decoration: TextDecoration.none),
        headline2: TextStyle(
            fontSize: 24.0,
            decoration: TextDecoration.none,
            color: Colors.black),
        headline6: TextStyle(fontSize: 36.0, decoration: TextDecoration.none),
        bodyText2: TextStyle(fontSize: 18.0, decoration: TextDecoration.none),
      ),
      appBarTheme: AppBarTheme(
        color: Color(defaultColor),
      ));

  final TextStyle titleText = TextStyle(
      fontSize: 36.0,
      decoration: TextDecoration.none);

  final TextStyle buttonText = TextStyle(
      fontSize: 24.0,
      decoration: TextDecoration.none,
      color: Colors.black);

  Styles();
}