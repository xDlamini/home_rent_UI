import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../core/app_export.dart';
import '../models/slidablelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SlidablelistItemWidget extends StatelessWidget {
  SlidablelistItemWidget(this.slidablelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SlidablelistItemModel slidablelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.39,
        dragDismissible: false,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20.h),
            child: Container(
              child: CustomImageView(
                imagePath: ImageConstant.imgRArchitecture,
                height: 69.v,
                width: 74.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CustomImageView(
              imagePath: slidablelistItemModelObj.pexelsexpect!,
              height: 70.v,
              width: 74.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  slidablelistItemModelObj.orchadhouse!,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                slidablelistItemModelObj.rp2500000!,
                style: CustomTextStyles.bodySmallLightblue700_1,
              ),
              SizedBox(height: 3.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: slidablelistItemModelObj.icbedOne!,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      slidablelistItemModelObj.bedroomCounter!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: slidablelistItemModelObj.icbathOne!,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 19.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      slidablelistItemModelObj.bathroomCounter!,
                      style: theme.textTheme.bodySmall,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
