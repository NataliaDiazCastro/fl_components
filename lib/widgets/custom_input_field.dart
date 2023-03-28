import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'Natalia Diaz',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 cará cteres'
        suffixIcon: suffixIcon == null ? null : Icon(Icons.group_outlined),
        // prefixIcon: Icon(Icons.verified_user_outlined),
        icon: icon == null ? null : Icon(Icons.assignment_ind_rounded),
      ),
    );
  }
}
