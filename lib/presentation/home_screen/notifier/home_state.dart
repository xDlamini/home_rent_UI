part of 'home_notifier.dart';

/// Represents the state of Home in the application.

// ignore_for_file: must_be_immutable
class HomeState extends Equatable {
  HomeState(
      {this.searchController, this.selectedDropDownValue, this.homeModelObj});

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  HomeModel? homeModelObj;

  @override
  List<Object?> get props =>
      [searchController, selectedDropDownValue, homeModelObj];
  HomeState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
