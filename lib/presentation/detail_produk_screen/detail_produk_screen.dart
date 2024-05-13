import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'models/detailproduklist_item_model.dart';
import 'notifier/detail_produk_notifier.dart';
import 'widgets/detailproduklist_item_widget.dart';

class DetailProdukScreen extends ConsumerStatefulWidget {
  const DetailProdukScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailProdukScreenState createState() => DetailProdukScreenState();
}

class DetailProdukScreenState extends ConsumerState<DetailProdukScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildDreamsvilleStack(context),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "lbl_description".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Container(
                        width: 335.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 19.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_the_3_level_house2".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "lbl_show_more".tr,
                                style: CustomTextStyles.labelLargeBlue200,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      _buildContactRow(context),
                      SizedBox(height: 33.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "lbl_gallery".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildDetailProdukList(context),
                      SizedBox(height: 32.v),
                      _buildMapStack(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDreamsvilleStack(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Opacity(
          opacity: 0.1,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 106.v,
              width: 295.h,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.39),
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWebaliserTptx304x335,
                height: 304.v,
                width: 335.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.gradientBlackToBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            onTap: () {
                              onTapBtnArrowleftone(context);
                            },
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                            ),
                          ),
                          CustomIconButton(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIcBookmark,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 136.v),
                      Text(
                        "msg_dreamsville_house".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_jl_sultan_iskandar2".tr,
                        style: CustomTextStyles.bodySmallBluegray100,
                      ),
                      SizedBox(height: 19.v),
                      Padding(
                        padding: EdgeInsets.only(right: 55.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              padding: EdgeInsets.all(2.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIcBedWhiteA700,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "lbl_6_bedroom".tr,
                                style: CustomTextStyles.bodySmallBluegray100,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgIcBathroom,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "lbl_4_bathroom".tr,
                                style: CustomTextStyles.bodySmallBluegray100,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildContactRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgJuricaKoletic,
              height: 34.v,
              width: 29.h,
              radius: BorderRadius.circular(
                14.h,
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_garry_allen".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Text(
                  "lbl_owner".tr,
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.fillLightBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.fillLightBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA700,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailProdukList(BuildContext context) {
    return SizedBox(
      height: 72.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: ref
                    .watch(detailProdukNotifier)
                    .detailProdukModelObj
                    ?.detailproduklistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              DetailproduklistItemModel model = ref
                      .watch(detailProdukNotifier)
                      .detailProdukModelObj
                      ?.detailproduklistItemList[index] ??
                  DetailproduklistItemModel();
              return DetailproduklistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMapStack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 2.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaps,
                  height: 150.v,
                  width: 335.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 236.h,
                      top: 46.v,
                      right: 83.h,
                    ),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.fillLightBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 7.adaptSize,
                      width: 7.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.lightBlue700,
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 30.v,
            ),
            decoration: AppDecoration.gradientWhiteAToWhiteA,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 51.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_price".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "msg_rp_2_500_000_000".tr,
                        style: theme.textTheme.titleMedium,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50.v,
                  width: 122.h,
                  margin: EdgeInsets.only(top: 51.v),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Opacity(
                        opacity: 0.24,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 20.v,
                            width: 92.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, -0.48),
                                end: Alignment(0.5, 1.31),
                                colors: [
                                  appTheme.blue200.withOpacity(0.44),
                                  appTheme.lightBlue70001.withOpacity(0.44)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 43.v,
                        width: 122.h,
                        text: "lbl_rent_now".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientBlueToLightBlueDecoration,
                        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                        alignment: Alignment.topCenter,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
