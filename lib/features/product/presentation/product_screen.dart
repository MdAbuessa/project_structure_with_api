// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:structur_project/features/product/model/product_model.dart';
// import 'package:structur_project/networks/api_acess.dart';

// class ProductScreen extends StatefulWidget {
//   const ProductScreen({super.key});

//   @override
//   State<ProductScreen> createState() => _ProductScreenState();
// }

// class _ProductScreenState extends State<ProductScreen> {
//   @override
//   void initState() {
//     super.initState();
//     getAllProductRxObj.getAllProducts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF00B2FF),
//         title: Text(
//           'Product Screen',
//         ),
//         centerTitle: true,
//       ),
//       body: StreamBuilder<RecipieProductModel>(
//         stream: getAllProductRxObj.dataFetcher,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting ||
//               snapshot.data == null) {
//             return SizedBox.shrink();
//           } else {
//             final products = snapshot.data!.products!;
//             return ListView.builder(
//                 itemCount: products.length,
//                 shrinkWrap: true,
//                 primary: false,
//                 itemBuilder: (context, index) {
//                   Product product = products[index];
//                   return Padding(
//                     padding: EdgeInsets.all(12),
//                     child: Center(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("${product.title}"),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                               "Price: \$${product.price?.toStringAsFixed(2) ?? '0.00'}"),
//                           Text("Quantity: ${product.quantity ?? 0}"),
//                           Text(
//                               "Total: \$${product.total?.toStringAsFixed(2) ?? '0.00'}"),
//                           Text(
//                               "Discount: ${product.discountPercentage?.toStringAsFixed(1) ?? '0.0'}%"),
//                           Text(
//                               "Discounted Total: \$${product.discountedTotal?.toStringAsFixed(2) ?? '0.00'}"),
//                           if (product.thumbnail != null)
//                             Padding(
//                               padding: EdgeInsets.only(top: 8, left: 10),
//                               child: Image.network(
//                                 product.thumbnail!,
//                                 height: 80.h,
//                                 width: 100.w,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           Divider()
//                         ],
//                       ),
//                     ),
//                   );
//                 });
//           }
//         },
//       ),
//     );
//   }
// }
