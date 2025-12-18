import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class EnergyGaugeSf extends StatelessWidget {
  final double value;
  final double maximum;
  final String text;

  const EnergyGaugeSf({super.key, required this.value, this.maximum = 100, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 200.w,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: maximum,
            startAngle: 140,
            endAngle: 40,
            radiusFactor: 0.85,
            centerX: 0.5,
            centerY: 0.65,
            showLabels: false,
            showTicks: false,
            axisLineStyle: const AxisLineStyle(
              thickness: 20,
              cornerStyle: CornerStyle.bothCurve,
              color: Color(0xFFE3F2FD),
            ),
            pointers: <GaugePointer>[
              // 3. The Progress Bar (Bright Blue)
              RangePointer(
                value: value,
                width: 20.sp,
                color: AppColors.primary,
                cornerStyle: CornerStyle.bothCurve, // Rounded ends
                enableAnimation: true,
                animationDuration: 1500,
              ),
            ],

            
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                positionFactor: 0.0,
                angle: 90,
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      
                      value.toString(),
                      style: AppTextStyles.h2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      text,
                      style: AppTextStyles.bodyMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.midnightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
