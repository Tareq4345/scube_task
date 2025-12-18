import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/core/theme/app_text_styles.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final bool showBack;
//   final bool showNotification;
//   final VoidCallback? onNotificationTap;

//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.showBack = true,
//     this.showNotification = true,
//     this.onNotificationTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       leading: showBack ? const BackButton() : null,
//       centerTitle: true,
//       title: Text(
//         title,
//         style: AppTextStyles.bodyLarge,
//       ),
//       actions: showNotification
//           ? [
//               IconButton(
//                 onPressed: onNotificationTap,
//                 icon: Stack(
//                   children: [
//                     const Icon(Icons.notifications_none, size: 28),
//                     Positioned(
//                       right: 4,
//                       top: 2,
//                       child: Container(
//                         width: 8.w,
//                         height: 8.w,
//                         decoration: const BoxDecoration(
//                           color: Colors.red,
//                           shape: BoxShape.circle,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ]
//           : null,
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }


class CustomAppBar extends StatelessWidget {
  final String title;
  final bool showBack;
  final bool showNotification;
  final VoidCallback? onBack;
  final VoidCallback? onNotificationTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.showNotification = true,
    this.onBack,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
     alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /// Back button
          if (showBack)
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBack ?? () => Navigator.pop(context),
            )
          else
            SizedBox(width: 48.w),

          /// Title
          Text(
            title,
            style: AppTextStyles.bodyLarge,
          ),

          /// Notification
          if (showNotification)
            IconButton(
              onPressed: onNotificationTap,
              icon: Stack(
                children: [
                  const Icon(Icons.notifications_none, size: 28),
                  Positioned(
                    right: 4,
                    top: 2,
                    child: Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            SizedBox(width: 48.w),
        ],
      ),
    );
  }
}

