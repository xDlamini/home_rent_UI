import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_dropdown.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'models/slidablelist_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'notifier/home_notifier.dart';
import 'widgets/slidablelist_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Column(
              children: [
                _buildRowSearch(context),
                SizedBox(height: 18.v),
                _buildCategory(context),
                SizedBox(height: 28.v),
                _buildColumnNearFromYou(context),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildRowBestForYou(
                    context,
                    bestForYouText: "lbl_best_for_you".tr,
                    seeMoreText: "lbl_see_more".tr,
                  ),
                ),
                SizedBox(height: 22.v),
                _buildSlidableList(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "lbl_location".tr,
              margin: EdgeInsets.only(right: 48.h),
            ),
            SizedBox(height: 7.v),
            Consumer(
              builder: (context, ref, _) {
                return AppbarTitleDropdown(
                  hintText: "lbl_xolile".tr,
                  items:
                      ref.watch(homeNotifier).homeModelObj?.dropdownItemList ??
                          [],
                  onTap: (value) {
                    ref.watch(homeNotifier).selectedDropDownValue = value;
                  },
                );
              },
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcNotificationBlack900,
          margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 19.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, _) {
              return CustomSearchView(
                controller: ref.watch(homeNotifier).searchController,
                hintText: "msg_search_address".tr,
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.gradientBlueToLightBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgSend,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory(BuildContext context) {
    // Provide a default SlidablelistItemModel instance
    final item = SlidablelistItemModel();

    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 39.v,
                width: 69.h,
                margin: EdgeInsets.only(top: 2.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Opacity(
                      opacity: 0.24,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 20.v,
                          width: 57.h,
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 69.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 9.v,
                        ),
                        decoration:
                            AppDecoration.gradientBlueToLightBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "lbl_house".tr,
                          style: CustomTextStyles.labelLargeWhiteA700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 92.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_apartment".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 63.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_hotel".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 56.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_villa".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                height: 38.v,
                width: 77.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  bottom: 3.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 38.v,
                        width: 20.h,
                        margin: EdgeInsets.only(left: 7.h),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [
                              appTheme.whiteA700,
                              appTheme.whiteA700.withOpacity(0)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 77.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "lbl_cottage".tr,
                          style: CustomTextStyles.bodySmallGray600,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnNearFromYou(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 20.h,
            ),
            child: _buildRowBestForYou(
              context,
              bestForYouText: "lbl_near_from_you".tr,
              seeMoreText: "lbl_see_more".tr,
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 284.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 2.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 1.h,
                    );
                  },
                  itemCount: ref
                          .watch(homeNotifier)
                          .homeModelObj
                          ?.userprofileItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model = ref
                            .watch(homeNotifier)
                            .homeModelObj
                            ?.userprofileItemList[index] ??
                        UserprofileItemModel();
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSlidableList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 50.h,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 23.v,
                );
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.slidablelistItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                SlidablelistItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.slidablelistItemList[index] ??
                    SlidablelistItemModel();
                return SlidablelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRowBestForYou(
    BuildContext context, {
    required String bestForYouText,
    required String seeMoreText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bestForYouText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            seeMoreText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray60001,
            ),
          ),
        )
      ],
    );
  }
}
