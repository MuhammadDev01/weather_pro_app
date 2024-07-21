part of 'search_cubit.dart';

@immutable
sealed class AppStates {}

final class SearchInitialState extends AppStates {}

final class SearchSuccessState extends AppStates {}

final class SearchFailureState extends AppStates {}

final class SearchLoadingState extends AppStates {}
