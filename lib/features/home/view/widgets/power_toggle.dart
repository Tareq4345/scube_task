import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/home/model/home_ui_state.dart';

class PowerToggle extends StatelessWidget {
  final PowerType activeType;
  final ValueChanged<PowerType> onChanged;

  const PowerToggle({super.key, required this.activeType, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: AppColors.overlayBlue.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        children: PowerType.values.map((type) {
          return _toggleItem(
            title: type.name.toUpperCase(),
            isActive: type == activeType,
            onTap: () => onChanged(type),
          );
        }).toList(),
      ),
    );
  }
}

Widget _toggleItem({
  required String title,
  required bool isActive,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : null,
          borderRadius: BorderRadius.circular(11.r),
        ),
        child: Text(
          title,
          style: AppTextStyles.bodyMedium.copyWith(
            color: isActive ? AppColors.white : AppColors.blueGrey,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
