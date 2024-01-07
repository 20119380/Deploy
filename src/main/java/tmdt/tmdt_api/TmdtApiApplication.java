package tmdt.tmdt_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tmdt.tmdt_api.Service.RedisService;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

@SpringBootApplication
public class TmdtApiApplication {
    public static void main(String[] args)  {
       SpringApplication.run(TmdtApiApplication.class, args);

    }
    }


