package com.syu.app.Util;

import static org.junit.Assert.assertEquals;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.junit.Test;

public class EncryptTest {
	@Test
	public void encryptTest() throws NoSuchAlgorithmException, UnsupportedEncodingException {
		assertEquals(0,EncryptUtil.getEncrypt("test","1111"));
	}
}
