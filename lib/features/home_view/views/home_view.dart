import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/home_view/views/widgets/categories_list_view.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_tile_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  "News",
                ),
                Text(
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  "Cloud",
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CategoriesListView(),
            SizedBox(height: 10.h),
            NewsTileListView()
          ],
        ),
      ),
    );
  }
}
