import 'package:flash_chat/app/constants/app_colors.dart';

import 'package:flutter/material.dart';

final inputDecoration = InputDecoration(
  hintText: "Enter your name",
  label: Text("Name"),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(100),
    borderSide: BorderSide(
      color: AppColors.blueB8,
      width: 1.0,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(100),
  ),
);