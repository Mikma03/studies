# Najlepsze praktyki z MLOps na AWS

## Rozpoczecie projektu

- **Zespoły wielofunkcyjne:** Tworzenie zintegrowanych zespołów składających się z inżynierów danych, badaczy ML, inżynierów DevOps, programistów i ekspertów biznesowych.

- **Rozwój wymagań i procesów zarządzania:** Wczesne ustalanie procesów dla weryfikacji modeli, wyjaśnialności i zatwierdzeń przed wdrożeniem produkcyjnym.

- **Wskaźniki sukcesu (KPIs):** Określenie KPIs biznesowych i monitorowanie wpływu modelu i platformy na te wskaźniki.

- **Pilotażowe projekty ML:** Wybór kilku pilotażowych projektów ML do wdrożenia i nauki na platformie.

- **Stan docelowy i realizacja etapami:** Definiowanie długoterminowej wizji i celu platformy ML i stopniowe wdrażanie.

## Projektowanie i wdrożenie

- **Zarządzane możliwości:** Wykorzystanie wbudowanych możliwości gotowych platform jak na przyklad SageMaker - jako domyślnych.

- **Infrastruktura jako kod:** Użycie CloudFormation lub Terraform do zarządzania infrastrukturą ML.

- **CI/CD:** Implementacja ciągłej integracji i wdrażania z wykorzystaniem na przyklad: CodePipeline, CodeBuild, CodeDeploy i SageMaker.

- **Automatyzacja śledzenia eksperymentów:** Automatyczne logowanie metadanych modeli.

- **Zatwierdzone repozytorium bibliotek:** Tworzenie scentralizowanego repozytorium bibliotek.

- **Skalowalność:** Projektowanie platformy do obsługi różnych wzorców użycia i szczytów ruchu.

- **Bezpieczeństwo:** Wprowadzenie najlepszych praktyk bezpieczeństwa od samego początku.

- **Samoobsługa:** Rozwój funkcji samoobsługi dla użytkowników.

- **Repozytorium modeli:** Użycie pojedynczego repozytorium dla modeli.

- **Centralne repozytorium cech:** Wdrażanie scentralizowanego repozytorium cech.

## Użytkowanie platformy i praktyki operacyjne

- **Ograniczenie dostępu do produkcji:** Ograniczenie dostępu do systemów produkcyjnych do minimum.

- **Optymalizacja kosztów:** Wykorzystanie auto-scalingu i instancji spotowych do optymalizacji kosztów chmury.

- **Monitorowanie i obserwowalność:** Aktywne monitorowanie dokładności modeli i wydajności systemu.

- **Zarządzanie zmianą:** Definiowanie procesów zarządzania zmianami.

- **Zarządzanie incydentami:** Ustanowienie planu reagowania na incydenty.

- **Wdrożenia Multi-AZ i regionów:** Poprawa odporności i minimalizacja opóźnień przez wdrożenie w wielu strefach dostępności i regionach.

- **Planowanie pojemności:** Proaktywna ocena i projektowanie potrzeb infrastruktury.
