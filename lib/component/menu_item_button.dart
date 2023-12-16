
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';

IconButton buildMenuIconButton(String assetPath, onpressed) {
  return IconButton(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    onPressed: onpressed,
    icon: SizedBox(
      width: 20, // Adjust the width and height to your desired size
      height: 20,
      child: SvgPicture.asset(
        assetPath,
        color: AppColors.iconGray,
      ),
    ),
  );
}