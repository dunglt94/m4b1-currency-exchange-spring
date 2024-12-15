package com.example.currencyexchangespring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

@Controller
public class ExchangeController {
    @GetMapping("/exchanges")
    public String exchange() {
        return "exchange";
    }

    @PostMapping("/exchanges")
    public String calculate(@RequestParam float usd, float rate, Model model) {
        float vnd = usd * rate;
        model.addAttribute("usd", usd);
        model.addAttribute("rate", rate);
        Locale vietnamLocale = new Locale("vi", "VN");
        NumberFormat numberFormat = NumberFormat.getNumberInstance(vietnamLocale);
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        String formattedNumber = numberFormat.format(vnd);
        model.addAttribute("vnd", formattedNumber);
        return "exchange";
    }
}
