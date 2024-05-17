import 'package:flutter/material.dart';
import 'package:plants/model/plants_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.plant});

  final PlantsModel plant;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('Details name is ${plant.name}')),
      ),
    );
  }
}
