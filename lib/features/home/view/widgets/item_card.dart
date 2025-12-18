import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/home/model/item_model.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;
  

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFFE5F4FE),

        border: Border.all(color: const Color(0xFFA5A7B9)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              item.iconPath,
              errorBuilder: (_, __, ___) => const Icon(Icons.image, size: 24),
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 11.sp,
                      height: 11.sp,
                      decoration: BoxDecoration(
                        color: item.indicatorColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(item.title,style: AppTextStyles.body14.copyWith(color: AppColors.midnightBlue),),
                    const SizedBox(width: 6),
                    Text(
                      item.isActive ? '(Active)' : '(Inactive)',
                      style: AppTextStyles.bodySmall1o.copyWith(
                        color: item.isActive
                            ? AppColors.primary
                            : AppColors.redColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                _dataRow('Data 1', item.data1),
                const SizedBox(height: 4),
                _dataRow('Data 2', item.data2),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: AppColors.blueGrey,
          ),
        ],
      ),
    );
  }

  Widget _dataRow(String label, double value) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: '$label : ',
            style: AppTextStyles.bodySmall,
            children: [
              TextSpan(
                text: value.toStringAsFixed(2),
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.darkText,
                ),
              ),
            ],
          ),
        ),

        // SizedBox(width: 50, child: Text(label)),
        // const Text(' : '),
        // Text(value.toStringAsFixed(2)),
      ],
    );
  }
}
