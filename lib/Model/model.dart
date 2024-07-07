// ignore_for_file: unnecessary_null_comparison

class ProductModelClass {
  late final String name;
  late final String description;
  late final String uniqueId;
  late final String urlSlug;
  late final bool isAvailable;
  late final bool isService;
  late final dynamic previousUrlSlugs;
  late final bool unavailable;
  late final dynamic unavailableStart;
  late final dynamic unavailableEnd;
  late final String id;
  late final dynamic parentProductId;
  late final dynamic parent;
  late final String organizationId;
  late final List<dynamic> productImage;
  late final List<dynamic> categories;
  late final String dateCreated;
  late final String lastUpdated;
  late final String userId;
  late final List<Photos> photos;
  late final dynamic currentPrice;
  late final bool isDeleted;
  late final int availableQuantity;
  late final dynamic sellingPrice;
  late final dynamic discountedPrice;
  late final dynamic buyingPrice;
  late final dynamic extraInfos;

  ProductModelClass(
      {required this.name,
      required this.description,
      required this.uniqueId,
      required this.urlSlug,
      required this.isAvailable,
      required this.isService,
      this.previousUrlSlugs,
      required this.unavailable,
      this.unavailableStart,
      this.unavailableEnd,
      required this.id,
      this.parentProductId,
      this.parent,
      required this.organizationId,
      required this.productImage,
      required this.categories,
      required this.dateCreated,
      required this.lastUpdated,
      required this.userId,
      required this.photos,
      this.currentPrice,
      required this.isDeleted,
      required this.availableQuantity,
      this.sellingPrice,
      this.discountedPrice,
      this.buyingPrice,
      this.extraInfos});

  ProductModelClass.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    description = json['description'].toString();
    uniqueId = json['unique_id'].toString();
    urlSlug = json['url_slug'].toString();
    isAvailable = json['is_available'];
    isService = json['is_service'];
    previousUrlSlugs = json['previous_url_slugs'];
    unavailable = json['unavailable'];
    unavailableStart = json['unavailable_start'];
    unavailableEnd = json['unavailable_end'];
    id = json['id'].toString();
    parentProductId = json['parent_product_id'];
    parent = json['parent'];
    organizationId = json['organization_id'].toString();
    if (json['product_image'] != null) {
      productImage = <dynamic>[];
      json['product_image'].forEach((v) {
        productImage.add(v!);
      });
    }
    if (json['categories'] != null) {
      categories = <dynamic>[];
      json['categories'].forEach((v) {
        categories.add(v!);
      });
    }
    dateCreated = json['date_created'].toString();
    lastUpdated = json['last_updated'].toString();
    userId = json['user_id'].toString();
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos.add(Photos.fromJson(v));
      });
    }
    currentPrice = json['current_price'].toString();
    isDeleted = json['is_deleted'];
    availableQuantity = json['available_quantity'].toInt();
    sellingPrice = json['selling_price'];
    discountedPrice = json['discounted_price'];
    buyingPrice = json['buying_price'];
    extraInfos = json['extra_infos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name.toString();
    data['description'] = description.toString();
    data['unique_id'] = uniqueId.toString();
    data['url_slug'] = urlSlug.toString();
    data['is_available'] = isAvailable;
    data['is_service'] = isService;
    data['previous_url_slugs'] = previousUrlSlugs;
    data['unavailable'] = unavailable;
    data['unavailable_start'] = unavailableStart;
    data['unavailable_end'] = unavailableEnd;
    data['id'] = id.toString();
    data['parent_product_id'] = parentProductId;
    data['parent'] = parent;
    data['organization_id'] = organizationId.toString();
    if (productImage != null) {
      data['product_image'] = productImage.map((v) => v!).toList();
    }
    if (categories != null) {
      data['categories'] = categories.map((v) => v!).toList();
    }
    data['date_created'] = dateCreated.toString();
    data['last_updated'] = lastUpdated.toString();
    data['user_id'] = userId.toString();
    if (photos != null) {
      data['photos'] = photos.map((v) => v.toJson()).toList();
    }
    data['current_price'] = currentPrice;
    data['is_deleted'] = isDeleted;
    data['available_quantity'] = availableQuantity.toInt();
    data['selling_price'] = sellingPrice;
    data['discounted_price'] = discountedPrice;
    data['buying_price'] = buyingPrice;
    data['extra_infos'] = extraInfos;
    return data;
  }
}

class Photos {
  late final String modelName;
  late final String modelId;
  late final String organizationId;
  late final String filename;
  late final String url;
  late final bool isFeatured;
  late final bool saveAsJpg;
  late final bool isPublic;
  late final bool fileRename;
  late final int position;

  Photos({
    required this.modelName,
    required this.modelId,
    required this.organizationId,
    required this.filename,
    required this.url,
    required this.isFeatured,
    required this.saveAsJpg,
    required this.isPublic,
    required this.fileRename,
    required this.position,
  });

  Photos.fromJson(Map<String, dynamic> json) {
    modelName = json['model_name'];
    modelId = json['model_id'];
    organizationId = json['organization_id'];
    filename = json['filename'];
    url = json['url'];
    isFeatured = json['is_featured'];
    saveAsJpg = json['save_as_jpg'];
    isPublic = json['is_public'];
    fileRename = json['file_rename'];
    position = json['position'].toInt();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['model_name'] = modelName;
    data['model_id'] = modelId;
    data['organization_id'] = organizationId;
    data['filename'] = filename;
    data['url'] = url;
    data['is_featured'] = isFeatured;
    data['save_as_jpg'] = saveAsJpg;
    data['is_public'] = isPublic;
    data['file_rename'] = fileRename;
    data['position'] = position.toInt();
    return data;
  }
}
