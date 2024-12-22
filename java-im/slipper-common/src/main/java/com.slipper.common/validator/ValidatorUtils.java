package com.slipper.common.validator;

import com.slipper.common.config.ValidatorConfig;
import com.slipper.common.exception.RunException;
import com.slipper.common.utils.Constant;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import java.util.Set;

/**
 * hibernate-validator校验工具类
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
public class ValidatorUtils {
    private static Validator validator;

    static {
        validator = ValidatorConfig.getValidator();
    }

    /**
     * 功能描述:校验注解参数
     */
    public static <T> String validated(T object, Class<?>... groups) {
        Set<ConstraintViolation<Object>> constraintViolations = validator.validate(object, groups);
        if (!constraintViolations.isEmpty()) {
            StringBuilder message = new StringBuilder();
            message.append(Constant.VERIFICATION_ERROR);
            String comma = "";
            for (ConstraintViolation<Object> constraint:  constraintViolations) {
                message.append(comma).append(constraint.getPropertyPath()+ "-" + constraint.getMessage());
                comma = ",";
            }
            return message.toString();
        }
        return null;
    }

}
