part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoading extends AddNoteCubitState {}

final class AddNoteCubSuccess extends AddNoteCubitState {}

final class AddNoteCubitFaliure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitFaliure({required this.errorMessage});
}
