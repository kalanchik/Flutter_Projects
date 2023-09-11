import 'package:flutter/material.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final Color color;

  Content({
    required this.name,
    required this.imageUrl,
    this.titleImageUrl = "",
    this.videoUrl = "",
    this.description = "",
    this.color = Colors.white,
  });
}
