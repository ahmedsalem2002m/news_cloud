import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';

import '../../../../core/utils/app_assets.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(articleModel.urlToImage,fit: BoxFit.fill,),
            ),
          ),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            articleModel.title,
          ),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            articleModel.description,
          ),
          // SizedBox(height: 12.h,)
        ],
      ),
    );
  }
}
