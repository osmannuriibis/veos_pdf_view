import 'dart:typed_data';

import 'package:alh_pdf_view/model/fit_policy.dart';
import 'package:flutter/cupertino.dart';

/// These params are added for the native views.
class AlhPdfViewCreationParams {
  final String? filePath;
  final Uint8List? bytes;

  final FitPolicy fitPolicy;
  final bool fitEachPage; // only: Android
  final bool enableSwipe;
  final bool swipeHorizontal;
  final bool nightMode; // only: Android
  final bool autoSpacing; // only: Android
  final bool pageFling;
  final bool pageSnap; // only: Android
  final int defaultPage;
  final double defaultZoomFactor;
  final Color backgroundColor;
  final String password;
  final bool enableDoubleTap; // only: iOS

  const AlhPdfViewCreationParams({
    required this.filePath,
    required this.bytes,
    required this.fitPolicy,
    required this.fitEachPage,
    required this.enableSwipe,
    required this.swipeHorizontal,
    required this.nightMode,
    required this.autoSpacing,
    required this.pageFling,
    required this.pageSnap,
    required this.defaultPage,
    required this.defaultZoomFactor,
    required this.backgroundColor,
    required this.password,
    required this.enableDoubleTap,
  });

  Map<String, dynamic> toMap() => {
        'filePath': this.filePath,
        'bytes': this.bytes,
        'fitPolicy': this.fitPolicy.toString(),
        'fitEachPage': this.fitEachPage,
        'enableSwipe': this.enableSwipe,
        'swipeHorizontal': this.swipeHorizontal,
        'nightMode': this.nightMode,
        'autoSpacing': this.autoSpacing,
        'pageFling': this.pageFling,
        'pageSnap': this.pageSnap,
        'defaultPage': this.defaultPage,
        'defaultZoomFactor': this.defaultZoomFactor,
        'backgroundColor': this.backgroundColor.value,
        'password': this.password,
        'enableDoubleTap': this.enableDoubleTap,
      };
}