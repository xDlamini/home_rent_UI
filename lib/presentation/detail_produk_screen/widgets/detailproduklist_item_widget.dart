import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/detailproduklist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DetailproduklistItemWidget extends StatelessWidget {
  DetailproduklistItemWidget(this.detailproduklistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  DetailproduklistItemModel detailproduklistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: detailproduklistItemModelObj.cathanOne!,
        height: 71.v,
        width: 72.h,
        radius: BorderRadius.circular(
          10.h,
        ),
        margin: EdgeInsets.only(top: 1.v),
      ),
    );
  }
}
