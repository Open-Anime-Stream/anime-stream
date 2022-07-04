import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormTextField extends StatefulWidget {
  const CustomFormTextField({
    super.key,
    required this.name,
    this.isPassword = false,
    this.keyboardType = TextInputType.name,
    this.width,
    this.prefixIcon,
    this.hintText,
  });

  final String name;
  final bool isPassword;
  final TextInputType keyboardType;
  final double? width;
  final Widget? prefixIcon;
  final String? hintText;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  // Initially password is obscure
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width / 3,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: FormBuilderTextField(
        name: widget.name,
        obscureText: widget.isPassword ? _obscureText : !_obscureText,
        autovalidateMode: AutovalidateMode.always,
        keyboardType: widget.keyboardType,
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          border: _borderDecoration(context),
          enabledBorder: _borderDecoration(context),
          errorBorder: _borderDecoration(context),
          focusedBorder: _borderDecoration(context),
          focusedErrorBorder: _borderDecoration(context),
          disabledBorder: _borderDecoration(context),
        ),
      ),
    );
  }

  OutlineInputBorder _borderDecoration(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        width: 2,
      ),
    );
  }
}
