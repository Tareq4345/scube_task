import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/core/custom_widgets/custom_app_bar.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/home/model/home_ui_state.dart';
import 'package:scube_task/features/home/view/widgets/itemcard.dart';
import 'package:scube_task/features/home/view/widgets/power_toggle.dart';
import 'package:scube_task/features/home/view/widgets/tab_bar.dart';
import 'package:scube_task/features/home/view_model/home_view_model.dart';
import 'package:scube_task/features/home/view/widgets/menu_item_widget.dart';
import 'package:scube_task/features/home/view/widgets/power_circle.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(homeViewModelProvider);
    final vm = ref.read(homeViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // appBar: CustomAppBar(title: "SCM"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: 'SCM'),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                children: [
                  bodyCard(uiState, vm),
                  SizedBox(height: 20.h),
                  const MenuItemWidget(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bodyCard(HomeUiState uiState, HomeViewModel vm) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: const Color(0xFFB6B8D0)),
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Column(
        children: [
          HomeTabBar(
            activeTab: uiState.activeTab,
            onTabSelected: vm.onTabChanged,
          ),
          const Divider(height: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 5.h),
                Text('Electricity', style: AppTextStyles.bodySemiBold),
                const Divider(),
                const PowerCircle(),
                SizedBox(height: 5.h),
                PowerToggle(
                  activeType: uiState.powerType,
                  onChanged: vm.onPowerTypeChanged,
                ),
                const Divider(),
                SizedBox(height: 5.h),
                SizedBox(
  height: 195.h,
  child: const ItemListWithScrollbar(),
),

                // SizedBox(height: 195.h, child: _itemList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

