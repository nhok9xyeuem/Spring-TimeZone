package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.TimeZone;

@Controller

public class TimeZoneControllers {
    @GetMapping("display")
    public String getTimeByTimezone(ModelMap model,
                                    @RequestParam(name = "city",
                                            required = false,
                                            defaultValue = "Asia/Ho_Chi_Minh")
                                            String city) {
        Date date = new Date();
        TimeZone local = TimeZone.getDefault();
        TimeZone locale = TimeZone.getTimeZone("city");
        long local_time = date.getTime() + (locale.getRawOffset() -local.getRawOffset());

        model.addAttribute("city", city);
        model.addAttribute("date", date);

        return "display";

    }
}