import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/constants/app_icons_images.dart';
import 'package:scube_task/core/custom_widgets/custom_app_bar.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';

class EmptyDataPage extends StatelessWidget {
  const EmptyDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          CustomAppBar(title: 'SCM'),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: Color(0xFFB6B8D0)),
                borderRadius: BorderRadius.circular(11.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.emptyImage),
                  Text(
                    "No data is here,\n please wait.",
                    style: AppTextStyles.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
