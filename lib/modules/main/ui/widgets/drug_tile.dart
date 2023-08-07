import 'package:drug/core/resources/assests.dart';
import 'package:drug/core/router/drug_router.dart';
import 'package:drug/core/router/routes.dart';
import 'package:drug/core/theme/color_palatte.dart';
import 'package:drug/modules/main/data/models/drug.dart';
import 'package:flutter/material.dart';

class DrugTile extends StatelessWidget {
  const DrugTile({
    required this.drug,
    super.key,
  });

  final Drug drug;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
          DrugRouter.router.navigateTo(context, Routes.drugDetails,
              routeSettings: RouteSettings(arguments: {
                'drug': drug,
              }));
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorPalette.divider,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Image.asset(
                Assets.drugIc,
                color: ColorPalette.primary,
                width: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drug.drugName ?? '',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      drug.drugDescription ?? '',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorPalette.textSecoundy,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
