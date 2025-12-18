import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/home/model/menu_item.dart';
import 'package:scube_task/features/home/view/pages/empty_data_page.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: menuItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 3.8,
        crossAxisSpacing: 14,
      ),
      itemBuilder: (BuildContext context, int index) {
        MenuItemModel menuItem = menuItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmptyDataPage()),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 20.h,
            width: 60.w,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Color(0xFFB6B8D0)),
              color: AppColors.white,
            ),
            child: Row(
              children: [
                Image.asset(
                  menuItem.iconPath,
                  width: 16.spMin,
                  height: 16.spMin,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 4.w),
                Text(
                  menuItem.title,
                  style: AppTextStyles.bodySemiBold.copyWith(
                    fontSize: 14.spMin,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
