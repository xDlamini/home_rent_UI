import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../custom_drop_down.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown(
      {Key? key,
      required this.hintText,
      required this.items,
      required this.onTap,
      this.margin})
      : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 96.h,
        icon: SizedBox(
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        hintText: "lbl_jakarta".tr,
        items: items,
      ),
    );
  }
}
