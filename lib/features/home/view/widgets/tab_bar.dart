import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/features/home/model/home_ui_state.dart';

class HomeTabBar extends StatelessWidget {
  final ScmTab activeTab;
  final ValueChanged<ScmTab> onTabSelected;

  const HomeTabBar({super.key, required this.activeTab, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: Row(
        children: List.generate(ScmTab.values.length, (index) {
          final tab = ScmTab.values[index];
          return _tabItem(
            title: tab.name.toUpperCase(),
            isActive: tab == activeTab,
            isMiddle: index == 1,
            onTap: () => onTabSelected(tab),
          );
        }).toList(),
      ),
    );
  }
}

Widget _tabItem({
  required String title,
  required bool isActive,
  required bool isMiddle,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: isMiddle ? Radius.zero : Radius.circular(11.r),
            topRight: isMiddle ? Radius.zero : Radius.circular(11.r),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.blueGrey,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
