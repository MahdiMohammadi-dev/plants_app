import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:plants/utils/app_color.dart';
import 'package:plants/gen/assets.gen.dart';
import 'package:plants/gen/fonts.gen.dart';
import 'package:plants/model/plants_model.dart';
import 'package:plants/screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: kbackgroundColor,
              title: const Text(
                'Search Product',
                style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.chevron_back, size: 30),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    height: 60,
                    child: CircleAvatar(
                      child: Image.asset(
                        Assets.img.avatar.path,
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SearchBoxWithSetting(),
                  MasonryGridView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      const Text(
                        'Found \n10 Results',
                        style: TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                      for (var plant in plants)
                        InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              plant: plant,
                            ),
                          )),
                          child: Container(
                            decoration: BoxDecoration(
                              color: kcontentColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(plant.image),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  plant.name,
                                  style: const TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$ ${plant.price}',
                                      style: const TextStyle(
                                          fontFamily: FontFamily.poppins,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      child: IconButton(
                                        padding:
                                            const EdgeInsets.only(right: 1),
                                        onPressed: () {},
                                        icon: const Icon(Iconsax.heart,
                                            size: 19, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            )));
  }
}

class SearchBoxWithSetting extends StatelessWidget {
  const SearchBoxWithSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Expanded(
            flex: 5,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                hintStyle: TextStyle(fontSize: 14),
                prefixIcon: Icon(CupertinoIcons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: kcontentColor,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: kcontentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: const Icon(Iconsax.setting_4),
            ),
          )
        ],
      ),
    );
  }
}
