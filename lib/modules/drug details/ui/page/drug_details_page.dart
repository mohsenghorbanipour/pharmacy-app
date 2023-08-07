import 'package:drug/core/theme/color_palatte.dart';
import 'package:drug/modules/main/data/models/drug.dart';
import 'package:flutter/material.dart';

class DrugDetailsPage extends StatelessWidget {
  const DrugDetailsPage({
    required this.drug,
    super.key,
  });

  final Drug drug;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorPalette.scaffoldBackground,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                decoration: const BoxDecoration(
                  color: ColorPalette.background,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        drug.drugName ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontSize: 32),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                    child: Text(
                      drug.drugDescription ?? '',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorPalette.textSecoundy,
                          ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
