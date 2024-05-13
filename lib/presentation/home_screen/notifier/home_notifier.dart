import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/home_model.dart';
import '../models/slidablelist_item_model.dart';
import '../models/userprofile_item_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    searchController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    homeModelObj: HomeModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], userprofileItemList: [
      UserprofileItemModel(
          address: ImageConstant.imgWebaliserTptx272x222,
          houseName: "Dreamsville House",
          streetName: "Jl. Sultan Iskandar Muda"),
      UserprofileItemModel(
          address: ImageConstant.imgDigitalMarketi272x222,
          houseName: "Ascot House",
          streetName: "Jl. Cilandak Tengah")
    ], slidablelistItemList: [
      SlidablelistItemModel(
          pexelsexpect: ImageConstant.imgPexelsExpectBest32378070x74,
          orchadhouse: "Orchad House",
          rp2500000: "Rp. 2.500.000.000 / Year",
          icbedOne: ImageConstant.imgIcBed,
          bedroomCounter: "6 Bedroom",
          icbathOne: ImageConstant.imgIcBath,
          bathroomCounter: "4 Bathroom"),
      SlidablelistItemModel(
          pexelsexpect: ImageConstant.imgKseniaBalandin70x74,
          orchadhouse: "The Hollies House",
          rp2500000: "Rp. 2.000.000.000 / Year",
          icbedOne: ImageConstant.imgIcBed,
          bedroomCounter: "5 Bedroom",
          icbathOne: ImageConstant.imgIcBath,
          bathroomCounter: "2 Bathroom"),
      SlidablelistItemModel(
          pexelsexpect: ImageConstant.imgAviWerdeHhz4y70x74,
          orchadhouse: "Sea Breezes\r House",
          rp2500000: "Rp. 900.000.000 / Year",
          icbedOne: ImageConstant.imgIcBed,
          bedroomCounter: "2 Bedroom",
          icbathOne: ImageConstant.imgIcBath,
          bathroomCounter: "2 Bathroom")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
