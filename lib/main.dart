import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Example'),
        ),
        body: const ResponsiveLayout(),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return MobileView();
        } else if (constraints.maxWidth < 1200) {
          return TabletView();
        } else {
          return DesktopView();
        }
      },
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.mobile_screen_share, size: 100),
          SizedBox(height: 20),
          Text(
            'Mobile View',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.tablet_mac, size: 100),
          SizedBox(height: 20),
          Text(
            'Tablet View',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.desktop_windows, size: 100),
          SizedBox(height: 20),
          Text(
            'Desktop View',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}











// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: CustomScrollView(
//             slivers: [
//               SliverAppBar(
//                 floating: true,
//                 pinned: false,
//                 expandedHeight: 65.0,
//                 backgroundColor: Colors.white,
//                 flexibleSpace: Container(
//                   padding: EdgeInsets.symmetric(vertical: 4.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           // Handle menu toggle
//                         },
//                         icon: Icon(Icons.menu),
//                         color: Colors.black,
//                       ),
//                       Image.asset(
//                         'assets/10mslogo.png', // Replace with your logo asset
//                         width: 100.0,
//                         height: 27.0,
//                       ),
//                       NavItems(), // Custom widget for navigation items
//                       ContactButtons(), // Custom widget for contact buttons
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class NavItems extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         NavItem('ক্লাস ৫-১২'),
//         NavItem('স্কিলস'),
//         NavItem('ভর্তি পরীক্ষা'),
//         NavItem('চাকরি প্রস্তুতি'),
//         NavItem('অনলাইন ব্যাচ'),
//       ],
//     );
//   }
// }
//
// class NavItem extends StatelessWidget {
//   final String title;
//
//   NavItem(this.title);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10.0),
//       child: InkWell(
//         onTap: () {
//           // Handle navigation
//         },
//         child: Row(
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Icon(Icons.keyboard_arrow_down),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ContactButtons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         ContactButton(Icons.language, 'EN'),
//         ContactButton(Icons.phone, '16910'),
//         SizedBox(width: 10.0),
//         LoginButton(),
//       ],
//     );
//   }
// }
//
// class ContactButton extends StatelessWidget {
//   final IconData icon;
//   final String text;
//
//   ContactButton(this.icon, this.text);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Handle button click
//       },
//       child: Container(
//         padding: EdgeInsets.all(6.0),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         child: Row(
//           children: [
//             Icon(icon, color: Colors.green),
//             SizedBox(width: 4.0),
//             Text(
//               text,
//               style: TextStyle(
//                 color: Colors.green,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class LoginButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Handle login button click
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
//         decoration: BoxDecoration(
//           color: Colors.green,
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         child: Text(
//           'লগ-ইন',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
