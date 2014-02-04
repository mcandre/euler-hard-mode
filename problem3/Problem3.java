import java.util.ArrayList;

public class Problem3 {
  public static boolean prime(Long n) {
    if (n == 2L) {
      return true;
    }

    for (Long candidate = 2L; candidate * candidate <= n; candidate++) {
      if (n % candidate == 0) {
        return false;
      }
    }

    return true;
  }

  public static ArrayList<Long> factors(Long n) {
    for (Long candidate = 2L; candidate * candidate <= n; candidate++) {
      if (n % candidate == 0) {
        ArrayList<Long> factors = new ArrayList<Long>();
        factors.add(candidate);

        factors.addAll(factors(n / candidate));
        return factors;
      }
    }

    ArrayList<Long> factors = new ArrayList<Long>();
    factors.add(n);

    return factors;
  }

  public static Long largestPrimeFactor(Long n) {
    ArrayList<Long> factors = factors(n);

    ArrayList<Long> primeFactors = new ArrayList<Long>();

    for (Long factor: factors) {
      if (prime(factor)) {
        primeFactors.add(factor);
      }
    }

    return primeFactors.get(primeFactors.size() - 1);
  }

  public static void main(String[] args) {
    System.out.println(largestPrimeFactor(600851475143L));
  }
}
