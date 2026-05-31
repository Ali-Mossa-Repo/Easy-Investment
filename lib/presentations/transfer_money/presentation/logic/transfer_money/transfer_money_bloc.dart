import 'package:admin_dashboard/presentations/transfer_money/presentation/middleware/transfer_money_middleware.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transfer_money_event.dart';
part 'transfer_money_state.dart';

class TransferMoneyBloc extends Bloc<TransferMoneyEvent, TransferMoneyState> {
  final TransferMoneyMiddleware transferMoneyMiddleware;
  TransferMoneyBloc({required this.transferMoneyMiddleware})
    : super(TransferMoneyInitial()) {
    on<TransferMoneyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
