import 'package:drug/core/theme/color_palatte.dart';
import 'package:drug/modules/main/data/models/drug.dart';
import 'package:drug/modules/main/ui/bloc/main_page_bloc.dart';
import 'package:drug/modules/main/ui/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/drug_tile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorPalette.scaffoldBackground,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: ColorPalette.background,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: const SearchTextFiled(),
              ),
              Expanded(
                child: Consumer<MainPageBloc>(
                  builder: (context, bloc, child) => ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    itemCount: bloc.drugs.length,
                    separatorBuilder: (_, __) => const SizedBox(
                      height: 8,
                    ),
                    itemBuilder: (context, index) => DrugTile(
                      drug: bloc.drugs[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
