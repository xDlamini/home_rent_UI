import '../../../core/app_export.dart';

/// This class is used in the [detailproduklist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DetailproduklistItemModel {
  DetailproduklistItemModel({this.cathanOne, this.id}) {
    cathanOne = cathanOne ?? ImageConstant.imgCatHanApd1ynuyp0wUnsplash;
    id = id ?? "";
  }

  String? cathanOne;

  String? id;
}
