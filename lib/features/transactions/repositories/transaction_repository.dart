import '../domain/entities/transaction.dart';

abstract interface class TransactionRepository {
  Future<List<Transaction>> getTransactions();

  Future<Transaction?> getTransactionById(String id);

  Future<void> addTransaction(Transaction transaction);

  Future<void> updateTransaction(Transaction transaction);

  Future<void> deleteTransaction(String id);

  Future<void> deleteAllTransactions();
}