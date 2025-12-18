import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/detail/model/energy_data_item.dart';

class EnergyChartCard extends StatelessWidget {
  final EnergyChartModel chart;

  const EnergyChartCard({
    super.key,
    required this.chart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        padding: EdgeInsets.only(left: 8.w,right:8.w,top: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: const Color(0xFFA5A7B9)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            SizedBox(height: 10.h),
            ...chart.items.map(_dataTile),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          chart.title,
          style: AppTextStyles.semiBold14,
        ),
        Text(
          '${chart.totalKw} kw',
          style: AppTextStyles.semiBold32,
        ),
      ],
    );
  }

  Widget _dataTile(EnergyDataItem item) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: const Color(0xFFA5A7B9)),
      ),
      child: Row(
        children: [
          _legend(item),
          SizedBox(width: 6.w),
          Container(
            width: 1.w,
            height: 30.h,
            color: const Color(0xFFB6B8D0),
          ),
          SizedBox(width: 6.w),
          Expanded(child: _details(item)),
        ],
      ),
    );
  }

  Widget _legend(EnergyDataItem item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10.spMin,
          height: 10.spMin,
          decoration: BoxDecoration(
            color: item.color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          item.title,
          style: AppTextStyles.h2.copyWith(fontSize: 12.spMin),
        ),
      ],
    );
  }

  Widget _details(EnergyDataItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Data : ',
            style: AppTextStyles.bodySmall,
            children: [
              TextSpan(
                text: '${item.data} (${item.percentage}%)',
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
                text: '${item.cost} ৳',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.darkText,
                ),
              ),
            ],
          ),
        ),
     
     
     
      ],
    );
  }
}
