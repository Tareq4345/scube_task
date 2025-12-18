import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/features/detail/view/widgets/data_cost_info_card.dart';
import 'package:scube_task/features/detail/view/widgets/energy_gauge_alt.dart';

class RevenueView extends StatelessWidget {
  const RevenueView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EnergyGaugeSf(
              value: 8897455,
              maximum: 10000000,
              text: "tk",
            ),
            DataCostInfoCard(),
          ],
        ),
      );
  }
}


