# euler-hard-mode - Project Euler problems solved in HARD MODE

Your favorite programming language solving Project Eulers too easily? Try HARD MODE.

# HARD MODE

Solve each [Project Euler](https://projecteuler.net/) problem with a different programming language.

# REQUIREMENTS

* [Vagrant](http://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

Vagrant abstracts away the many compilers / interpreters / bribes needed to setup each programming language. So you don't need to sully your computer with hundreds of software development tools (unless you [really](https://github.com/mcandre/mcandre-ubuntu) want to).

# EXAMPLE

    euler-hard-mode$ cd problem1/

    problem1$ vagrant up
    problem1$ vagrant ssh

    vagrant@precise64$

Then follow the directions in that problem's `README.md`.

If your poor hardware can't handle hundreds of virtual machines, you may delete a problem's virtual machine:

    problem1$ vagrant destroy

# INDEX

| Problem | Language                                        |
| ------- | ----------------------------------------------- |
| 1       | [R](http://www.r-project.org/)                  |
| 2       | [Ruby](https://www.ruby-lang.org/)              |
| 3       | [Java](http://www.oracle.com/technetwork/java/) |
| 4       | [Node.js](http://nodejs.org/)                   |
| 5       | [C](http://clang.llvm.org/)                     |
| 6       | [Common Lisp](http://common-lisp.net/)          |
| 7       | [Erlang](http://www.erlang.org/)                |
| 8       | [Perl](http://www.perl.org/)                    |
| 9       | [Python](http://python.org/)                    |
| 10      | [Go](http://golang.org/)                        |
| 11      | [Haskell](http://www.haskell.org/)              |
