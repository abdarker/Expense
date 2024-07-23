// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(0)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(1)
  set description(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  int get icon => throw _privateConstructorUsedError;
  @HiveField(2)
  set icon(int value) => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get superId => throw _privateConstructorUsedError;
  @HiveField(4)
  set superId(int? value) => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: 0)
  double? get budget => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: 0)
  set budget(double? value) => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: false)
  bool get isBudget => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: false)
  set isBudget(bool value) => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: 0xFFFFC107)
  int? get color => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: 0xFFFFC107)
  set color(int? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  CategoryType? get categoryType => throw _privateConstructorUsedError;
  @HiveField(9)
  set categoryType(CategoryType? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? description,
      @HiveField(2) int icon,
      @HiveField(4) int? superId,
      @HiveField(6, defaultValue: 0) double? budget,
      @HiveField(7, defaultValue: false) bool isBudget,
      @HiveField(8, defaultValue: 0xFFFFC107) int? color,
      @HiveField(9) CategoryType? categoryType});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? icon = null,
    Object? superId = freezed,
    Object? budget = freezed,
    Object? isBudget = null,
    Object? color = freezed,
    Object? categoryType = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      isBudget: null == isBudget
          ? _value.isBudget
          : isBudget // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? description,
      @HiveField(2) int icon,
      @HiveField(4) int? superId,
      @HiveField(6, defaultValue: 0) double? budget,
      @HiveField(7, defaultValue: false) bool isBudget,
      @HiveField(8, defaultValue: 0xFFFFC107) int? color,
      @HiveField(9) CategoryType? categoryType});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? icon = null,
    Object? superId = freezed,
    Object? budget = freezed,
    Object? isBudget = null,
    Object? color = freezed,
    Object? categoryType = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      isBudget: null == isBudget
          ? _value.isBudget
          : isBudget // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'CategoryModelAdapter')
class _$CategoryModelImpl extends _CategoryModel {
  _$CategoryModelImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) this.description,
      @HiveField(2) required this.icon,
      @HiveField(4) this.superId,
      @HiveField(6, defaultValue: 0) this.budget,
      @HiveField(7, defaultValue: false) this.isBudget = false,
      @HiveField(8, defaultValue: 0xFFFFC107) this.color,
      @HiveField(9) this.categoryType = CategoryType.income})
      : super._();

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @HiveField(0)
  String name;
  @override
  @HiveField(1)
  String? description;
  @override
  @HiveField(2)
  int icon;
  @override
  @HiveField(4)
  int? superId;
  @override
  @HiveField(6, defaultValue: 0)
  double? budget;
  @override
  @JsonKey()
  @HiveField(7, defaultValue: false)
  bool isBudget;
  @override
  @HiveField(8, defaultValue: 0xFFFFC107)
  int? color;
  @override
  @JsonKey()
  @HiveField(9)
  CategoryType? categoryType;

  @override
  String toString() {
    return 'CategoryModel(name: $name, description: $description, icon: $icon, superId: $superId, budget: $budget, isBudget: $isBudget, color: $color, categoryType: $categoryType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel(
      {@HiveField(0) required String name,
      @HiveField(1) String? description,
      @HiveField(2) required int icon,
      @HiveField(4) int? superId,
      @HiveField(6, defaultValue: 0) double? budget,
      @HiveField(7, defaultValue: false) bool isBudget,
      @HiveField(8, defaultValue: 0xFFFFC107) int? color,
      @HiveField(9) CategoryType? categoryType}) = _$CategoryModelImpl;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @HiveField(0)
  set name(String value);
  @override
  @HiveField(1)
  String? get description;
  @HiveField(1)
  set description(String? value);
  @override
  @HiveField(2)
  int get icon;
  @HiveField(2)
  set icon(int value);
  @override
  @HiveField(4)
  int? get superId;
  @HiveField(4)
  set superId(int? value);
  @override
  @HiveField(6, defaultValue: 0)
  double? get budget;
  @HiveField(6, defaultValue: 0)
  set budget(double? value);
  @override
  @HiveField(7, defaultValue: false)
  bool get isBudget;
  @HiveField(7, defaultValue: false)
  set isBudget(bool value);
  @override
  @HiveField(8, defaultValue: 0xFFFFC107)
  int? get color;
  @HiveField(8, defaultValue: 0xFFFFC107)
  set color(int? value);
  @override
  @HiveField(9)
  CategoryType? get categoryType;
  @HiveField(9)
  set categoryType(CategoryType? value);
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
