import 'package:radar_soft_assessment/utils/barrels.dart';

class AppDecoration {
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineGray80007 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray80007,
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
            offset: const Offset(0, 6.783999443054199),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray4003f,
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
            offset: const Offset(0, 4),
          ),
        ],
      );
  static BoxDecoration get outlineDeeporange40066 => const BoxDecoration();
  static BoxDecoration get fillDeeporange40099 => BoxDecoration(
        color: ColorConstant.deepOrange40099,
      );
  static BoxDecoration get outlineGray8000c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray8000c,
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
            offset: const Offset(0, 5),
          ),
        ],
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder156 = BorderRadius.circular(156.50);

  static BorderRadius circleBorder125 = BorderRadius.circular(125.00);

  static BorderRadius circleBorder14 = BorderRadius.circular(14.00);

  static BorderRadius roundedBorder20 = BorderRadius.circular(20.00);

  static BorderRadius customBorderTL25 = const BorderRadius.only(
    topLeft: Radius.circular(25.00),
    topRight: Radius.circular(25.00),
  );
}
