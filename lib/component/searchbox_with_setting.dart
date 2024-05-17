import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../utils/app_color.dart';

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
