import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';

class DateRangeSearchBar extends StatelessWidget {
  const DateRangeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: [
          Expanded(child: _dateField(label: 'From Date')),
          SizedBox(width: 3.w),
          Expanded(child: _dateField(label: 'To Date')),
          SizedBox(width: 3.w),
          _searchButton(),
        ],
      ),
    );
  }
}

_dateField({required String label}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      border: Border.all(color: const Color(0xFFA5A7B9)),
      color: Colors.white,
    ),
    child: Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: AppTextStyles.bodyMedium,
          ),
        ),
        Icon(
          Icons.calendar_today_outlined,
          size: 18.sp,
          color: const Color(0xFF6B7280),
        ),
      ],
    ),
  );
}

_searchButton() {
  return Container(
    padding: EdgeInsets.all(8.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      border: Border.all(color: AppColors.primary),
      color: const Color(0xFFEAF5FF),
    ),
    child: Icon(Icons.search, color: AppColors.primary, size: 18.sp),
  );
}
