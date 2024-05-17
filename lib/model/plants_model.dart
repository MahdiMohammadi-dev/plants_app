import 'package:plants/gen/assets.gen.dart';

class PlantsModel {
  final String image;
  final String name;
  final String price;
  final String? category;
  final String description;
  const PlantsModel(
      {required this.description,
      required this.image,
      required this.name,
      required this.price,
      required this.category});
}

List<PlantsModel> plants = [
  PlantsModel(
      image: Assets.img.luckyJadePlants.path,
      name: 'lucky Jade Plants',
      price: '16.40',
      category: 'indoor',
      description:
          'Jade Plants are classic symbols of love and beauty. Their delicate petals and enchanting fragrance evoke feelings of romance and admiration. Choosing a rose reflects a timeless expression of affection and appreciation'),
  PlantsModel(
      image: Assets.img.miniPlant.path,
      name: 'Mini Plants',
      price: '24.23',
      category: 'indoor',
      description:
          'Mini Plants are vibrant and uplifting flowers, symbolizing positivity and strength. Their bright yellow petals follow the sun, symbolizing resilience and optimism. Selecting a sunflower signifies a celebration of happiness and a sunny disposition'),
  PlantsModel(
      image: Assets.img.peperomiaPlant.path,
      name: 'Peperomia Plants',
      price: '20.00',
      category: 'outdoor',
      description:
          'Peperomia are elegant flowers known for their graceful appearance and heavenly scent. They symbolize purity, renewal, and the beauty of the soul. Opting for a lily conveys sentiments of innocence, hope, and spiritual growth'),
  PlantsModel(
      image: Assets.img.smallPlants.path,
      name: 'Small Plants',
      price: '4.23',
      category: 'indoor',
      description:
          'Lilies are elegant flowers known for their graceful appearance and heavenly scent. They symbolize purity, renewal, and the beauty of the soul. Opting for a lily conveys sentiments of innocence, hope, and spiritual growth'),
  PlantsModel(
      image: Assets.img.snakePlants.path,
      name: 'Snake Plants',
      price: '56.40',
      category: 'indoor',
      description:
          'Snake Plants are cheerful flowers that come in a variety of colors, each representing different emotions and meanings. They symbolize perfect love, elegance, and grace. Choosing tulips can signify admiration, charm, and a playful spirit'),
];
