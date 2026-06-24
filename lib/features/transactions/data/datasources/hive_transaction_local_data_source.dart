import 'package:expen_flow/core/%20database/hive_boxes.dart';
import 'package:hive/hive.dart';

import '../models/transaction_model.dart';
import 'transaction_local_data_source.dart';

class HiveTransactionLocalDataSource implements TransactionLocalDataSource {
  HiveTransactionLocalDataSource();

  Box<Map> get _box => Hive.box<Map>(HiveBoxes.transactions);

  @override
  Future<void> addTransaction(TransactionModel transaction) {
    // TODO: implement addTransaction
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAllTransactions() {
    // TODO: implement deleteAllTransactions
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTransaction(String id) {
    // TODO: implement deleteTransaction
    throw UnimplementedError();
  }

  @override
  Future<TransactionModel?> getTransactionById(String id) {
    // TODO: implement getTransactionById
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionModel>> getTransactions() {
    // TODO: implement getTransactions
    throw UnimplementedError();
  }

  @override
  Future<void> updateTransaction(TransactionModel transaction) {
    // TODO: implement updateTransaction
    throw UnimplementedError();
  }
}
