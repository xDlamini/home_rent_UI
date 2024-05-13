import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../menu_page/menu_page.dart';
import 'notifier/menu_tab_container_notifier.dart';

class MenuTabContainerScreen extends ConsumerStatefulWidget {
  const MenuTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MenuTabContainerScreenState createState() => MenuTabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuTabContainerScreenState extends ConsumerState<MenuTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lightBlue700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              _buildColumnhomevalue(context),
              Spacer(),
              Container(
                margin: EdgeInsets.only(
                  top: 80.v,
                  bottom: 581.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder17,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_location".tr,
                      style: CustomTextStyles.bodySmallGray60010,
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_jakarta".tr,
                            style: CustomTextStyles.titleMedium17,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 3.h),
                        )
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Row(
                      children: [
                        Consumer(
                          builder: (context, ref, _) {
                            return CustomSearchView(
                              width: 136.h,
                              controller: ref
                                  .watch(menuTabContainerNotifier)
                                  .searchController,
                              hintText: "msg_search_address".tr,
                              hintStyle: CustomTextStyles.bodySmall10,
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 109.h),
                          child: Consumer(
                            builder: (context, ref, _) {
                              return CustomTextFormField(
                                width: 1.h,
                                controller: ref
                                    .watch(menuTabContainerNotifier)
                                    .icfilteroneController,
                                textInputAction: TextInputAction.done,
                                borderDecoration: TextFormFieldStyleHelper
                                    .gradientBlueToLightBlue,
                                filled: false,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 17.v),
                    Row(
                      children: [
                        SizedBox(
                          height: 33.v,
                          width: 136.h,
                          child: TabBar(
                            controller: tabviewController,
                            isScrollable: true,
                            labelColor: appTheme.whiteA700,
                            labelStyle: TextStyle(
                              fontSize: 10.272025108337402.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedLabelColor: appTheme.gray60001,
                            unselectedLabelStyle: TextStyle(
                              fontSize: 10.272025108337402.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                            indicatorPadding: EdgeInsets.all(
                              2.0.h,
                            ),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, -0.48),
                                end: Alignment(0.5, 1.31),
                                colors: [
                                  appTheme.blue200,
                                  appTheme.lightBlue70001
                                ],
                              ),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "lbl_house".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_apartment".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_hotel".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_villa".tr,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 1.h,
                          margin: EdgeInsets.only(
                            left: 144.h,
                            bottom: 4.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 196.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.fillGray100,
                          child: Text(
                            "lbl_cottage".tr,
                            style: CustomTextStyles.bodySmallGray60010,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 231.v),
                height: 581.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [MenuPage(), MenuPage(), MenuPage(), MenuPage()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnhomevalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 130.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer(
            builder: (context, ref, _) {
              return CustomTextFormField(
                width: 165.h,
                controller:
                    ref.watch(menuTabContainerNotifier).homevalueoneController,
                hintText: "lbl_home".tr,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 8.v, 16.h, 8.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIchome,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
              );
            },
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcProfile,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_profile".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIclocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_nearby".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          SizedBox(
            width: 165.h,
            child: Divider(
              indent: 1.h,
            ),
          ),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcBookmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_bookmark".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcNotification,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_notification".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcMessage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "lbl_message".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          SizedBox(
            width: 165.h,
            child: Divider(
              indent: 1.h,
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: _buildLogout(
              context,
              logoutImage: ImageConstant.imgIcSetting,
              logoutText: "lbl_setting".tr,
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcHelp,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "lbl_help".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: _buildLogout(
              context,
              logoutImage: ImageConstant.imgIcLogout,
              logoutText: "lbl_logout".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLogout(
    BuildContext context, {
    required String logoutImage,
    required String logoutText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: logoutImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 3.v,
          ),
          child: Text(
            logoutText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        )
      ],
    );
  }
}
