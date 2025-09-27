import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

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
              child: Image.asset(AppAssets.mainImage,fit: BoxFit.fill,),
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
            "dshksh khsdjkfhds gdskg sdkkkds sd ghdsjg dsgjsdhgdf hjhgsdjf ghsdfjhgkdjfs  hfkdgsdfhj ",
          ),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            "dshksh khsdjkfhds gdskg hjdshgjdh hjdfhdf ghj dfhjhg fgfjdg h  ghdhfd g DSHKJG JGHDKJGHD FHGKJSDHGDKF GJDHFDKg gshgdjsd ghshfdjghdfslhag ALGEHIGHEROIJGJIKD,N SDNGVDFKGVNDF sdkkkds sd ghdsjg dsgjsdhgdf hjhgsdjf ghsdfjhgkdjfs  hfkdgsdfhj ",
          ),
          // SizedBox(height: 12.h,)
        ],
      ),
    );
  }
}
