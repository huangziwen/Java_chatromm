package com.slipper.common.exception;

import com.slipper.common.utils.Constant;
import com.slipper.common.utils.R;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.validation.FieldError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * 异常处理器
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 */
@RestControllerAdvice
public class RunExceptionHandler {
	private Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 运行时自定义异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(RunException.class)
	public R handleRRException(RunException e){
		R r = new R();
		r.put("status", "error");
		r.put("code", e.getCode());
		r.put("message", e.getMessage());
		return r;
	}

	/**
	 * 404异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(NoHandlerFoundException.class)
	public R handlerNoFoundException(Exception e) {
		logger.error(e.getMessage(), e);
		return R.error(Constant.NOT_FOUND_CODE, Constant.NOT_FOUND);
	}

	/**
	 * 数据库key重复异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(DuplicateKeyException.class)
	public R handleDuplicateKeyException(DuplicateKeyException e){
		logger.error(e.getMessage(), e);
		return R.error("数据库中已存在该记录");
	}

	/**
	 * Sql异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(BadSqlGrammarException.class)
	public R handleBadSqlGrammarException(Exception e){
		logger.error(e.getMessage(), e);
		return R.error("Sql异常!");
	}

	/**
	 * 服务端异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(Exception.class)
	public R handleException(Exception e){
		logger.error(e.getMessage(), e);
		return R.error();
	}

	/**
	 * 实体校验异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public R handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
		String message = Constant.VERIFICATION_ERROR;
		logger.error(message + e.getParameter().getMethod() + e.getBindingResult().getFieldErrors());
		String comma = "";
		for (FieldError error : e.getBindingResult().getFieldErrors()) {
			message += comma;
			message += error.getField() + "-" +error.getDefaultMessage();
			comma = ",";
		}
		return R.error(Constant.VERIFICATION_ERROR_CODE, message);
	}

	/**
	 * 请求方法异常
	 * @param e
	 * @return
	 */
	@ExceptionHandler(HttpRequestMethodNotSupportedException.class)
	public R handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e){
		logger.error(e.getMessage(), e);
		return R.error(Constant.METHOD_ERROR_CODE, Constant.METHOD_ERROR + e.getMethod());
	}
}
