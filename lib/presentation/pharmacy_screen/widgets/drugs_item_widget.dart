import 'package:flutter/material.dart';
import 'package:ryadalhdyfy7_s_application1/core/app_export.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DrugsItemWidget extends StatelessWidget {
  const DrugsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 118.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgDrugThumbnail,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Panadol",
              style: CustomTextStyles.labelLargeOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "20pcs",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "15.99",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 38.h),
                  child: CustomIconButton(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFacebookPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
