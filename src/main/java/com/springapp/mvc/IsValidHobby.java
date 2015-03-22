package com.springapp.mvc;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Constraint(validatedBy = HobbyValidator.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface IsValidHobby {
    String listOfValidHobbies() default "Development|Music|Football|Hockey|Gaming" ;


    String message() default "Please provide a valid Hobby; " +
            "accepted hobbies are - Development, Music, Football and Hockey ( choose anyone )";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}