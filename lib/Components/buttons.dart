import 'package:flutter/material.dart';

import '../Colors/Colors.dart';

ElevatedButton buildRegisterButton(title, onPressed,
    {TextStyle? textStyle, ButtonStyle? style}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: style ??
        ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
    child: Text(
      title,
      style: textStyle ?? const TextStyle(fontSize: 15,color: Colors.black),
    ),
  );
}

//Outlined Button
OutlinedButton buildOutlineButton(title, onPressed) {
  return OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        width: 1.0,
        color: kPrimaryColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
    child: Text(
      title,
      style: const TextStyle(fontSize: 15, color: kPrimaryColor),
    ),
  );
}