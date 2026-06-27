import 'package:expen_flow/features/transactions/providers/state/transaction_state.dart';
import 'package:expen_flow/features/transactions/repositories/transaction_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../core/di/service_locator.dart';
import '../notifier/transaction_notifier.dart';

final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  return sl<TransactionRepository>();
});

final transactionNotifierProvider =
    StateNotifierProvider<TransactionNotifier, TransactionState>((ref) {
      return TransactionNotifier(ref.read(transactionRepositoryProvider));
    });
