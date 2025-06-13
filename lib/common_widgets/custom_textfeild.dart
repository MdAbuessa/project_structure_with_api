  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:structur_project/assets_helper/app_colors.dart';
import 'package:structur_project/assets_helper/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final IconData? trailingIcon;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap; // Optional onTap callback for GestureDetector
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;

  const CustomTextField({
    Key? key,
    this.readOnly = false,
    this.onTap, // Default is null
    required this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText = false,
    this.onTrailingIconPressed,
    this.controller,
    this.keyboardType,
    this.validator,
    this.focusNode,
    this.onChanged,
    this.textInputAction,
    this.onFieldSubmitted,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.c108DF0,
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      focusNode: focusNode,
      onChanged: onChanged,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,

      style: const TextStyle(color: Colors.grey),

      //autovalidateMode: AutovalidateMode.onUserInteraction,
      showCursor: true,

      //inputFormatters: [FilteringTextInputFormatter.digitsOnly],

      decoration: InputDecoration(
        fillColor: AppColor.cFFFFFF,

        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 15.w),
        hintText: hintText,
        hintStyle: TextFontStyle.textStyle16LatoW400
            .copyWith(color: AppColor.c6D767E.withValues(alpha: 0.7)),

        prefixIcon: leadingIcon != null
            ? Padding(
                padding: EdgeInsets.all(15.w),
                child: SvgPicture.asset(
                  leadingIcon!,
                ),
              )
            : null,
        suffixIcon: trailingIcon != null
            ? IconButton(
                icon: Icon(
                  trailingIcon,
                  color: Colors.grey,
                ),
                onPressed: onTrailingIconPressed,
              )
            : null,

        // ✅ This line is critical to remove the underline
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        errorStyle: TextStyle(color: Colors.red, fontSize: 12.sp),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
