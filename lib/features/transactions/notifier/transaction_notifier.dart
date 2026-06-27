import 'package:flutter_riverpod/legacy.dart';

import '../providers/state/transaction_state.dart';
import '../repositories/transaction_repository.dart';


class TransactionNotifier
    extends StateNotifier<TransactionState> {

  TransactionNotifier(
      this._repository,
      ) : super(const TransactionState());

  final TransactionRepository _repository;
}