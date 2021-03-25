import 'dart:core';

class GroceryProduct{
  const GroceryProduct({
    this.price,
    this.name,
    this.description,
    this.image,
    this.weight
  });
  final double price;
  final String name;
  final String description;
  final String image;
  final String weight;
}

const groceryProducts = <GroceryProduct>[
  GroceryProduct(
      price: 8.30,
      name: 'Avacado',
      description:'Also known as an alligator pear or butter fruit, the versatile avocado is the only fruit that provides a substantial amount of healthy monounsaturated fatty acids.',
      image:'assests/avagardo.jpg',
      weight: '500g'
  ),
  GroceryProduct(
      price: 2.30,
      name: 'Banana',
      description:'he banana plant is classified as an arborescent (tree-like) perennial herb, and the banana itself is considered a berry.',
      image:'assests/banana.jpg',
      weight: '200g'
  ),
  GroceryProduct(
      price: 9.30,
      name: 'cheery',
      description:'A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit).',
      image:'assests/cherry.jpg',
      weight: '100g'
  ),
  GroceryProduct(
      price: 8.30,
      name: 'orange',
      description:'The orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange.',
      image:'assests/orange.jpg',
      weight: '1000g'
  ),
  GroceryProduct(
      price: 6.30,
      name: 'Pineapple',
      description:'The pineapple (Ananas comosus) is a tropical plant with an edible fruit and the most economically significant plant in the family Bromeliaceae.',
      image:'assests/pineapple.jpg',
      weight: '100g'
  ),
  GroceryProduct(
      price: 8.00,
      name: 'Stawberry',
      description:'The strawberry is not, from a botanical point of view, a berry. Technically, it is an aggregate accessory fruit, meaning that the fleshy part.',
      image:'assests/stawberry.jpg',
      weight: '200g'
  ),
  GroceryProduct(
      price: 10.00,
      name: 'Watermellon',
      description:'Watermelon is a surprisingly healthy fruit. It has a high water content and also delivers many other important nutrients, including lycopene and vitamin C.',
      image:'assests/watermellon.jpg',
      weight: '1080g'
  ),
];