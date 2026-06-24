import '../../domain/entities/transaction.dart';
import '../../repositories/transaction_repository.dart';
import '../datasources/transaction_local_data_source.dart';
import '../models/transaction_model.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  TransactionRepositoryImpl({
    required this.localDataSource,
  });

  final TransactionLocalDataSource localDataSource;

  @override
  Future<void> addTransaction(Transaction transaction) async {
    await localDataSource.addTransaction(
      _toModel(transaction),
    );
  }

  @override
  Future<List<Transaction>> getTransactions() async {
    final models = await localDataSource.getTransactions();

    return models
        .map(_toEntity)
        .toList();
  }

  @override
  Future<Transaction?> getTransactionById(String id) async {
    final model = await localDataSource.getTransactionById(id);

    if (model == null) {
      return null;
    }

    return _toEntity(model);
  }

  @override
  Future<void> updateTransaction(Transaction transaction) async {
    await localDataSource.updateTransaction(
      _toModel(transaction),
    );
  }

  @override
  Future<void> deleteTransaction(String id) async {
    await localDataSource.deleteTransaction(id);
  }

  @override
  Future<void> deleteAllTransactions() async {
    await localDataSource.deleteAllTransactions();
  }

  /// Converts Entity -> Model
  TransactionModel _toModel(Transaction transaction) {
    return TransactionModel(
      id: transaction.id,
      title: transaction.title,
      amount: transaction.amount,
      categoryId: transaction.categoryId,
      type: transaction.type,
      date: transaction.date,
      note: transaction.note,
      createdAt: transaction.createdAt,
      updatedAt: transaction.updatedAt,
    );
  }

  /// Converts Model -> Entity
  Transaction _toEntity(TransactionModel model) {
    return Transaction(
      id: model.id,
      title: model.title,
      amount: model.amount,
      categoryId: model.categoryId,
      type: model.type,
      date: model.date,
      note: model.note,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }
}