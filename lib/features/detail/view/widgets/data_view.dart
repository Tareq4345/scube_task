import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/detail/model/data_detail_state.dart';
import 'package:scube_task/features/detail/view/widgets/date_range_search_bar.dart';
import 'package:scube_task/features/detail/view/widgets/energy_cart_card.dart';
import 'package:scube_task/features/detail/view/widgets/energy_gauge_alt.dart';
import 'package:scube_task/features/detail/viewmodel/data_detail_viewmodel.dart';
import 'package:scube_task/features/detail/model/energy_data_item.dart';

class DataView extends StatelessWidget {
  const DataView({super.key, required this.state, required this.vm});

  final DataDetailState state;
  final DataDetailViewModel vm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 40.h,),
          EnergyGaugeSf(value: 57.00, text: "kWh/Sqft"),
          SizedBox(
            height: 30.h,
            child: RadioGroup<RadioTypeSecond>(
              groupValue: state.radioTypeSecond,
              onChanged: (RadioTypeSecond? value) {
                vm.changeSecondRadioType(value!);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio<RadioTypeSecond>(
                        value: RadioTypeSecond.today,
                        activeColor: AppColors.primary,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor: WidgetStateColor.resolveWith((
                          Set<WidgetState> states,
                        ) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColors.primary;
                          } else {
                            return Colors.grey.shade300.withValues(alpha: 0.3);
                          }
                        }),
                      ),
                      Text(
                        'Today Data',
                        style: state.radioTypeSecond == RadioTypeSecond.today
                            ? AppTextStyles.buttonSecondary
                            : AppTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio<RadioTypeSecond>(
                        value: RadioTypeSecond.customeDate,
                        activeColor: AppColors.primary,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor: WidgetStateColor.resolveWith((
                          Set<WidgetState> states,
                        ) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColors.primary;
                          } else {
                            return Colors.grey.shade300.withValues(alpha: 0.3);
                          }
                        }),
                      ),
                      Text(
                        'Custom Date Data',
                        style:
                            state.radioTypeSecond == RadioTypeSecond.customeDate
                            ? AppTextStyles.buttonSecondary
                            : AppTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          state.radioTypeSecond == RadioTypeSecond.today
              ? EnergyChartCard(chart: energyChart)
              : customDateData(),
        ],
      ),
    );
  }

  customDateData() {
    return Column(
      children: [
        DateRangeSearchBar(),
        SizedBox(height: 10.h),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          itemCount: energyChartList.length,
          itemBuilder: (BuildContext context, int index) {
            EnergyChartModel energyChartModel = energyChartList[index];
            return EnergyChartCard(chart: energyChartModel);
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 10.h),
        ),
      ],
    );
  }
}
