class Items {
  final String imageurl;
  final double price;
  final String name;
  final bool isFavourite;

  Items({
    required this.name,
    required this.price,
    required this.imageurl,
    required this.isFavourite,
  });
}

List<Items> item = [
  Items(
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/duwfa11686236556.jpg',
      price: 8.5,
      name: 'Mauresque',
      isFavourite: true),
  Items(
      name: 'Cocktail Horses Neck',
      price: 12,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/4vobt21643844913.jpg',
      isFavourite: true),
  Items(
      name: 'Ramos Gin Fizz',
      price: 7.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/967t911643844053.jpg',
      isFavourite: true),
  Items(
      name: 'Gin Lemon',
      price: 5.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/6gdohq1681212476.jpg',
      isFavourite: false),
  Items(
      name: 'Thai Coffee',
      price: 7.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/wquwxs1441247025.jpg',
      isFavourite: false),
  Items(
      name: 'Iced Coffee Fillip',
      price: 15.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/sxtxrp1454514223.jpg',
      isFavourite: false),
  Items(
      name: 'Irish Coffee',
      price: 3.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/sywsqw1439906999.jpg',
      isFavourite: false),
  Items(
      name: 'Jamaican Coffee',
      price: 2.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/xqptps1441247257.jpg',
      isFavourite: false),
  Items(
      name: 'Thai Iced Tea',
      price: 6.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/trvwpu1441245568.jpg',
      isFavourite: false),
  Items(
      name: 'Pineapple Gingerale',
      price: 10.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/eg9i1d1487603469.jpg',
      isFavourite: false),
  Items(
      name: 'Kill the cold',
      price: 11.0,
      imageurl:
          'https://www.thecocktaildb.com/images/media/drink/7j1z2e1487603414.jpg',
      isFavourite: false),
  Items(
      name: 'cocktail',
      price: 5.0,
      imageurl: 'https://pngimg.com/d/cocktail_PNG31.png',
      isFavourite: false),
];
