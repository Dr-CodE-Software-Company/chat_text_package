import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? textHint;
  final double? width;
  final double height;
  final double borderRadius;
  final double borderWidth;
  final Widget? prefixIcon;
  final Icon? suffixIcon;
  final bool obscureText;
  final bool suffix;
  final bool isSuffixWidget;
  final Color textColor;
  final Widget? suffixWidget;
  final String? Function(String?)? validator;
  final Function(String?)? onchangeFun;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool hasBorder;
  final Color fillColorTextFeild;
  final int maxLength;
  final double fontSize;
  final bool isEn;
  final Function? onEditingComplete;
  final Color colorBorder;
  final Color hintColor;
  final Function? passwordVisibility;
  final int maxLines;
  final bool enabled;
  final void Function(String)? onFieldSubmitted;
  final double verticalPadding;
  final TextStyle? hintStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.textHint,
      required this.textColor,
      this.hintStyle,
      this.textAlign = TextAlign.start,
      this.hintColor = ColorsPackage.lightGreyColor,
      this.maxLines = 1,
      this.onchangeFun,
      this.passwordVisibility,
      this.isSuffixWidget = false,
      this.suffixWidget,
      this.suffix = false,
      this.width,
      this.borderRadius = 16,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.validator,
      this.controller,
      this.onEditingComplete,
      this.enabled = true,
      this.colorBorder = ColorsPackage.lightGreyColor,
      this.hasBorder = true,
      this.borderWidth = 2,
      required this.fillColorTextFeild,
      this.maxLength = 10000,
      this.fontSize = 16,
      this.isEn = false,
      this.height = 52,
      this.onFieldSubmitted,
      this.verticalPadding = 20,
      required this.textDirection});

  @override
  Widget build(BuildContext context) {
    String updatedHintText = textHint == null ? "" : textHint!;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        textAlign: textAlign,
        textDirection: textDirection,
        //  textInputAction: TextInputAction.newline,
        maxLines: maxLines,
        onFieldSubmitted: onFieldSubmitted,
        enabled: enabled,
        keyboardType: keyboardType,
        cursorHeight: 17,
        cursorColor: ColorsPackage.blackColor,
        // maxLines: maxLines,
        minLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          color: textColor,
        ),
        onChanged: onchangeFun,
        controller: controller,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          hintStyle: hintStyle,
          alignLabelWithHint: true,
          filled: true,
          border: hasBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide:
                      BorderSide(color: colorBorder, width: borderWidth),
                )
              : InputBorder.none,
          focusedBorder: hasBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide:
                      BorderSide(color: colorBorder, width: borderWidth),
                )
              : InputBorder.none,
          enabledBorder: hasBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide:
                      BorderSide(color: colorBorder, width: borderWidth),
                )
              : InputBorder.none,
          errorBorder: hasBorder ? null : InputBorder.none,
          focusedErrorBorder: hasBorder ? null : InputBorder.none,
          disabledBorder: hasBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide:
                      BorderSide(color: colorBorder, width: borderWidth),
                )
              : InputBorder.none,
          suffixIcon: suffixWidget,
          fillColor: fillColorTextFeild,
          label: label == null
              ? null
              : Text(
                  label!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: ColorsPackage.primary),
                  textAlign: TextAlign.start,
                ),
          hintText: updatedHintText,
          // contentPadding: EdgeInsets.symmetric(
          //     vertical: verticalPadding.h, horizontal: 16.w),
          //hintMaxLines: 1,
          prefixIcon: prefixIcon,
          suffixStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: ColorsPackage.primaryTextColor),
        ),
        // control the number of digits in the text field
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
      ),
    );
  }
}
