import '../models/transaction_model.dart';

abstract interface class TransactionLocalDataSource {
  Future<List<TransactionModel>> getTransactions();

  Future<TransactionModel?> getTransactionById(String id);

  Future<void> addTransaction(TransactionModel transaction);

  Future<void> updateTransaction(TransactionModel transaction);

  Future<void> deleteTransaction(String id);

  Future<void> deleteAllTransactions();
}