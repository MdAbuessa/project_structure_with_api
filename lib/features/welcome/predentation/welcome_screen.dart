import 'package:flutter/material.dart';
import 'package:structur_project/features/welcome/model/welcome_model.dart';
import 'package:structur_project/networks/api_acess.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    getWelcomeRxObj.getWelcome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00B2FF),
        title: Text(
          'Welcome Screen',
        ),
        centerTitle: true,
      ),
      // body: Text(
      //   '${getWelcomeRxObj.dataFetcher.value.first.date} Users Found',
      //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      // ),

      body: StreamBuilder<List<Welcome>>(
        stream: getWelcomeRxObj.dataFetcher,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final myproducts = snapshot.data! ?? [];
            return ListView.builder(
                itemCount: myproducts.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  final user = myproducts[index];

                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'users ID: ${user.id}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Product Name: ${user.products!.map((alldatainproduct) {
                                  return "Product ID: ${alldatainproduct.productId} \n Product quantity:${alldatainproduct.quantity} }";
                                }) ?? 'N/A'}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
