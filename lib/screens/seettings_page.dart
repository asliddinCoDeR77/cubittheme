// import 'package:cubittheme/cubit/cubit_theme.dart';
// import 'package:cubittheme/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Column(children: [
//         BlocBuilder<AppModeCubit, AppMode>(
//           builder: (context, mode) {
//             return SwitchListTile(
//               title: const Text('Night Mode'),
//               value: mode == AppMode.night,
//               onChanged: (value) {
//                 context.read<AppModeCubit>().toggleMode();
//               },
//             );
//           },
//         ),
//       ]),
//     );
//   }
// }
