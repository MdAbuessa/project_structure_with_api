 
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:motion_tab_bar/MotionTabBarController.dart';
 
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar>
//     with TickerProviderStateMixin {
//   late MotionTabBarController _tabController;
//   int currentTab = 0;
//   bool isBottomBarVisible = true;
//   final List<Widget> screens = [
//     HomeScreen(),
//     SavedLocationScreen(),
//     NotificationScreen(),
//     ProfileScreen(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = HomeScreen();
//   @override
//   void initState() {
//     super.initState();
//     _tabController = MotionTabBarController(
//       initialIndex: 0,
//       length: 5,
//       vsync: this,
//     );
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageStorage(
//           bucket: bucket,
//           child: currentScreen,
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               currentScreen = SavePlaceScreen();
//             });
//           },
//           child: Icon(Icons.add),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//           notchMargin: 10,
//           child: Container(
//             height: 65.h,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(15.r),
//                     topLeft: Radius.circular(15.r)),
//                 color: AppColor.c191A1F),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40.w,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = HomeScreen();
//                           currentTab = 0;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset('assets/icons/my_map.svg',
//                               height: 20.h,
//                               width: 20.w,
//                               // ignore: deprecated_member_use
//                               color: currentTab == 0
//                                   ? Colors.white
//                                   : AppColor.c767676),
//                           UIHelper.verticalSpace(5.h),
//                           Text('My Map',
//                               style: TextFontStyle.textStyle14c999999LatoW500
//                                   .copyWith(
//                                       color: currentTab == 0
//                                           ? Colors.white
//                                           : Colors.transparent)),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       minWidth: 40.w,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = SavedLocationScreen();
//                           currentTab = 1;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                               'assets/icons/saved_not_selected.svg',
//                               height: 20.h,
//                               width: 20.w,
//                               // ignore: deprecated_member_use
//                               color: currentTab == 1
//                                   ? Colors.white
//                                   : AppColor.c767676),
//                           UIHelper.verticalSpace(5.h),
//                           Text('Saved',
//                               style: TextFontStyle.textStyle14c999999LatoW500
//                                   .copyWith(
//                                       color: currentTab == 1
//                                           ? Colors.white
//                                           : Colors.transparent)),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40.w,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = NotificationScreen();
//                           currentTab = 2;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                               'assets/icons/notification_selected.svg',
//                               height: 20.h,
//                               width: 20.w,
//                               // ignore: deprecated_member_use
//                               color: currentTab == 2
//                                   ? Colors.white
//                                   : AppColor.c767676),
//                           UIHelper.verticalSpace(5.h),
//                           Text('My Map',
//                               style: TextFontStyle.textStyle14c999999LatoW500
//                                   .copyWith(
//                                       color: currentTab == 2
//                                           ? Colors.white
//                                           : Colors.transparent)),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       minWidth: 40.w,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = ProfileScreen();
//                           currentTab = 3;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset('assets/icons/profile_selected.svg',
//                               height: 20.h,
//                               width: 20.w,
//                               // ignore: deprecated_member_use
//                               color: currentTab == 3
//                                   ? Colors.white
//                                   : AppColor.c767676),
//                           UIHelper.verticalSpace(5.h),
//                           Text('My Map',
//                               style: TextFontStyle.textStyle14c999999LatoW500
//                                   .copyWith(
//                                       color: currentTab == 3
//                                           ? Colors.white
//                                           : Colors.transparent)),
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           shape: CircularNotchedRectangle(),
//         ));
//   }
// }
