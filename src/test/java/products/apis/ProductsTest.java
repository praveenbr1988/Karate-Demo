package products.apis;

import com.intuit.karate.junit5.Karate;

public class ProductsTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run("products").relativeTo(getClass());

    }

}
