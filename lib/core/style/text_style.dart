import 'package:flutter/material.dart';
import 'package:kyle_machinetask/core/style/colors.dart';


class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 28, fontWeight: FontWeight.w700,
    color: AppColors.textPrimary, letterSpacing: -0.5,
  );
  static const TextStyle subheading = TextStyle(
    fontSize: 15, color: AppColors.textSecondary,
    fontWeight: FontWeight.w400, height: 1.5,
  );
  static const TextStyle label = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const TextStyle button = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white,
  );
  static const TextStyle link = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primary,
  );
}