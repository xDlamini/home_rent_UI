import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'slidablelist_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.dropdownItemList = const [],
      this.userprofileItemList = const [],
      this.slidablelistItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<UserprofileItemModel> userprofileItemList;

  List<SlidablelistItemModel> slidablelistItemList;

  HomeModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<UserprofileItemModel>? userprofileItemList,
    List<SlidablelistItemModel>? slidablelistItemList,
  }) {
    return HomeModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      slidablelistItemList: slidablelistItemList ?? this.slidablelistItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, userprofileItemList, slidablelistItemList];
}
