# Start and finish

Otwórz to repozytorium w VSCode i użyj `.devcontainer`, aby uruchomić kontener ze wszystkimi niezbędnymi narzędziami. 

Wiecej informacji na temat `.devcontainer` znajdziesz w oficjalnej dokumentacji Microsoftu.

Wewnątrz kontenera zainstaluj niezbędne biblioteki za pomocą `sudo ./additional-installation.sh`.

Aby wykonac powyzsze, musisz znajdowac sie w glownym katalogu.

Następnie uruchom `sudo make pdf`, aby wygenerować plik PDF. Wygenerowany plik znajduje się w katalogu `output`.


PS: nie martw się o `sudo`, znajdujesz sie w kontenerze... :)
