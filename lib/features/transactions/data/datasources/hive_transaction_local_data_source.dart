import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/ database/hive_boxes.dart';
import '../models/transaction_model.dart';
import 'transaction_local_data_source.dart';

class HiveTransactionLocalDataSource
    implements TransactionLocalDataSource {

  HiveTransactionLocalDataSource();

  Box<Map> get _box => Hive.box<Map>(HiveBoxes.transactions);

  @override
  Future<void> addTransaction(TransactionModel transaction) async {
    await _box.put(
      transaction.id,
      transaction.toJson(),
    );
  }

  @override
  Future<List<TransactionModel>> getTransactions() async {
    return _box.values
        .map(
          (json) => TransactionModel.fromJson(
        Map<String, dynamic>.from(json),
      ),
    )
        .toList();
  }

  @override
  Future<TransactionModel?> getTransactionById(String id) async {
    final json = _box.get(id);

    if (json == null) return null;

    return TransactionModel.fromJson(
      Map<String, dynamic>.from(json),
    );
  }

  @override
  Future<void> updateTransaction(TransactionModel transaction) async {
    await _box.put(
      transaction.id,
      transaction.toJson(),
    );
  }

  @override
  Future<void> deleteTransaction(String id) async {
    await _box.delete(id);
  }

  @override
  Future<void> deleteAllTransactions() async {
    await _box.clear();
  }
}