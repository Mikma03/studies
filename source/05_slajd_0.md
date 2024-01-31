# Wstęp do prezentacji {.unnumbered}

**Dlaczego praktyki MLOps są wymagające?**

Na samym poczatku warto powiedziec dlaczego praktyki MLOps sa wymagajace? **ODP:** Poniewaz trzeba umiec sporo innych rozwiazań/technologii, które sa bezposrednio zwiazane z wytwarzaniem oprogramowania. 

Aby zrozumieć, dlaczego praktyki/podejscie MLOps są tak wymagające, należy przyjrzeć się szeregowi technologii i narzędzi, które są fundamentem dla efektywnego zarządzania cyklem życia modeli ML.

___

**Kluczowe technologie i narzędzia w MLOps**

1. **Zarządzanie Kontenerami i Wirtualizacja**

- **Kubernetes**: Złożona platforma do orkiestracji kontenerów, umożliwiająca skalowanie i automatyzację wdrażania aplikacji.
- **Docker**: Narzędzie do tworzenia i zarządzania kontenerami, kluczowe w procesie standaryzacji środowisk uruchomieniowych.

2. **Wersjonowanie i Integracja**

- **Git**: System kontroli wersji, niezbędny do zarządzania kodem i śledzenia zmian.
- **CI/CD**: Narzędzia takie jak Jenkins lub GitHub Actions, umożliwiają automatyzację procesów testowania i wdrażania.

3. **Zarządzanie Eksperymentami i Modelami**

- **MLFlow**: Platforma do zarządzania eksperymentami ML, ułatwiająca śledzenie pracy nad modelami.
- **Seldon Core**: Narzędzie do zarządzania i skalowania modeli ML w produkcji.

4. **Infrastruktura i Konfiguracja**

- **Terraform**: Narzędzie do zarządzania infrastrukturą jako kodem (IaC).
- **Ansible**: Narzędzie do automatyzacji konfiguracji i zarządzania infrastrukturą.

5. **Monitorowanie i Logowanie**

- **Prometheus**: System monitorowania i alertyzacji.
- **Elastic Stack**: Zestaw narzędzi do logowania, monitorowania i analizy danych.

6. **Testowanie**

- **pytest**: Framework do testowania aplikacji napisanych w Pythonie.

___

**Specyfika pracy z modelami uczenia maszynowego**

W MLOps, oprócz typowych wyzwań związanych z praktykami DevOps, napotykamy na dodatkowe, unikalne wyzwania związane bezpośrednio z modelami uczenia maszynowego:

- **Data Versioning**: Zarządzanie wersjami danych, które są kluczowe dla nauki modeli.
- **Feature Store**: Przechowywanie i wersjonowanie cech wykorzystywanych w modelach.
- **Model Serving**: Zapewnienie możliwości replikacji środowiska, w którym model jest uruchamiany.

___

**Role w zespołach MLOps**

W zależności od wielkości i struktury organizacji, zespoły MLOps mogą być różnie skonfigurowane, często dzieląc się na podgrupy specjalizujące się w różnych aspektach systemu MLOps.

___

**Umiejetnosci niezbędne dla MLOps Engineera**

- **Python**: Python jest królem w świecie uczenia maszynowego, więc znajomość tego języka jest niezbędna.
- **Docker** i **Kubernetes**: Znajomość zarządzania kontenerami i orkiestracji.
- **Git**: Znajomość systemu kontroli wersji.
- **Linux**: Podstawy obsługi i mechanizmy systemu.
- **Podstawy uczenia maszynowego**: Zrozumienie kluczowych pojęć i technik.
- **Podstawy DevOps**: Zrozumienie całego cyklu wytwarzania oprogramowania, w tym CI/CD, testowania, wdrażania, monitorowania i zarządzania.

___

**Znaczenie platformy AWS w MLOps**

Platforma AWS oferuje szeroki wachlarz usług i narzędzi, które wspierają praktyki MLOps, od zarządzania infrastrukturą po wdrażanie i skalowanie modeli ML. W kolejnych sekcjach szczegółowo omówimy, jak AWS umożliwia efektywne wdrażanie praktyk MLOps, podkreślając kluczowe usługi i najlepsze praktyki związane z tą platformą.

___
