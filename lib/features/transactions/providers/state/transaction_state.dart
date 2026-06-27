import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/transaction.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(false) bool isLoading,
    @Default([]) List<Transaction> transactions,
    String? error,
  }) = _TransactionState;
}