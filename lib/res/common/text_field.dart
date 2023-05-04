import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final String? hintText;
  final Function(String)? onChanged;
  final IconData? iconData;
  final String Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  const Textfield({
    Key? key,
    this.controller,
    this.keyboardType,
    this.textCapitalization,
    this.obscureText,
    this.textInputAction,
    this.hintText,
    this.onChanged,
    this.validator,
    this.iconData,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFF5F4F8),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        autofocus: false,
        autocorrect: false,
        keyboardType: keyboardType ?? TextInputType.name,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        textInputAction: textInputAction ?? TextInputAction.done,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffix: suffixIcon,
          prefixIcon: prefixIcon,
          isDense: true,
          hintText: hintText ?? "",
          hintStyle: const TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xFFD22F26), width: 2),
          ),
        ),
      ),
    );
  }
}
