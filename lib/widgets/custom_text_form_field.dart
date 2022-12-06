import 'package:radar_soft_assessment/utils/barrels.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.validator,
    super.key,
  });

  final TextFormFieldShape? shape;

  final TextFormFieldPadding? padding;

  final TextFormFieldVariant? variant;

  final TextFormFieldFontStyle? fontStyle;

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? isObscureText;

  final TextInputAction? textInputAction;

  final int? maxLines;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? 0,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.NunitoSansRegular16:
        return TextStyle(
          color: ColorConstant.gray800Cc,
          fontSize: 16.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NunitoSansBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: 16.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray800Cc,
          fontSize: 12.sp,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder18:
        return BorderRadius.circular(18.sp);
      default:
        return BorderRadius.circular(15.sp);
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillGray400:
        return ColorConstant.gray400;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.FillGray400:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll9:
        return EdgeInsets.all(9.sp);
      case TextFormFieldPadding.PaddingAll28:
        return EdgeInsets.all(28.sp);
      default:
        return EdgeInsets.all(18.sp);
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder18,
  RoundedBorder15,
}

enum TextFormFieldPadding {
  PaddingAll18,
  PaddingAll9,
  PaddingAll28,
}

enum TextFormFieldVariant {
  OutlineGray4000c,
  FillWhiteA700,
  FillGray400,
}

enum TextFormFieldFontStyle {
  NunitoSansRegular1583,
  NunitoSansRegular16,
  NunitoSansBold16,
}
