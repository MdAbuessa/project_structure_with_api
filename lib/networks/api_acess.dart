import 'package:rxdart/rxdart.dart';
import 'package:structur_project/features/product/data/rx_get_product/rx.dart';
import 'package:structur_project/features/product/model/product_model.dart';
 
GetAllProductRX getAllProductRxObj = GetAllProductRX(
    empty: RecipieProductModel(),
    dataFetcher: BehaviorSubject<RecipieProductModel>());

 
// CompanySignupRx companySignupRx = CompanySignupRx(
//     empty: CompanySignupModel(),
//     dataFetcher: BehaviorSubject<CompanySignupModel>());

// StaffSignupRx staffSignupRx = StaffSignupRx(
//     empty: StaffSignupModel(),
//     dataFetcher: BehaviorSubject<StaffSignupModel>());
