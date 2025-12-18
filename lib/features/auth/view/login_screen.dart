import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/constants/app_icons_images.dart';
import 'package:scube_task/core/custom_widgets/custom_text_field.dart';
import 'package:scube_task/core/theme/app_colors.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';
import 'package:scube_task/features/home/view/pages/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Logo
                  Container(
                    height: 80.sp,
                    width: 80.sp,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      AppImages.appLogo,
                      width: 98.sp,
                      height: 98.sp,

                      //  fit: BoxFit.contain,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(height: 12.h),

                  /// Title
                  Text('SCUBE', style: AppTextStyles.brandTitle),
                  SizedBox(height: 2.h),
                  Text(
                    'Control & Monitoring System',
                    style: AppTextStyles.brandSubtitle,
                  ),
                ],
              ),
            ),

            /// ⚪ Bottom White Card
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.h),

                    Text('Login', style: AppTextStyles.h3),
                    SizedBox(height: 24.h),

                    CustomTextField(hint: 'Username'),
                    SizedBox(height: 16.h),

                    CustomTextField(hint: 'Password', isPassword: true),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',

                          style: AppTextStyles.mutedLink,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    /// Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        child: Text('Login', style: AppTextStyles.button),
                      ),
                    ),

                    SizedBox(height: 5.h),

                    /// Register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have any account? ",
                          style: AppTextStyles.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Register Now',
                            style: AppTextStyles.buttonSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 🔹 Reusable Input Field
