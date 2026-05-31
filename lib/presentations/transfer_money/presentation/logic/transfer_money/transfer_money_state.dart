part of 'transfer_money_bloc.dart';

sealed class TransferMoneyState extends Equatable {
  const TransferMoneyState();
  
  @override
  List<Object> get props => [];
}

final class TransferMoneyInitial extends TransferMoneyState {}
