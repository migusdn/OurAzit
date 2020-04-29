package com.syu.app.Util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;


public class EncryptUtil {
	
	public static String getEncrypt(String str, String salt) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String res = null;
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		digest.reset();
		digest.update((str+salt).getBytes("utf8"));
		res = String.format("%064x", new BigInteger(1, digest.digest()));
		return res;
	}
	public static String genSalt() {
		Random rand = new Random();
		byte[] salt = new byte[8];
		rand.nextBytes(salt);
		
		StringBuffer sbuffer = new StringBuffer();
		for (int i=0; i< salt.length; i++) {
			sbuffer.append(String.format("%02x", salt[i]));
		}
		return sbuffer.toString();
	}	
}
