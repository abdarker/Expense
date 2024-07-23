import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/category_type.dart';

import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

part 'add_category_use_case.freezed.dart';

@lazySingleton
class AddCategoryUseCase implements UseCase<void, AddCategoryParams> {
  AddCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<void> call(AddCategoryParams params) {
    return categoryRepository.add(
      name: params.name,
      desc: params.description,
      icon: params.icon,
      budget: params.budget,
      isBudget: params.isBudget,
      color: params.color,
      categoryType: params.categoryType,
    );
  }
}

@freezed
class AddCategoryParams with _$AddCategoryParams {
  const factory AddCategoryParams({
    required String name,
    double? budget,
    int? color,
    String? description,
    required int icon,
    @Default(false) bool isBudget,
    required CategoryType categoryType,
  }) = _AddCategoryParams;
}
