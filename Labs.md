## Laboratoria  2016/17

> Please make sure basic things like spacing, variable naming conventions, line endings, spaces instead of tabs, and the like follow the general style of the project. 
>
> J. Geerling, [Why I close PRs (project maintainer notes)](http://www.jeffgeerling.com/blog/2016/why-i-close-prs-oss-project-maintainer-notes)

Terminy rozliczania się z zadań i projektu na egzamin:

| Zadanie | Opis       | Ostateczny termin | Poprawka   |
|--------:|----------- |------------------:| ----------:|
| 1       | zaliczenie | 13.11.2016        | 12.12.2016 |
| 2       | egzamin    | 08.01.2017        |            |

Rozwiązania zadań umieszczamy w repozytorium. Oto przykładowe repozytorium
[Szablon repozytorium dla Ruby+RSpec](https://github.com/egzamin/solutions-tar).

*Uwaga:*  Nierozliczenie się w terminie z zadań skutkuje obniżeniem oceny.

❖

Robimy porządki w katalogu domowym:

* `quota`
* `ncdu`

Potrzebne gemy instalujemy w katalogu **/var/sandbox/**  zob.
[Miejsce na dysku Sigma + Laboratoria](https://inf.ug.edu.pl/aktualizacje-serwera-sigma)

<!--
Może się przydać:

* [transfer.sh](https://transfer.sh/) –
  share your files

```sh
transfer() {
  curl --upload-file $1 https://transfer.sh/$(basename $1);
}
alias transfer=transfer
```
-->

### Zadanie 0. [Zaczynamy]

Założyć repozytorium na zadania. W repozytorium utworzyć ściągawkę
z wybranych metod / składni języka Ruby.

Można się wzorować na tych ściągawkach:

* [Learn X in Y minutes](http://learnxinyminutes.com/docs/ruby/):
  * Learn X=Ruby Hash in Y=? minutes
  * Learn X=Ruby Arrays in Y=? minutes
  * Learn X=Ruby Enumerable in Y=? minutes
* Leigh Halliday.
  [The Simple Yet Powerful Ruby Enumerable Module](https://blog.codeship.com/the-enumerable-module/)


<!--
### Zadanie 1. [Piszemy testy do własnego kodu]

Wiele ciekawych zadań programistycznych można znaleźć w [Google Interview University](https://github.com/jwasham/google-interview-university)  zwłaszcza w sekcji z [Data Structures](https://github.com/jwasham/google-interview-university#data-structures).

Jak pisać i dodawać testy można podejrzeć tutaj:
[03-rspec](labs/03-rspec/)  [04-write_tests](labs/04-write_tests/).
-->

<!--
### 3. Doubles  mocks & stubs

> Integration tests tell **what**’s not working. But they are of no use in<br>
> **guessing where** the problem could be.<br>
> Unit tests are the sole tests that tell you **where** exactly the bug<br>
> is. To draw this information  they must run the method in a mocked<br>
> environment  where all other dependencies are supposed to correctly work.<br>
> <br>
> [What is the difference between integration and unit tests?](http://stackoverflow.com/questions/10752/what-is-the-difference-between-integration-and-unit-tests)

Testy piszemy do swojego kodu  jeśli ma to sens  lub do tego kodu
[06-integration_tests](https://github.com/egzamin/tar/tree/master/labs/06-integration_tests).
W testach jednostkowych użyć doubles/mocków/stubów.
-->

### Zadanie 2. [Piszemy testy do własnego programu]

[Poniżej to tylko przykład. Kod będzie omówiony na wykładzie.]

„Wypożyczalnia Video” (klasyka). To tylko przykład programu na egzamin :sparkling_heart:

*Program oblicza i wypisuje rachunki za wypożyczone filmy.*

Program korzystając z informacji jakie filmy i na jak długo
wypożyczył użytkownik wypisuje rachunek.<br>
Rachunek zależy od tego na jak długo wypożyczono film
i od jego rodzaju. Są trzy rodzaje filmów: zwykłe  dla dzieci
i nowe. Dodatkowo  opłata zależy od tego czy mamy przyznane
punkty za częste wypożyczenia i od tego czy film jest nowy.

*Uwaga:*  Można napisać testy do aplikacji webowej.


## Lista

Legenda:

* gmf – brak Gemfile
* cov – brak coverage
* nef – No examples found

----

### Grupa 1

1. [Wojciech Łojkowski i Kacper Narożnik](https://github.com/knaroznik/Ruby_GameOfLife)
2. [Jakub Łąkowski](https://github.com/kubalakowski/projekt_ruby)


### Grupa 2

1. [Mateusz Gawin, Jakub Jabłoński, Daria Kotowicz i Magdalena Jędzierowska](https://github.com/matgawin/ruby-projekt2)
1. [Cwilik Dawid](https://github.com/jodanpotasu/RubyZajecia2)
1. [Patryk Adler, Michał Byszof, Maksymilian Kicki i Tomasz Cabaj](https://github.com/tcabaj/Ruby_2)
1. [Radosław Gołuński, Patryk Pobłocki, Artur Radomski](https://github.com/ppoblocki/tar-egzamin)
5. [Jakub Wiśniewski, Aleksandra Tejszerska, Szymon Sędek](https://github.com/jawisniewski/rubyzespolowy)
