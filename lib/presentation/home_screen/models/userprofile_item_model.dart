import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.address, this.houseName, this.streetName, this.id}) {
    address = address ?? ImageConstant.imgWebaliserTptx272x222;
    houseName = houseName ?? "Dreamsville House";
    streetName = streetName ?? "Jl. Sultan Iskandar Muda";
    id = id ?? "";
  }

  String? address;

  String? houseName;

  String? streetName;

  String? id;
}
