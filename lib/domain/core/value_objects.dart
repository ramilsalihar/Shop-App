import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  bool operator == (Object other) =>
      identical(this, other) ||
      other is ValueObject<T> && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

}
