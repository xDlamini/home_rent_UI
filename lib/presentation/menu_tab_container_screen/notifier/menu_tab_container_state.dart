part of 'menu_tab_container_notifier.dart';

/// Represents the state of MenuTabContainer in the application.

// ignore_for_file: must_be_immutable
class MenuTabContainerState extends Equatable {
  MenuTabContainerState(
      {this.homevalueoneController,
      this.searchController,
      this.icfilteroneController,
      this.menuTabContainerModelObj});

  TextEditingController? homevalueoneController;

  TextEditingController? searchController;

  TextEditingController? icfilteroneController;

  MenuTabContainerModel? menuTabContainerModelObj;

  @override
  List<Object?> get props => [
        homevalueoneController,
        searchController,
        icfilteroneController,
        menuTabContainerModelObj
      ];
  MenuTabContainerState copyWith({
    TextEditingController? homevalueoneController,
    TextEditingController? searchController,
    TextEditingController? icfilteroneController,
    MenuTabContainerModel? menuTabContainerModelObj,
  }) {
    return MenuTabContainerState(
      homevalueoneController:
          homevalueoneController ?? this.homevalueoneController,
      searchController: searchController ?? this.searchController,
      icfilteroneController:
          icfilteroneController ?? this.icfilteroneController,
      menuTabContainerModelObj:
          menuTabContainerModelObj ?? this.menuTabContainerModelObj,
    );
  }
}
