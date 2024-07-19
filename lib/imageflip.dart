// import "package:course_begin/bottombar.dart";
// import "package:flutter/material.dart";

// class ImageFlip extends StatefulWidget {
//   const ImageFlip({super.key});

//   @override
//   State<ImageFlip> createState() => _ImageFlipState();
// }

// class _ImageFlipState extends State<ImageFlip> {
//   String netimg =
//       "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fsm.ign.com%2Ft%2Fign_in%2Fphoto%2Fdefault%2F3-naruto-1660779038828_9te5.1280.jpg&imgrefurl=https%3A%2F%2Fin.ign.com%2Fnaruto-1%2F180433%2Fnews%2Fnaruto-anime-getting-four-new-episodes-to-celebrate-20th-anniversary&docid=r2siaazNJRMF3M&tbnid=U0ezf9I_0c7iyM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECBoQAA..i&w=1280&h=718&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECBoQAA";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Image.network(netimg),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         if (netimg ==
//                             "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fsm.ign.com%2Ft%2Fign_in%2Fphoto%2Fdefault%2F3-naruto-1660779038828_9te5.1280.jpg&imgrefurl=https%3A%2F%2Fin.ign.com%2Fnaruto-1%2F180433%2Fnews%2Fnaruto-anime-getting-four-new-episodes-to-celebrate-20th-anniversary&docid=r2siaazNJRMF3M&tbnid=U0ezf9I_0c7iyM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECBoQAA..i&w=1280&h=718&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECBoQAA") {
//                           netimg =
//                               "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fimages.immediate.co.uk%2Fproduction%2Fvolatile%2Fsites%2F3%2F2023%2F04%2Fnaruto-762b09d.jpg%3Fresize%3D1167%252C611&imgrefurl=https%3A%2F%2Fwww.radiotimes.com%2Ftv%2Ffantasy%2Fnaruto-order-watch-timeline%2F&docid=o2d94XSBdzrcPM&tbnid=HTliQLkgtzJwaM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA..i&w=1167&h=611&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA";
//                         } else if (netimg ==
//                             "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fimages.immediate.co.uk%2Fproduction%2Fvolatile%2Fsites%2F3%2F2023%2F04%2Fnaruto-762b09d.jpg%3Fresize%3D1167%252C611&imgrefurl=https%3A%2F%2Fwww.radiotimes.com%2Ftv%2Ffantasy%2Fnaruto-order-watch-timeline%2F&docid=o2d94XSBdzrcPM&tbnid=HTliQLkgtzJwaM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA..i&w=1167&h=611&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA") {
//                           netimg =
//                               "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fimages.immediate.co.uk%2Fproduction%2Fvolatile%2Fsites%2F3%2F2023%2F04%2Fnaruto-762b09d.jpg%3Fresize%3D1167%252C611&imgrefurl=https%3A%2F%2Fwww.radiotimes.com%2Ftv%2Ffantasy%2Fnaruto-order-watch-timeline%2F&docid=o2d94XSBdzrcPM&tbnid=HTliQLkgtzJwaM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA..i&w=1167&h=611&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA";
//                         } else if (netimg ==
//                             "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fimages.immediate.co.uk%2Fproduction%2Fvolatile%2Fsites%2F3%2F2023%2F04%2Fnaruto-762b09d.jpg%3Fresize%3D1167%252C611&imgrefurl=https%3A%2F%2Fwww.radiotimes.com%2Ftv%2Ffantasy%2Fnaruto-order-watch-timeline%2F&docid=o2d94XSBdzrcPM&tbnid=HTliQLkgtzJwaM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA..i&w=1167&h=611&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECCsQAA") {
//                           netimg =
//                               "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fwallpapers.com%2Fimages%2Ffeatured%2Fanime-naruto-pictures-mg0inlcvuxq3z7j3.jpg&imgrefurl=https%3A%2F%2Fwallpapers.com%2Fanime-naruto-pictures&docid=4ZDHYC4JuVSwrM&tbnid=9yG0UpnTIiv5iM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECFMQAA..i&w=1920&h=1080&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECFMQAA";
//                         } else {
//                           netimg =
//                               "https://www.google.com/imgres?q=naruto%20image&imgurl=https%3A%2F%2Fdw9to29mmj727.cloudfront.net%2Fpromo%2F2016%2F6225-SeriesHeaders_NARSHP_2000x800.jpg&imgrefurl=https%3A%2F%2Fwww.viz.com%2Fnaruto&docid=0VCJN3K1dhNdwM&tbnid=BxTai10u7ndvxM&vet=12ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECGgQAA..i&w=2000&h=800&hcb=2&ved=2ahUKEwjK0ebytMGFAxUY-DgGHatwA6AQM3oECGgQAA";
//                         }
//                       });
//                     },
//                     child: const Text(
//                       "Swap",
//                       style: TextStyle(color: Colors.black87, fontSize: 22),
//                     ))
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             FloatingActionButton(
//               heroTag: "Back_4",
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Icon(Icons.arrow_back),
//             ),
//             FloatingActionButton(
//               heroTag: "Forward_4",
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const BottomB()));
//               },
//               child: const Icon(Icons.arrow_forward),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
