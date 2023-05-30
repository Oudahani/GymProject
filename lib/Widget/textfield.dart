import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  obscureText: true,
  Function? onFieldSubmitted,
  Function? onChanged,
  required validate,
  required String label,
  required IconData prefix,
  bool isPassword = false,
  IconData? suffix,
  Function? onPressed,

  //required  Border  OutlineInputBorder
  //enableBorder?OutlineInputBorder;
}) {
  return TextFormField(
    controller: controller,
    textAlign: TextAlign.start,
    keyboardType: type,
    onFieldSubmitted: (String value) {
      print(value);
    },
    onChanged: (String value) {
      print(value);
    },
    validator: validate,
    decoration: InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey ?? Colors.grey,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.blue,
      )),
      //hintText: 'Email Address',

      prefixIcon: Icon(prefix),
      suffixIcon: suffix != null
          ? IconButton(onPressed: () {}, icon: Icon(suffix))
          : null,
    ),
  );
}
