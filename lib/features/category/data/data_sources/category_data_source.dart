import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';

import 'package:paisa/features/category/data/model/category_model.dart';

abstract interface class CategoryDataSource {
  Future<void> add(CategoryModel category);

  Future<void> delete(int key);

  List<CategoryModel> categories();

  CategoryModel? findById(int categoryId);

  Iterable<CategoryModel> export();

  Future<void> update(CategoryModel categoryModel);

  Future<void> clear();
}

@LazySingleton(as: CategoryDataSource)
class LocalCategoryManagerDataSourceImpl implements CategoryDataSource {
  LocalCategoryManagerDataSourceImpl(this.categoryBox);

  final Box<CategoryModel> categoryBox;

  @override
  Future<void> add(CategoryModel category) async {
    final int id = await categoryBox.add(category);
    category.superId = id;
    return category.save();
  }

  @override
  List<CategoryModel> categories() {
    return categoryBox.values.filterDefault;
  }

  @override
  Future<void> clear() => categoryBox.clear();

  @override
  Future<void> delete(int key) async {
    await categoryBox.delete(key);
  }

  @override
  Iterable<CategoryModel> export() => categoryBox.values;

  @override
  CategoryModel? findById(int categoryId) => categoryBox.values
      .firstWhereOrNull((element) => element.superId == categoryId);

  @override
  Future<void> update(CategoryModel categoryModel) {
    return categoryBox.put(categoryModel.superId!, categoryModel);
  }
}
