package com.noteshop.client.Models;

import lombok.Data;

@Data
public class User {

    private Integer Id;
	private String login;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String street;
	private String city;
	private String state;

	private boolean isadmin;

    
}
