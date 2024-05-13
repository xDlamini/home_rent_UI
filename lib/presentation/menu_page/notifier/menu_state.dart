part of 'menu_notifier.dart';

/// Represents the state of Menu in the application.

// ignore_for_file: must_be_immutable
class MenuState extends Equatable {
  MenuState({this.menuModelObj});

  MenuModel? menuModelObj;

  @override
  List<Object?> get props => [menuModelObj];
  MenuState copyWith({MenuModel? menuModelObj}) {
    return MenuState(
      menuModelObj: menuModelObj ?? this.menuModelObj,
    );
  }
}
