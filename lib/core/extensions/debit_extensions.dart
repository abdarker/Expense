import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';

extension DebitTypeHelper on DebitType {
  String stringValue(BuildContext context) {
    switch (this) {
      case DebitType.debit:
        return context.loc.debt;
      case DebitType.credit:
        return context.loc.credit;
    }
  }
}

extension DebitModelMapping on DebtModel {
  DebtEntity toEntity() {
    return DebtEntity(
      description: description,
      name: name,
      amount: amount,
      startDateTime: startDateTime,
      expiryDateTime: expiryDateTime,
      debtType: debtType,
      superId: superId ?? -1,
      color: color ?? 0xFF000000,
      icon: icon ?? 0xf04b6,
      isCompleted: isCompleted ?? false,
    );
  }
}

extension DebitModelsHelper on Iterable<DebtModel> {
  List<Map<String, dynamic>> toJson() {
    return map((e) => e.toJson()).toList();
  }
}
