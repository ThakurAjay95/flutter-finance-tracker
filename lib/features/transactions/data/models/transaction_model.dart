import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/transaction_type.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    required String title,
    required double amount,
    required String categoryId,
    required TransactionType type,
    required DateTime date,
    String? note,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

extension TransactionModelMapper on TransactionModel {
  Transaction toEntity() {
    return Transaction(
      id: id,
      title: title,
      amount: amount,
      categoryId: categoryId,
      type: type,
      date: date,
      note: note,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}


extension TransactionMapper on Transaction {
  TransactionModel toModel() {
    return TransactionModel(
      id: id,
      title: title,
      amount: amount,
      categoryId: categoryId,
      type: type,
      date: date,
      note: note,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}