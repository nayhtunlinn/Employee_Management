package com.example.employee.domain.model;

import java.io.Serializable;

public class SearchData implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String srcData;

	public String getSrcData() {
		return srcData;
	}

	public void setSrcData(String srcData) {
		this.srcData = srcData;
	}

}
