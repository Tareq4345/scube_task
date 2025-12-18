import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/features/detail/view/page/data_detail_page.dart';
import 'package:scube_task/features/home/model/item_model.dart';
import 'package:scube_task/features/home/view/widgets/item_card.dart';

class ItemListWithScrollbar extends StatefulWidget {
  const ItemListWithScrollbar({super.key});

  @override
  State<ItemListWithScrollbar> createState() =>
      _ItemListWithScrollbarState();
}


class _ItemListWithScrollbarState extends State<ItemListWithScrollbar> {
  final ScrollController _controller = ScrollController();

  final double trackHeight = 180; // same as your container
  final double thumbHeight = 30;

  double thumbTop = 0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(_syncThumb);
  }

  void _syncThumb() {
    if (!_controller.hasClients) return;

    final maxScroll = _controller.position.maxScrollExtent;
    if (maxScroll <= 0) return;

    setState(() {
      thumbTop =
          (_controller.offset / maxScroll) *
          (trackHeight - thumbHeight);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            /// 🔹 LIST
            Expanded(
              child: ListView.separated(
                controller: _controller,
                padding: EdgeInsets.zero,
                itemCount: items.length,
                separatorBuilder: (_, __) => SizedBox(height: 6.h),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DataDetailPage(),
                        ),
                      );
                    },
                    child: ItemCard(item: item),
                  );
                },
              ),
            ),

            SizedBox(width: 4.w),

            /// 🔹 SCROLLBAR TRACK
            Container(
              height: trackHeight.h,
              width: 4.w,
              decoration: BoxDecoration(
                color: const Color(0xFFB6B8D0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: thumbTop.h,
                    child: Container(
                      height: thumbHeight.h,
                      width: 4.w,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF4E91FD),
                            Color(0xFF080B7F),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /// 🔹 BOTTOM FADE (unchanged)
        Positioned(
          bottom: 0,
          left: 0,
          right: 14,
          child: IgnorePointer(
            child: Container(
              height: 30.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF2F548C).withValues(alpha:0.0),
                    const Color(0xFF19416E).withValues(alpha:0.6),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
