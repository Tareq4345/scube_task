import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/custom_widgets/custom_app_bar.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/features/detail/model/data_detail_state.dart';
import 'package:scube_task/features/detail/view/widgets/data_view.dart';
import 'package:scube_task/features/detail/view/widgets/revenue_view.dart';
import 'package:scube_task/features/detail/viewmodel/data_detail_viewmodel.dart';


class DataDetailPage extends ConsumerWidget {
  const DataDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dataDetailViewModelProvider);
    final vm = ref.read(dataDetailViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: 'SCM'),
            Padding(
              padding: EdgeInsets.only(top: 35.h),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.838,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: Color(0xFFB6B8D0)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                      ),
                    ),
                    child: state.radioType == RadioType.dataView
                        ? DataView(state: state, vm: vm)
                        : RevenueView(),
                  ),
                  Positioned(
                    left: 16.w,
                    right: 16.w,
                    top: -16.h,
                    child: viewCard(state, vm),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  viewCard(DataDetailState state, DataDetailViewModel vm) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFFB6B8D0)),
      ),
      child: RadioGroup<RadioType>(
        groupValue: state.radioType,
        onChanged: (RadioType? value) {
          vm.changeRadioType(value!);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Radio<RadioType>(
                  value: RadioType.dataView,
                  activeColor: AppColors.primary,
                ),
                Text('Data View'),
              ],
            ),
            Row(
              children: [
                Radio<RadioType>(
                  value: RadioType.review,
                  activeColor: AppColors.primary,
                ),
                Text('Revenue View'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




