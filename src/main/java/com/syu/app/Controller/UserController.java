package com.syu.app.Controller;

import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import com.syu.app.Dao.UDao;
import com.syu.app.Dto.UserDto;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.apache.ibatis.session.SqlSession;

import com.syu.app.Util.EncryptUtil;
/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	@Autowired
	private SqlSession sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private static final JSONParser parser = new JSONParser();

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 */

	@ResponseBody
	@RequestMapping(value = "Regis_Act", produces = "application/json; charset=utf8")
	public int home(Model model, HttpServletRequest request, @RequestBody String paramData) throws ParseException, NoSuchAlgorithmException, UnsupportedEncodingException {

		logger.info("회원가입 컨트롤러 접속");
		logger.info("-----------------------");
		logger.info(paramData);
		JSONObject Regis_Data = (JSONObject) parser.parse(paramData.toString());
		String salt=EncryptUtil.genSalt();
		String password = EncryptUtil.getEncrypt(Regis_Data.get("user_password").toString().trim(), salt);
		// Map Regis_Data = request.getParameterMap();
		UserDto UserDto = new UserDto();
		UserDto.setUser_name(Regis_Data.get("user_name").toString().trim());
		UserDto.setUser_id(Regis_Data.get("user_id").toString().trim());
		UserDto.setUser_password(password);
		UserDto.setUser_email(Regis_Data.get("user_email").toString().trim());
		UserDto.setUser_mobile(Regis_Data.get("user_mobile").toString().trim());
		UserDto.setUser_type(Regis_Data.get("user_type").toString().trim());
		UserDto.setUser_birth(Regis_Data.get("user_birth").toString().trim());
		UserDto.setSalt(salt);
		try {
			UserDto.setAccess_token(Regis_Data.get("access_token").toString().trim());
		} catch (Exception e) {
		}
		UDao dao = sqlSession.getMapper(UDao.class);
		dao.Register(UserDto);
		logger.info("user_id: " + Regis_Data.get("user_id").toString().trim());
		logger.info("user_password: " + password);

		return 1;
	}

	@ResponseBody
	@RequestMapping(value = "Login_Act", produces = "application/json; charset=utf8")
	public String LoginAct(HttpServletRequest request, @RequestBody String paramData, HttpSession session)
			throws ParseException, NoSuchAlgorithmException, UnsupportedEncodingException {
		logger.info("로그인 컨트롤러 접속");
		JSONObject Login_Data = (JSONObject) parser.parse(paramData.toString());
		UDao dao = sqlSession.getMapper(UDao.class);
		UserDto dto = dao.Login(Login_Data.get("user_id").toString().trim());
		String pwd = EncryptUtil.getEncrypt(Login_Data.get("user_password").toString().trim(), dto.getSalt());
		logger.info("user_pwd:"+Login_Data.get("user_password").toString());
		logger.info("encrypt pwd:"+pwd);
		logger.info("salt:"+dto.getSalt());
		logger.info("user_real_pwd:"+dto.getUser_password());
		
		if (pwd.equals(dto.getUser_password())) {
			session.setAttribute("user_id", dto.getUser_id());
			return "1";
		} else
			return "0";
	}

	@RequestMapping("/N_callback")
	public String N_callback(Model model) {
		return "N_callback";
	}
	@ResponseBody
	@RequestMapping("/N_Login")
	public String N_Login(@RequestBody String paramData, HttpSession session) {
		String access_token = paramData.trim();
		System.out.println("access_token"+access_token);
		UDao dao = sqlSession.getMapper(UDao.class);
		UserDto dto = dao.N_Login(access_token);
		if (dto != null) {
			session.setAttribute("user_id", dto.getUser_id());
			return "0";
		} else {
			return "1";
		}
	}
	@RequestMapping("/Logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
