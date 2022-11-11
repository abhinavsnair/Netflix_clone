import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';
part 'downloads_bloc.freezed.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  DownloadsBloc() : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) {
      emit(state.copyWith(
        isLoading: true,
        DownloadsFailureOrsuccessOption: none(),
      ));
    });
  }
}
