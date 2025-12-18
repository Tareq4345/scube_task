import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';


class PowerCircle extends StatelessWidget {
  const PowerCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.sp,
      width: 160.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFF398FC9),
          width: 24.sp,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Power', style: AppTextStyles.bodySmall),
            // SizedBox(height: 4.h),
            Text('5.53 kw', style: AppTextStyles.bodySemiBold.copyWith(color: AppColors.midnightBlue)),
          ],
        ),
      ),
    );
  }
}
