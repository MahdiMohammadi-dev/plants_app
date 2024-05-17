import 'package:flutter/material.dart';
import 'package:plants/model/plants_model.dart';

import '../utils/app_color.dart';

class PlantImageDetails extends StatelessWidget {
  final PlantsModel plant;
  final Function(int value) onChanged;
  final int currentPhoto;
   PlantImageDetails({super.key, required this.onChanged, required this.plant, required this.currentPhoto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: PageView.builder(
            itemCount: 3,
            scrollDirection: Axis.vertical,
            onPageChanged: onChanged,
            itemBuilder: (context, index) =>
                Image.asset(plant.image),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 40,
            child:Column(
              children:  List.generate(
                3,
                    (index) => AnimatedContainer(
                  width: 6,
                  margin: const EdgeInsets.only(bottom: 5),
                  height: index == currentPhoto ? 15 : 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:index==currentPhoto? kprimaryColor:Colors.grey,
                  ), duration:const Duration(milliseconds: 300),
                ),
              ),
            )
        ),
      ],
    );
  }
}
