# Przykladowa architektura MLOps - AWS

## Wymagania ktore powinna spelnic platforma do ML

![Kroki i przeplyw logicznych czynnosci w ML](source/figures/architecture_flow.png){#fig_:my_fig width=100%}

1. **Wsparcie dla Cyklu Życia ML od Początku do Końca:** Musi obsługiwać zarówno eksperymentalną, jak i operacyjną fazę życia modelu, włączając w to trening modeli na dużą skalę i ich wdrażanie.

2. **CI/CT/CD Pipeline:** Rozszerzenie tradycyjnej integracji ciągłej o elementy danych i modeli, umożliwiające ciągły trening i wdrażanie modeli ML.

3. **Nadzór Operacyjny:** Funkcje monitorowania przepływów pracy, wydajności modeli, dryftu (zmiany) danych oraz metryk infrastruktury, w połączeniu z automatycznym systemem alertów i mechanizmami odzyskiwania (recovery) po awariach.

4. **Elastyczność Języka i Frameworków:** Wsparcie dla popularnych języków programowania i frameworków ML, aby sprostać różnorodnym preferencjom rozwojowym i wymogom projektów.

5. **Zarządzanie Zasobami Obliczeniowymi:** Efektywne zarządzanie różnorodnymi zasobami obliczeniowymi, w tym specjalistycznym sprzętem ML, w celu zrównoważenia wydajności i kosztów.

6. **Integracje z Systemami Zewnętrznymi:** Solidne połączenia z zewnętrznym oprogramowaniem i platformami, aby umożliwić płynną orkiestrację pracy i współpracę.

7. **Środki Bezpieczeństwa:** Silne mechanizmy uwierzytelniania, kontroli dostępu i szyfrowania danych w celu zapewnienia bezpiecznego dostępu do danych i zgodności ze standardami branżowymi.

8. **Zarządzanie Artefaktami:** Śledzenie i wersjonowanie artefaktów ML, takich jak kod i modele, w celu utrzymania możliwości odtworzenia i zgodności.

9. **Standaryzacja Pakietów:** Zarządzanie centralną biblioteką pakietów ML w celu utrzymania standardów organizacyjnych i polityk bezpieczeństwa.

10. **Dostęp do Różnych Magazynów Danych:** Łatwy dostęp do różnych magazynów danych w celu usprawnienia tworzenia i treningu modeli.

11. **Możliwości Samoobsługi:** Opcje samoobsługi dla procesów takich jak wprowadzanie nowych użytkowników i konfiguracja środowiska, aby zwiększyć autonomię i wydajność.

12. **Narzędzia Oceny Modeli:** Kompletny zestaw narzędzi do testowania i walidacji modeli w celu zapewnienia ich niezawodności i dokładności.

## Przykladowa architektura nr1 z wykorzystaniem AWS

![Architektura rozwiazania z wykorzystaniem platformy AWS](source/figures/architektura_aws.png){#fig_:my_fig width=100%}

## Przykladowa architektura nr2 z wykorzystaniem AWS

![Architektura rozwiazania z wykorzystaniem platformy AWS](source/figures/aws_mlops_architecture_02.png){#fig_:my_fig width=100%}

## Zarządzanie danymi w uczeniu maszynowym

Na wysokim poziomie, zarządzanie danymi przecina się z cyklem życia ML na trzech etapach: zrozumienie i przygotowanie danych, szkolenie modeli i ich ocena oraz wdrażanie modelu.

Przykladowo - AWS Lake Formation to kompleksowa usługa zarządzania danymi oferowana przez AWS, która usprawnia proces budowania i utrzymania data lake na platformie AWS. Poniższy rysunek ilustruje podstawowe komponenty AWS Lake Formation:

![Podstawowe komponenty AWS Lake Formation](source/figures/AWS_LakeFormation.png){#fig_:my_fig width=100%}

Ogólnie rzecz biorąc, AWS Lake Formation oferuje podstawowe funkcje, które poprawiają zarządzanie danymi:

Tworzenie i Utrzymanie Katalogu Danych: AWS Lake Formation ułatwia tworzenie i bieżące zarządzanie katalogiem danych, dostarczając scentralizowane repozytorium dla metadanych, co umożliwia łatwe odkrywanie i eksplorację danych w jeziorze danych.

### Katalogowanie danych

Katalog danych odgrywa kluczową rolę w zarządzaniu danymi i umożliwia analitykom zajmującym się danymi odkrywanie i dostęp do danych przechowywanych w scentralizowanym magazynie. Staje się szczególnie ważny podczas fazy zrozumienia i eksploracji danych w cyklu życia ML, gdy trzeba wyszukiwać i rozumieć dostępne dane dla swoich projektów. Podczas oceny technologii katalogu danych należy wziąć pod uwagę następujące kluczowe czynniki:

- Katalog metadanych: Technologia powinna wspierać scentralizowany katalog danych dla efektywnego zarządzania metadanymi. Obejmuje to obsługę metadanych, takich jak nazwy baz danych, schematy tabel i tagi tabel.

- Automatyczne katalogowanie danych: Możliwość automatycznego odkrywania i katalogowania zestawów danych oraz wnioskowania schematów danych z różnych źródeł danych, takich jak Amazon S3, bazy danych relacyjnych, bazy danych NoSQL i logi. Zwykle funkcjonalność ta jest implementowana za pomocą crawlera, który skanuje źródła danych, identyfikuje elementy metadanych (np. nazwy kolumn, typy danych) i dodaje je do katalogu.

- Elastyczność tagowania: Możliwość przypisywania niestandardowych atrybutów lub tagów do jednostek metadanych, takich jak bazy danych, tabele i pola. Ta elastyczność wspiera zaawansowane możliwości wyszukiwania i odkrywania danych w katalogu.

- Integracja z innymi narzędziami: Bezproblemowa integracja katalogu danych z szeroką gamą narzędzi do przetwarzania danych, umożliwiająca łatwy dostęp do danych. Ponadto korzystna jest natywna integracja z platformami zarządzania data lake.

**Narzędzia do zarządzania wersjami danych**

Zamiast opracowywać niestandardowe rozwiązania do kontroli wersji danych, dostępne są narzędzia specjalnie zaprojektowane do efektywnego zarządzania wersjami danych. Oto kilka godnych uwagi opcji:

- Git LFS (Large File Storage): Git LFS rozszerza możliwości Gita o obsługę dużych plików, w tym zbiorów danych. Przechowuje te pliki poza repozytorium Gita, zachowując informacje o wersjonowaniu. Git LFS bezproblemowo integruje się z Gitem i jest powszechnie używany do wersjonowania dużych plików w projektach skoncentrowanych na danych.

- DataVersionControl (DVC): DVC to narzędzie open-source zaprojektowane specjalnie do wersjonowania i zarządzania danymi. Integruje się z Gitem i oferuje funkcje do śledzenia i zarządzania dużymi zbiorami danych. DVC umożliwia lekkie linki do rzeczywistych plików danych przechowywanych w zdalnym magazynie, takim jak Amazon S3 lub współdzielony system plików. To podejście pozwala na utrzymanie historii zmian i łatwe przełączanie między różnymi wersjami zestawów danych, eliminując potrzebę duplikowania danych.

- Pachyderm: Pachyderm to open-source'owe narzędzie do wersjonowania danych i śledzenia ich pochodzenia. Oferuje kontrolę wersji dla danych, umożliwiając śledzenie zmian w danych, kodzie i plikach konfiguracyjnych. Pachyderm wspiera rozproszone ramy przetwarzania danych, takie jak Apache Spark, i oferuje funkcje takie jak powtarzalność, śledzenie pochodzenia danych i oparte na pochodzeniu danych rozgałęzianie.

Link do repo: https://github.com/pachyderm/pachyderm

## Feature store

![Feature store](source/figures/feature_store.png){#fig_:my_fig width=100%}

Przyklad open source:

- https://github.com/feast-dev/feast

Linki do dodatkowych informacji:

- https://www.hopsworks.ai/dictionary/feature-store

- https://github.com/visenger/awesome-mlops?tab=readme-ov-file#mlops-feature-stores

Feature Store jest centralnym repozytorium służącym do przechowywania, dzielenia się i zarządzania cechami danych wykorzystywanymi do tworzenia modeli uczenia maszynowego. Jego głównym zadaniem jest zwiększenie wydajności pracy poprzez zapewnienie im szybkiego dostępu do już przetworzonych i gotowych do użycia cech danych, co usprawnia tworzenie i wdrożenie modeli ML.

Kluczowe korzyści wynikające z wdrożenia Feature Store obejmują:

- **Standaryzacja cech danych:** Ujednolicona definicja cech zapewnia spójność w różnych modelach i zespołach, eliminując duplikację pracy i potencjalne błędy.

- **Ułatwienie współdzielenia:** Feature Store umożliwia naukowcom z różnych zespołów na dzielenie się i ponowne wykorzystanie cech, co przyspiesza rozwój nowych modeli.

- **Śledzenie i wersjonowanie cech:** Wszystkie cechy są śledzone i wersjonowane, co zapewnia pełną przejrzystość procesu i umożliwia łatwe odtworzenie poprzednich eksperymentów.

- **Optymalizacja obliczeń:** Przechowywanie wstępnie przetworzonych cech zmniejsza redundantne obliczenia, oszczędzając czas i zasoby obliczeniowe.

- **Integracja z przepływami pracy ML:** Feature Store łatwo integruje się z istniejącymi narzędziami i platformami ML, ułatwiając automatyzację treningu i wdrażania modeli.

AWS oferuje te funkcjonalności poprzez różne usługi, takie jak AWS Glue do katalogowania danych i Amazon S3 do przechowywania, umożliwiając inżynierom ML efektywne zarządzanie cechami i przyspieszając cały cykl życia uczenia maszynowego.

