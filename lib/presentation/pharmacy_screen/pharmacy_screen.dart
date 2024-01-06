import '../pharmacy_screen/widgets/drugs1_item_widget.dart';
import '../pharmacy_screen/widgets/drugs_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ryadalhdyfy7_s_application1/core/app_export.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/custom_elevated_button.dart';
import 'package:ryadalhdyfy7_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  PharmacyScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search drug, category")),
                  SizedBox(height: 25.v),
                  _buildOfferBanner(context),
                  SizedBox(height: 52.v),
                  _buildPopularProduct1(context),
                  SizedBox(height: 22.v),
                  _buildNinetyNine(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Pharmacy"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v),
              onTap: () {
                onTapCart(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildOfferBanner(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 12.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 160.h,
                  child: Text("Order quickly with\nprescription",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium18
                          .copyWith(height: 1.50))),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 26.v,
                  width: 155.h,
                  text: "Upload Prescription",
                  buttonStyle: CustomButtonStyles.fillCyan,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold)
            ]));
  }

  /// Section Widget
  Widget _buildPopularProduct1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 20.h),
                  child: _buildProductOnSale(context,
                      productOnSale: "Popular Product", seeAll: "See all")),
              SizedBox(height: 23.v),
              SizedBox(
                  height: 165.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(left: 1.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 21.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return DrugsItemWidget();
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildNinetyNine(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 20.h),
                  child: _buildProductOnSale(context,
                      productOnSale: "Product on Sale", seeAll: "See all")),
              SizedBox(height: 11.v),
              SizedBox(
                  height: 165.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(left: 1.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 18.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Drugs1ItemWidget();
                      }))
            ])));
  }

  /// Common widget
  Widget _buildProductOnSale(
    BuildContext context, {
    required String productOnSale,
    required String seeAll,
  }) {
    return Row(children: [
      Text(productOnSale,
          style: CustomTextStyles.titleMediumOnPrimaryContainer_1
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Padding(
          padding: EdgeInsets.only(left: 174.h, bottom: 4.v),
          child: Text(seeAll,
              style: CustomTextStyles.labelLargeCyan300
                  .copyWith(color: appTheme.cyan300)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
}
