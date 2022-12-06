import 'package:radar_soft_assessment/utils/barrels.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.onTap,
    this.width,
    this.margin,
    this.prefixWidget,
    this.suffixWidget,
    this.text,
    super.key,
  });

  final ButtonShape? shape;

  final ButtonPadding? padding;

  final ButtonVariant? variant;

  final ButtonFontStyle? fontStyle;

  final Alignment? alignment;

  final VoidCallback? onTap;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final Widget? prefixWidget;

  final Widget? suffixWidget;

  final String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        child: Container(
          width: width ?? 0,
          margin: margin,
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixWidget ?? const SizedBox(),
              Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
              suffixWidget ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return EdgeInsets.all(8.sp);
      default:
        return EdgeInsets.all(14.sp);
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray7000c:
        return ColorConstant.blueA200;
      case ButtonVariant.OutlineDeeporange40019:
        return ColorConstant.deepOrange400;
      default:
        return ColorConstant.deepOrange400;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder19:
        return BorderRadius.circular(16.sp);
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(15.sp);
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGray7000c:
        return [
          BoxShadow(
            color: ColorConstant.gray7000c,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              6.783999443054199,
            ),
          )
        ];
      case ButtonVariant.OutlineDeeporange40019:
        return [
          BoxShadow(
            color: ColorConstant.deepOrange40019,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 4),
          )
        ];
      default:
        return [
          BoxShadow(
            color: ColorConstant.gray40014,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 10),
          )
        ];
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NunitoSansBold18:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: 14.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoSansSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: 14.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: 14.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder15,
  RoundedBorder19,
}

enum ButtonPadding {
  PaddingAll20,
  PaddingAll11,
}

enum ButtonVariant {
  OutlineGray40014,
  OutlineGray7000c,
  OutlineDeeporange40019,
}

enum ButtonFontStyle {
  NunitoSansBold16,
  NunitoSansBold18,
  NunitoSansSemiBold16,
}
