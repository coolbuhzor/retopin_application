import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle get ktsTiny => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
    );

TextStyle get ktsSmall => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    );

TextStyle get ktsTitle => TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );

TextStyle get ktsNormal => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );

TextStyle get ktsBig => TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    );

TextStyle get ktsLarge => TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
    );

//Spacing
Widget verticalSpacing(double height) => SizedBox(height: height);
Widget horizontalSpacing(double width) => SizedBox(width: width);
