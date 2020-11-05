package co.com.devco.extremestartupserver.controllers;

import co.com.devco.extremestartupserver.model.ResponderModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.logging.Level;
import java.util.logging.Logger;

@RestController
public class GetController {
    ResponderModel responder = new ResponderModel();

    @GetMapping("/responding")
    public String responding(@RequestParam(value = "q", defaultValue = "") String question) {
        Logger.getAnonymousLogger().log(Level.INFO, "### Pregunta: " + question);
        return responder.answer(question);
    }
}
