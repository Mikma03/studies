# Cykl Życia modeli ML

## Podstawowe koncepcje

![Cykl zycia modeli ML](source/figures/ml_lifecycle.png){#fig_:my_fig width=100%}

Cykl życia modeli uczenia maszynowego (ML) to seria etapów, które należy przeprowadzić, aby skutecznie zaimplementować i zarządzać modelami ML. Każdy etap ma kluczowe znaczenie dla projektu i wymaga ścisłej współpracy między ekspertami, inżynierami ML i biznesem.

1. **Zrozumienie biznesu i formułowanie problemu:** 
   - Pierwszym krokiem jest zrozumienie celów biznesowych i określenie jak technologia ML może przyczynić się do ich realizacji. Na tym etapie ustala się metryki sukcesu, które mogą obejmować redukcję kosztów, łagodzenie ryzyka czy zwiększanie przychodów.

2. **Zrozumienie i przygotowanie danych:**
   - Analiza i przygotowanie danych to fundament modelu ML. Obejmuje to gromadzenie danych, ich czyszczenie, eksplorację oraz inżynierię cech w celu zbudowania odpowiedniego zestawu danych do treningu modelu.

3. **Trening i ocena modelu:**
   - Następnie przeprowadza się eksperymenty z różnymi algorytmami, dobiera hiperparametry i ocenia modele za pomocą zdefiniowanych metryk.

4. **Wdrażanie modelu:**
   - Po treningu model jest gotowy do wdrożenia. Oznacza to umieszczenie go w środowisku produkcyjnym.

5. **Monitorowanie modelu:**
   - Po wdrożeniu modelu konieczne jest ciągłe monitorowanie jego wydajności, aby wykryć i zaradzić potencjalnym problemom, takim jak dryf danych, który może wpłynąć na dokładność modelu.

6. **Śledzenie metryk biznesowych:**
   - Ważne jest, aby stale mierzyć wpływ modelu na kluczowe wskaźniki biznesowe i, jeśli to konieczne, dokonywać jego rekalibracji lub optymalizacji, aby zapewnić ciągłe dostarczanie wartości dla firmy.

## Cykl życia modeli ML na AWS

Amazon Web Services zapewnia kompleksowy zestaw usług, które wspierają cały cykl życia modeli uczenia maszynowego.

- **Amazon S3:** Bezpieczne i skalowalne przechowywanie danych.
- **AWS Glue:** ETL (Extract, Transform, Load) do przygotowania i transformacji danych.
- **AWS Lake Formation:** Budowa bezpiecznego data lake.
- **Amazon SageMaker:** Kompletna usługa, która umożliwia szybkie budowanie, trenowanie i wdrażanie modeli ML.
- **Amazon Elastic Container Service:** Orkiestracja kontenerów w dużych skalach.
- **AWS Elastic Beanstalk:** Proste wdrażanie i skalowanie aplikacji i usług.
- **Amazon CloudWatch:** Monitorowanie zasobów i aplikacji z alarmami i powiadomieniami.
- **Amazon QuickSight:** Business Intelligence dla zaawansowanej wizualizacji i zrozumienia metryk biznesowych.
- **AWS Data Pipeline:** Orkiestracja przetwarzania danych między różnymi usługami AWS.
