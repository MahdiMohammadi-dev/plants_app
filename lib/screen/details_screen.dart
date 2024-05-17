import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/component/plant_image_details.dart';
import 'package:plants/gen/fonts.gen.dart';
import 'package:plants/model/plants_model.dart';
import 'package:plants/utils/app_color.dart';

import '../component/plants_details_bottom_icon.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.plant});

  final PlantsModel plant;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentPhoto = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kbackgroundColor,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlantImageDetails(
                onChanged: (value) => setState(() => currentPhoto = value),
                plant: widget.plant,
                currentPhoto: currentPhoto,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Text(
                  widget.plant.name,
                  style: const TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque',
                  maxLines: 4,
                  textDirection: TextDirection.ltr,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontFamily: FontFamily.poppins, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: const BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PlantsDetailsBottomIcon(
                          icon: Icons.height,
                          titleIcon: 'Height',
                          subtitleIcon: '30cm - 40cm',
                        ),
                        PlantsDetailsBottomIcon(
                          icon: Icons.device_thermostat,
                          titleIcon: 'Temperature',
                          subtitleIcon: '20C - 40C',
                        ),
                        PlantsDetailsBottomIcon(
                          icon: Icons.yard_outlined,
                          titleIcon: 'Height',
                          subtitleIcon: 'Ceramic Pot',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Total Price',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                '\$${widget.plant.price}',
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: kprimaryColor.withOpacity(0.6),
                              padding: const EdgeInsets.all(20),
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),)
                            ),
                            child: const Text('Add to Cart'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
