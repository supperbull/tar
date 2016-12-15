## Testowanie aplikacji Ruby, 2016/17

> There are only two types of theories [programms]:<br>
> 1. Theories that are known to be wrong, as they were tested
> and adequately rejected.<br>
> 2. Theories that have not yet been known to be wrong,
> not falsified yet, but are exposed to be wrong.<br>
> – *K. Popper*<br>
> Why is the theory [program] **never right**?

### Ruby

1. Konfiguracja środowiska do pracy z projektami w Ruby:
  - [Instalacja Ruby](http://rvm.io/rvm) – Ruby enVironment (Version) Manager
  - [Bundler](http://bundler.io) – provides a consistent environment
    for Ruby projects by tracking and installing the exact gems and
    versions that are needed.
    - instalacja gemów – [Miejsce na dysku Sigma + Laboratoria](https://inf.ug.edu.pl/aktualizacje-serwera-sigma)  
  - Podstawowe gemy: rspec, [rubocop](http://rubocop.readthedocs.io/en/latest/).
  - [Instalacja edytora Atom](https://atom.io) i rozszerzeń (pakietów):
    * [linter](https://github.com/steelbrain/linter) i
      [linter-rubocop](https://atom.io/packages/linter-rubocop);
      [konfiguracja](http://rubocop.readthedocs.io/en/latest/),
      [enabled style cops](https://github.com/bbatsov/rubocop/blob/master/config/enabled.yml)
    * [script](https://atom.io/packages/script), ruby-test-switcher
    * [rspec](https://atom.io/packages/rspec) i
      [language-rspec](https://atom.io/packages/language-rspec)
  - Przykłady pokazujące jak to działa:
    [factorial.rb](wyklady/1-Classes_Modules/factorial.rb),
    [fox.rb](wyklady/1-Classes_Modules/fox.rb),
    [hello_world](wyklady/2-Hello_Bundler/hello_world]),
    [hello_bundler](wyklady/2-Hello_Bundler/hello_bundler).
1. Wprowadzenie do języka Ruby:
   - [Try Ruby](http://tryruby.org)
   - [Learn X in Y minutes][5], where X = Ruby
   - Learn X in Ruby, where X = [Hash, Array, Enumerable](http://ruby-doc.org/core-2.3.1/)
   - [How to Solve Coding Anti-Patterns for Ruby Rookies](http://www.sitepoint.com/how-to-solve-coding-anti-patterns-for-ruby-rookies/)

---

1. [Szablon projektu Ruby + RSpec](https://github.com/egzamin/solutions-tar).
2. Ogólnie o testowaniu:<br>
   - Learn X in Y minutes, where X = Rspec, Capybara, Factory Girl.
3. Wprowadzenie do RSpec.
4. Testy jednostkowe:
   - [Ruby](https://github.com/ruby/ruby/tree/trunk/test/ruby) – przykłady w _TestUnit_
5. [Mostly Static Pages](https://github.com/rails4/mostly_static_pages5) –
   testowanie kontrolerów i widoków:
   - [rspec-rails](https://github.com/rspec/rspec-rails).
6. Refaktoryzacja kodu.
7. Pokrycie kodu testami:
   - [simplecov][8].
8. Doubles, mocks i stubs.
9. Praca z *Legacy Code* (zastanym kodem, kodem niepokrytym testami).


### RSpec

1. David Chelimsky, Dave Astels, Zach Dennis, Aslak Hellesøy, Bryan Helmkamp, Dan North.
  [The RSpec Book: Behaviour-Driven Development with RSpec, Cucumber, and Friends][3].
1. Robert C. Martin.
  [Czysty kod](http://helion.pl/ksiazki/czysty-kod-podrecznik-dobrego-programisty-robert-c-martin,czykov.htm).
2. Dokumentacja [RSpec](http://rspec.info/):
  - [rspec-core](https://github.com/rspec/rspec-core)
  - [rspec-expectations](https://github.com/rspec/rspec-expectations)
  - [rspec-mocks](https://github.com/rspec/rspec-mocks)
3. [Better Specs](http://betterspecs.org) –
  how to describe your methods, use context
  - [Octokit](https://github.com/octokit/octokit.rb) –
  many examples of excellent descriptions
  - [The RSpec Style Guide](https://github.com/reachlocal/rspec-style-guide)


### Dokumentacja i inne użyteczne rzeczy

Ruby:

1. [Ruby Koans](http://rubykoans.com/) – Learn Ruby with the Neo Ruby Koans.
2. Jay Fields, Shane Harvie, Martin Fowler with Kent Beck.
  [Refactoring](http://books.google.pl/books/about/Refactoring.html?id=6jyOUrJBJHAC) – Ruby edition.
3. [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide) – a community-driven Ruby coding style guide
4. [Get the Lowdown on Ruby Modules](https://www.sitepoint.com/get-the-low-down-on-ruby-modules/)


Git:

* Scott Chacon, Ben Straub. [Pro Git](https://git-scm.com/book/en/v2)
  - [6.1 GitHub – Account Setup and Configuration](https://git-scm.com/book/en/v2/GitHub-Account-Setup-and-Configuration)
  - [6.2 GitHub - Contributing to a Project](https://git-scm.com/book/en/v2/GitHub-Contributing-to-a-Project)
* [Git Tips](https://github.com/git-tips/tips) – most commonly used git tips and tricks
* [github-cheat-sheet](http://git.io/sheet)


Atom (command palette -> cmd+shift+p):

Polskie literki (ą, Ś) oraz nowe i nadpisanie _keybinding_ w systemie Darwin.
Dopisujemy w pliku _~/.atom/keymap.cson_:

```yaml
'.platform-darwin atom-text-editor':
  'alt-a': 'native!'
  'alt-shift-s': 'unset!'
  'ctrl-shift-i': 'auto-indent:apply'
  'cmd-shift-m': 'markdown-preview:toggle'
```

Większe literki w oknie script i linter oraz w UI.
Dopisujemy w pliku _~/.atom/styles.less_:

```less
@ui-font-size: 16px;

.script-view {
 .panel-body pre {
   background: @tool-panel-background-color;
   color: @text-color;
   font-size: 1.6rem;
 }
 .output {
   font-size: 1.6rem;
 }
 .stderr {
   color: @text-color-error;
   font-size: 1.6rem;
 }
}

linter-message {
  font-size: @ui-font-size;
}

.rspec-console.rspec {
   background-color: white;
   color: black;
   overflow: scroll;
 }
.rspec-console.rspec {
  pre,
  pre div atom-text-editor,
  code,
  tt {
    font-size: @ui-font-size;
    font-family: PT Mono, monospace;
  }
  .rspec-output {
    background: #fff;
    color: #000;
  }
}
```

Continuous Integration and Deployment:

1. [Codeship](https://www.codeship.io/).
1. [Travis](https://travis-ci.org/) – niestety usługa płatna dla repozytoriów prywatnych.
1. [Code Climate](https://codeclimate.com/) – healthy code ships faster.
  - [Deciphering Ruby Code Metrics](http://blog.codeclimate.com/blog/2013/08/07/deciphering-ruby-code-metrics/)


Fajne:

1. [Codility](https://codility.com/) – we test coders




[1]: https://github.com/elizabrock/NSS-Syllabus-Spring-2013
[2]: http://rvm.io/rvm
[3]: http://pragprog.com/book/achbd/the-rspec-book
[4]: http://www.tutorialspoint.com/ruby/
[5]: http://learnxinyminutes.com/docs/ruby/
[6]: http://tryruby.org/levels/1/challenges/0
[7]: https://www.codeschool.com/courses/testing-with-rspec
[8]: https://github.com/colszowka/simplecov
