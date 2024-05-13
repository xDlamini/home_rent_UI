import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/menu_tab_container_model.dart';
part 'menu_tab_container_state.dart';

final menuTabContainerNotifier =
    StateNotifierProvider<MenuTabContainerNotifier, MenuTabContainerState>(
  (ref) => MenuTabContainerNotifier(MenuTabContainerState(
    homevalueoneController: TextEditingController(),
    searchController: TextEditingController(),
    icfilteroneController: TextEditingController(),
    menuTabContainerModelObj: MenuTabContainerModel(),
  )),
);

/// A notifier that manages the state of a MenuTabContainer according to the event that is dispatched to it.
class MenuTabContainerNotifier extends StateNotifier<MenuTabContainerState> {
  MenuTabContainerNotifier(MenuTabContainerState state) : super(state);
}
