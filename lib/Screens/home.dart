import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simpletimbuapiapp/Provider/product_provider.dart';

class ProductHomePage extends ConsumerWidget {
  const ProductHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProvider = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        title: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: productProvider.when(
            data: (products) {
              if (products.isEmpty) {
                return const Center(
                  child: Text('No Products Available'),
                );
              }
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                              'https://api.timbu.cloud/images/${product.photos[0].url}'),
                        ),
                        const SizedBox(width: 15),
                        SizedBox(
                          height: 100,
                          width: 230,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Availability: ${product.isAvailable.toString()}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(
                                'Qty ${product.availableQuantity.toString()}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Desc: ${product.description}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            error: (_, __) {
              return const Center(
                child: Text('Error!!!'),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
