class ProductModel {
  int? id;
  String? name;
  double? price;
  String? image;
  bool? isFavorite;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.isFavorite,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    name: 'Laptop Dell',
    price: 22000 ,
    image:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS2RD07OivQO1qNrGeeE6c-Lu-_Pnct2bZDH1OEipVbhJuzuQB4WltWxGZu4M95N4eBpM&usqp=CAU',
    isFavorite: false,
  ),
  ProductModel(
    id: 2,
    name: 'iphone 12 pro max',
    price: 30000,
    image:
    'https://review-plus.com/wp-content/uploads/2021/09/iPhone-13-Pro-Max-300x300.jpg',
    isFavorite: false,
  ),
  ProductModel(
    id: 3,
    name: 'iphone 11 pro max',
    price: 25000,
    image:
    'https://www.o2.co.uk/documents/1106106/3384729/iphone-13-pro-sierra-business-sku-header-141021_0.png/12972ca5-fd5a-86ac-cce1-5286ddc5ac82?t=1631662030184',
    isFavorite: false,
  ),
  ProductModel(
    id: 4,
    name: 'Air Bods',
    price: 250,
    image:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-dhYsYydMrCxLliNF0FIvBXCJI8_cqAwxBA&usqp=CAU',
    isFavorite: false,
  ),
  ProductModel(
    id: 5,
    name: 'Bluetooth headphones',
    price: 350,
    image:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOWmDU1KVPy9TUDY64sLmFts_aLLQP-stFkw&usqp=CAU',
    isFavorite: false,
  ),

  ProductModel(
    id: 6,
    name: 'wireless microphone',
    price: 150,
    image:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn476F2rDO3jiTmUonWF73RyLlXJgIVZZtqg&usqp=CAU',
    isFavorite: false,
  ),
];
