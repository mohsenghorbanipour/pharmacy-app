import 'package:drug/core/resources/assests.dart';
import 'package:drug/core/theme/color_palatte.dart';
import 'package:drug/modules/main/ui/bloc/main_page_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) => TextField(
        scrollPadding: EdgeInsets.zero,
        onChanged: (val) {
          Provider.of<MainPageBloc>(context, listen: false).searchDrugs(val);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPalette.fieldColor,
          hintText: 'search_drug_hint'.tr(),
          suffixIcon: SizedBox(
            width: 24,
            height: 24,
            child: Center(
              child: Image.asset(
                Assets.searchIc,
                width: 24,
                color: ColorPalette.textSecoundy,
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorPalette.grey, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorPalette.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorPalette.primary, width: 2),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      );
}
