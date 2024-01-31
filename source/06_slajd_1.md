\setcounter{page}{1}
\pagenumbering{arabic}
\doublespacing
\setlength{\parindent}{0.5in}

# Wprowadzenie do MLOps

## Zanim MLOps najpierw DevOps

DevOps to koncepcja, która zrewolucjonizowała świat IT, łącząc praktyki, narzędzia i filozofię pracy zorientowane na zwiększenie szybkości wytwarzania oprogramowania, poprawę jego jakości i bezpieczeństwa oraz wydajność zespołów.

Cykl życia oprogramowania w DevOps jest zorientowany na ciągłą integrację, ciągłe dostarczanie i ciągłe ulepszanie produktu. Cykl ten składa się z etapów: Plan, Code, Build, Test, Release, Deploy, Operate i Monitor, tworząc nieprzerwany łańcuch.

Poniżej przedstawiony jest cykl życia oprogramowania w podejściu DevOps.

![DevOps - flow pracy oraz projektu](source/figures/devops_flow.png){#fig_:my_fig width=100%}

## Przykładowe technologie oraz kategorie w DevOps

![DevOps - typowe narzedzia](source/figures/devops_tech.png){#fig_:my_fig width=100%}

1. **Konteneryzacja i Orkiestracja:** Docker i Kubernetes to przykłady narzędzi, które zmieniły podejście do wdrażania i skalowania aplikacji.

2. **Systemy Kontroli Wersji:** Git jest nieodzownym elementem DevOps, umożliwiającym efektywną współpracę i śledzenie zmian w kodzie.

3. **Automatyzacja i CI/CD:** Jenkins, Travis CI, GitHub Actions oraz inne narzędzia CI/CD automatyzują proces testowania i wdrażania, skracając czas dostarczania nowych funkcji i poprawek.

## Generalne komponenty MLOps

![MLOps - co to jest?](source/figures/mlops_show.png){#fig_:my_fig width=100%}

Platformy MLOps typu end-to-end łączą w sobie szereg niezbędnych funkcji i narzędzi, które powinny obejmować:

1. **Zarządzanie danymi:** Efektywne gromadzenie, wersjonowanie i przetwarzanie danych jest fundamentem dla modeli ML.

2. **Eksperymenty:** Narzędzia takie jak MLflow umożliwiają projektowanie, testowanie i optymalizację modeli.

3. **Wdrażanie modeli:** Konteneryzacja i zarządzanie API są kluczowe dla dostarczania modeli do produkcji.

4. **Monitorowanie:** Śledzenie wydajności modeli w czasie rzeczywistym jest niezbędne dla zapewnienia ich niezawodności.

5. **Współpraca i kontrola wersji:** Umożliwia dzielenie się pracą i zarządzanie zmianami w modelach i kodzie.

6. **Automatyzacja pracy:** Narzędzia orkiestracji, takie jak Kubeflow, upraszczają złożone przepływy pracy.

7. **Integracja z narzędziami ML:** Elastyczność w doborze narzędzi i bibliotek jest kluczowa dla wydajności i innowacyjności.

## Przyklad platformy typu Open Source - Kubeflow

Kubeflow jest przykładem platformy open source, która integruje się z Kubernetesem, dostarczając kompleksowe środowisko do zarządzania przepływami pracy związanymi z uczeniem maszynowym, od eksperymentacji po wdrożenie modeli i ich monitorowanie. Zapewnia integrację z narzędziami takimi jak Jupyter, MLflow oraz różnymi systemami zarządzania danymi i modelami, tworząc spójne środowisko dla data scientistów i inżynierów ML.

![MLOps z wykorzystaniem Kubeflow](source/figures/kubeflow.png){#fig_:my_fig width=100%}

## Jak podejsc do budowania platformy MLOps?

Bardzo fajny artykul:

- https://neptune.ai/blog/ml-platform-guide

