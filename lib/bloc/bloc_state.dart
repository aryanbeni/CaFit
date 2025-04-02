import 'package:equatable/equatable.dart';

class NavState extends Equatable {
  final int selectedIndex;
  const NavState(this.selectedIndex);

  @override
  List<Object?> get props => [selectedIndex];
}