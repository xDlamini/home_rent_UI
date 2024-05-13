import '../../../core/app_export.dart';

/// This class is used in the [slidablelist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable
class SlidablelistItemModel {
  SlidablelistItemModel(
      {this.pexelsexpect,
      this.orchadhouse,
      this.rp2500000,
      this.icbedOne,
      this.bedroomCounter,
      this.icbathOne,
      this.bathroomCounter,
      this.id}) {
    pexelsexpect = pexelsexpect ?? ImageConstant.imgPexelsExpectBest32378070x74;
    orchadhouse = orchadhouse ?? "Orchad House";
    rp2500000 = rp2500000 ?? "Rp. 2.500.000.000 / Year";
    icbedOne = icbedOne ?? ImageConstant.imgIcBed;
    bedroomCounter = bedroomCounter ?? "6 Bedroom";
    icbathOne = icbathOne ?? ImageConstant.imgIcBath;
    bathroomCounter = bathroomCounter ?? "4 Bathroom";
    id = id ?? "";
  }

  String? pexelsexpect;

  String? orchadhouse;

  String? rp2500000;

  String? icbedOne;

  String? bedroomCounter;

  String? icbathOne;

  String? bathroomCounter;

  String? id;
}
