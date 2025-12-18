import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/constants/app_icons_images.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';

class DataCostInfoCard extends StatefulWidget {
  const DataCostInfoCard({super.key});

  @override
  State<DataCostInfoCard> createState() => _DataCostInfoCardState();
}

class _DataCostInfoCardState extends State<DataCostInfoCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (isExpanded)
            Container(
              width: double.infinity,
              height: 210.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.secondBorder),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    // if (isExpanded)
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: List.generate(4, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Data : ',
                                    style: AppTextStyles.bodySmall,
                                    children: [
                                      TextSpan(
                                        text: '2798.50 (29.53%)',
                                        style: AppTextStyles.bodySmall.copyWith(
                                          color: AppColors.darkText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                RichText(
                                  text: TextSpan(
                                    text: 'Cost : ',
                                    style: AppTextStyles.bodySmall,
                                    children: [
                                      TextSpan(
                                        text: '35689 ৳',
                                        style: AppTextStyles.bodySmall.copyWith(
                                          color: AppColors.darkText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.secondBorder),
              ),
              child: InkWell(
                onTap: () => setState(() => isExpanded = !isExpanded),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.bar_chart, size: 20),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'Data & Cost Info',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          isExpanded ? AppICons.upIcon : AppICons.downIcon,
                          color: Colors.white,
                          width: 18.sp,
                          height: 18.sp,
                          // size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
