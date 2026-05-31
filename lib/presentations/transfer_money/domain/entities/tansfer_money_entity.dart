import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class TansferMoneyEntity extends Equatable {
  int id;
  TansferMoneyEntity({required this.id});

  @override
  List<Object?> get props => [id];
}
