import 'package:flutter/material.dart';

class IndexedStep extends Step {
  const IndexedStep({
    required super.title,
    required super.content,
    required super.state,
    required this.index,
    required this.currentStep,
  }) : super(
          isActive: currentStep == index,
        );

  final int index;
  final int currentStep;
}
