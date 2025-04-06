package examples.users;

import com.intuit.karate.junit5.Karate;

public class ExamplesTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run("users").relativeTo(getClass());
        //return Karate.run("classpath:examples/products.users/products.products.feature");

    }

}
