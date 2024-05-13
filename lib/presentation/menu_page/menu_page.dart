import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable

class MenuPage extends ConsumerStatefulWidget {
  const MenuPage({Key? key})
      : super(
          key: key,
        );

  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends ConsumerState<MenuPage>
    with AutomaticKeepAliveClientMixin<MenuPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lightBlue700,
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 231.v),
          decoration: AppDecoration.fillLightBlue,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 238.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_near_from_you".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 18.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Opacity(
                                opacity: 0.1,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgShadow,
                                  height: 46.v,
                                  width: 119.h,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgWebaliserTptx,
                                      height: 232.v,
                                      width: 190.h,
                                      radius: BorderRadius.circular(
                                        17.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 14.h,
                                          vertical: 12.v,
                                        ),
                                        decoration: AppDecoration
                                            .gradientBlackToBlack
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder17,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 5.v),
                                            CustomElevatedButton(
                                              width: 62.h,
                                              text: "lbl_1_8_km".tr,
                                              leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 3.h),
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIclocation,
                                                  height: 13.adaptSize,
                                                  width: 13.adaptSize,
                                                ),
                                              ),
                                              alignment: Alignment.centerRight,
                                            ),
                                            SizedBox(height: 146.v),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text(
                                                "msg_dreamsville_house".tr,
                                                style: CustomTextStyles
                                                    .labelLargeWhiteA700_1,
                                              ),
                                            ),
                                            SizedBox(height: 6.v),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text(
                                                "msg_jl_sultan_iskandar".tr,
                                                style: CustomTextStyles
                                                    .bodySmallBluegray1000110,
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
                          ),
                          Container(
                            height: 232.v,
                            width: 1.h,
                            margin: EdgeInsets.only(
                              left: 74.h,
                              bottom: 11.v,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgDigitalMarketi,
                                  height: 232.v,
                                  width: 190.h,
                                  radius: BorderRadius.circular(
                                    17.h,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.h,
                                      vertical: 13.v,
                                    ),
                                    decoration: AppDecoration
                                        .gradientBlackToBlack
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder17,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 3.v),
                                        CustomElevatedButton(
                                          text: "lbl_3_0_km".tr,
                                          margin: EdgeInsets.only(left: 101.h),
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(right: 3.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIclocation,
                                              height: 13.adaptSize,
                                              width: 13.adaptSize,
                                            ),
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                        SizedBox(height: 146.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "lbl_ascot_house".tr,
                                            style: CustomTextStyles
                                                .labelLargeWhiteA700_1,
                                          ),
                                        ),
                                        SizedBox(height: 7.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "msg_jl_cilandak_tengah".tr,
                                            style: CustomTextStyles
                                                .bodySmallBluegray1000110,
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
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "lbl_best_for_you".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_see_more".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        children: [
                          Container(
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgPexelsExpectBest323780,
                              height: 59.v,
                              width: 63.h,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "lbl_orchad_house".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "msg_rp_2_500_000_000".tr,
                                  style: CustomTextStyles.bodySmallLightblue700,
                                ),
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 80.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgIcBed,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 4.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_6_bedroom".tr,
                                          style: CustomTextStyles.bodySmall10,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcBath,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 39.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              top: 44.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_4_bathroom".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.v),
                      Row(
                        children: [
                          Container(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgKseniaBalandin,
                              height: 59.v,
                              width: 63.h,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_the_hollies_house".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "msg_rp_2_000_000_000".tr,
                                  style: CustomTextStyles.bodySmallLightblue700,
                                ),
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 79.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgIcBed,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 4.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_5_bedroom".tr,
                                          style: CustomTextStyles.bodySmall10,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcBath,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              left: 18.h,
                              top: 39.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              top: 44.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_2_bathroom".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.v),
                      Row(
                        children: [
                          Container(
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAviWerdeHhz4y,
                              height: 59.v,
                              width: 63.h,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "msg_sea_breezes_house".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(left: 80.h),
                        child: Text(
                          "msg_rp_900_000_000".tr,
                          style: CustomTextStyles.bodySmallLightblue700,
                        ),
                      ),
                      SizedBox(height: 36.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 148.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIcBath,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 7.h,
                                  top: 4.v,
                                ),
                                child: Text(
                                  "lbl_2_bathroom".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40.v),
                      Padding(
                        padding: EdgeInsets.only(left: 83.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              height: 10.v,
                              width: 13.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "lbl_2_bedroom".tr,
                                style: CustomTextStyles.bodySmall10,
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
        ),
      ),
    );
  }
}
