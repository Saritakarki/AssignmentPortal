
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import javax.mail.MessagingException;
import javax.mail.Part;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sarita Karki
 */
public class multipart {
    private static String getValue(Part part) throws IOException, MessagingException {
    BufferedReader reader = new BufferedReader(new InputStreamReader(part.getInputStream(), "UTF-8"));
    StringBuilder value = new StringBuilder();
    char[] buffer = new char[1024];
    for (int length = 0; (length = reader.read(buffer)) > 0;) {
        value.append(buffer, 0, length);
    }
    return value.toString();
}
}
