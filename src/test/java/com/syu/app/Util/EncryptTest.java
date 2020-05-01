package com.syu.app.Util;

import static org.junit.Assert.assertEquals;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.junit.Test;

public class EncryptTest {
	@Test
	public void encryptTest() throws NoSuchAlgorithmException, UnsupportedEncodingException {
		assertEquals("ff966b1eff052fd37622d1442e6612c02c06621268c19c3d55af000128465866",EncryptUtil.getEncrypt("test","1111"));
		assertEquals("test", EncryptUtil.genSalt(),0);
	}
}
