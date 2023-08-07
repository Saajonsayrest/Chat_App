import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingX on Widget {
  Padding pL(double l) {
    return Padding(
      padding: EdgeInsets.only(left: l.w),
      child: this,
    );
  }

  Padding pR(double r) => Padding(
        padding: EdgeInsets.only(right: r.w),
        child: this,
      );

  Padding pT(double t) {
    return Padding(
      padding: EdgeInsets.only(top: t.h),
      child: this,
    );
  }

  Padding pB(double b) => Padding(
        padding: EdgeInsets.only(bottom: b.h),
        child: this,
      );

  Padding pX(double x) => Padding(
        padding: EdgeInsets.symmetric(horizontal: x.w),
        child: this,
      );

  Padding pY(double y) => Padding(
        padding: EdgeInsets.symmetric(vertical: y.h),
        child: this,
      );

  Padding pXY(double x, double y) => Padding(
        padding: EdgeInsets.symmetric(horizontal: x.w, vertical: y.h),
        child: this,
      );

  Padding pad(double all) => Padding(
        padding: EdgeInsets.symmetric(horizontal: all.w, vertical: all.h),
        child: this,
      );
}
