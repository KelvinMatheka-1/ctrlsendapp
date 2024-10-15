import '/flutter_flow/flutter_flow_util.dart';
import 'selectwallet_widget.dart' show SelectwalletWidget;
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';

class SelectwalletModel extends FlutterFlowModel<SelectwalletWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  carousel.CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
