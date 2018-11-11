-module(problem7).
-export([
start/0,
prime/2,
next_prime/1,
next_prime/2,
nth_prime/1,
nth_prime/2
]).

prime(_, []) -> true;
prime(Candidate, [P|Primes]) ->
    Candidate rem P /= 0 andalso prime(Candidate, Primes).

next_prime([P|Primes]) -> next_prime([P|Primes], P + 1).
next_prime(Primes, Candidate) ->
    case prime(Candidate, Primes) of
        true -> Candidate;
    _ -> next_prime(Primes, Candidate + 1)
end.

nth_prime(N) -> nth_prime([2], N).
nth_prime(Primes, N)
when length(Primes) < N ->
    nth_prime([next_prime(Primes) | Primes], N);
nth_prime([P|_], _) -> P.

start() ->
    io:format("~w~n", [nth_prime(10001)]),
    init:stop().
