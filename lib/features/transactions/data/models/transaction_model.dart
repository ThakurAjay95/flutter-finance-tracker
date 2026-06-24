import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/transaction_type.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed class TransactionModel with _$TransactionModel {
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

  factory TransactionModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$TransactionModelFromJson(json);
}