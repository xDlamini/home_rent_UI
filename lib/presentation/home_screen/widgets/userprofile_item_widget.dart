import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.v),
      width: 222.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofileItemModelObj.address!,
            height: 272.v,
            width: 222.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  CustomElevatedButton(
                    height: 24.v,
                    width: 73.h,
                    text: "lbl_1_8_km".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIclocation,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.bodySmallWhiteA700_1,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 170.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      userprofileItemModelObj.houseName!,
                      style: CustomTextStyles.titleMediumWhiteA700_1,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      userprofileItemModelObj.streetName!,
                      style: CustomTextStyles.bodySmallBluegray10001,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
