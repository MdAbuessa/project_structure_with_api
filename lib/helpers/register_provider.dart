import 'package:provider/provider.dart';
import 'package:structur_project/provider/auth_provider.dart';
import 'package:structur_project/provider/experience_provider.dart';
import 'package:structur_project/provider/page_view_provider.dart';

import '../provider/address.dart';
import '../provider/email.dart';
import '../provider/provides.dart';

var providers = [
  //New
  ChangeNotifierProvider<ExperienceProvider>(
    create: ((context) => ExperienceProvider()),
  ),
  ChangeNotifierProvider<AuthProvider>(
    create: ((context) => AuthProvider()),
  ),
  // Old
  ChangeNotifierProvider<EmailProvider>(create: ((context) => EmailProvider())),
  ChangeNotifierProvider<AddressProvider>(
    create: ((context) => AddressProvider()),
  ),
  ChangeNotifierProvider<ItemOptionIndex>(
    create: ((context) => ItemOptionIndex()),
  ),
  // ChangeNotifierProvider<DateTimeProvider>(
  //   create: ((context) => DateTimeProvider()),
  // ),
  ChangeNotifierProvider<VoucherProvider>(
    create: ((context) => VoucherProvider()),
  ),
  ChangeNotifierProvider<PlcaeMarkAddress>(
    create: ((context) => PlcaeMarkAddress()),
  ),
  ChangeNotifierProvider<GenericBool>(
    create: ((context) => GenericBool()),
  ),
  ChangeNotifierProvider<SelectedSubCat>(
    create: ((context) => SelectedSubCat()),
  ),
  ChangeNotifierProvider<GenericProvider>(
    create: ((context) => GenericProvider()),
  ),
  ChangeNotifierProvider<CartCounter>(
    create: ((context) => CartCounter()),
  ),

  ChangeNotifierProvider<PageViewProvider>(
    create: ((context) => PageViewProvider()),
  ),
];
