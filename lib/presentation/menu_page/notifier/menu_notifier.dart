import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/menu_model.dart';
part 'menu_state.dart';

final menuNotifier = StateNotifierProvider<MenuNotifier, MenuState>(
  (ref) => MenuNotifier(MenuState(
    menuModelObj: MenuModel(),
  )),
);

/// A notifier that manages the state of a Menu according to the event that is dispatched to it.
class MenuNotifier extends StateNotifier<MenuState> {
  MenuNotifier(MenuState state) : super(state);
}
