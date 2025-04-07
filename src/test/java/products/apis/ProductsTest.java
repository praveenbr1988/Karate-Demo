package products.apis;

import com.intuit.karate.core.MockServer;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;

import java.io.File;

public class ProductsTest {

    static MockServer server;

    @BeforeAll
    static void startMockServer() {
        File mockFile = new File("src/test/java/products/apis/mock.feature");
        server = MockServer.feature(mockFile).http(8080).build();
        System.out.println(">> Mock Server started at: " + "http://localhost:" + server.getPort());
    }

    @AfterAll
    static void stopMockServer() {
        if (server != null) {
            server.stop();
            System.out.println(">> Mock Server stopped");
        }
    }

    @Karate.Test
    Karate testAll() {
        return Karate.run("products_mockedEndPoint").relativeTo(getClass());

    }

}
