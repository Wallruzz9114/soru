import 'package:flutter/material.dart';

const Color lightGrey = Color.fromARGB(255, 61, 63, 69);
const Color darkGrey = Color.fromARGB(255, 18, 18, 19);
const Color primaryColor = Color.fromARGB(255, 9, 202, 172);
const Color backgroundColor = Color.fromARGB(255, 26, 27, 30);

// Box Decorations

BoxDecoration fieldDecortaion = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey[200]);

BoxDecoration disabledFieldDecortaion = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey[100]);

// Field Variables

const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding =
    EdgeInsets.symmetric(horizontal: 15, vertical: 15);

// Text Variables
const TextStyle buttonTitleTextStyle =
    TextStyle(fontWeight: FontWeight.w700, color: Colors.white);

const SizedBox horizontalSpaceTiny = SizedBox(width: 5.0);
const SizedBox horizontalSpaceSmall = SizedBox(width: 10.0);
const SizedBox horizontalSpaceMedium = SizedBox(width: 25.0);

const SizedBox verticalSpaceTiny = SizedBox(height: 5.0);
const SizedBox verticalSpaceSmall = SizedBox(height: 10.0);
const SizedBox verticalSpaceMedium = SizedBox(height: 25.0);
const SizedBox verticalSpaceLarge = SizedBox(height: 50.0);
const SizedBox verticalSpaceMassive = SizedBox(height: 120.0);

Column spacedDivider = Column(
  children: const <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

SizedBox verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
}) =>
    (screenHeight(context) - offsetBy) / dividedBy;

double screenWidthFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
}) =>
    (screenWidth(context) - offsetBy) / dividedBy;

double halfScreenWidth(BuildContext context) => screenWidthFraction(
      context,
      dividedBy: 2,
    );

double thirdScreenWidth(BuildContext context) => screenWidthFraction(
      context,
      dividedBy: 3,
    );
