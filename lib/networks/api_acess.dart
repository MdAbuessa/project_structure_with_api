import 'package:rxdart/rxdart.dart';
import 'package:structur_project/features/auth/data/rx_signin/rx.dart';
import 'package:structur_project/features/auth/model/signin_model.dart';
import 'package:structur_project/features/product/data/rx_get_product/rx.dart';
import 'package:structur_project/features/product/model/product_model.dart';

GetAllProductRX getAllProductRxObj = GetAllProductRX(
    empty: RecipieProductModel(),
    dataFetcher: BehaviorSubject<RecipieProductModel>());

GetSignInResponseRX signInRxObj = GetSignInResponseRX(
    empty: SigninModel(), dataFetcher: BehaviorSubject<SigninModel>());

// CompanySignupRx companySignupRx = CompanySignupRx(
//     empty: CompanySignupModel(),
//     dataFetcher: BehaviorSubject<CompanySignupModel>());

// StaffSignupRx staffSignupRx = StaffSignupRx(
//     empty: StaffSignupModel(),
//     dataFetcher: BehaviorSubject<StaffSignupModel>());
