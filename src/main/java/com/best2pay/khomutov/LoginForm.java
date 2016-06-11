package com.best2pay.khomutov;


import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * @author Andrey
 */
public class LoginForm {

    @NotBlank(message = "Not null")
    @Size(min = 4, max = 30, message = "Your login must between 8 and 30 characters")
    private String login;
    @NotBlank(message = "Not null")
    @Size(min = 8, max = 30, message = "Your password must between 8 and 30 characters")
    @Pattern.List({
            @Pattern(regexp = ".*\\d.*", message = "Password must contain one digit."),
            @Pattern(regexp = ".*[A-Z].*", message = "Password must contain one uppercase letter."),
    })

    private String password;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
