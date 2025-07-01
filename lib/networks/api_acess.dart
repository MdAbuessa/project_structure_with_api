import 'package:rxdart/rxdart.dart';
import 'package:structur_project/features/product/data/rx_get_product/rx.dart';
 
import 'package:structur_project/features/welcome/data/rx_get_wel/rx.dart';
import 'package:structur_project/features/welcome/model/welcome_model.dart';

// GetAllProductRX getAllProductRxObj = GetAllProductRX(
//     empty: RecipieProductModel(),
//     dataFetcher: BehaviorSubject<RecipieProductModel>());

GetWelcomeRX getWelcomeRxObj =
    GetWelcomeRX(empty: [], dataFetcher: BehaviorSubject<List<Welcome>>());
 
 
 

 
// CompanySignupRx companySignupRx = CompanySignupRx(
//     empty: CompanySignupModel(),
//     dataFetcher: BehaviorSubject<CompanySignupModel>());

// StaffSignupRx staffSignupRx = StaffSignupRx(
//     empty: StaffSignupModel(),
//     dataFetcher: BehaviorSubject<StaffSignupModel>());
