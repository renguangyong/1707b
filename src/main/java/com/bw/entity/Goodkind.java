package com.bw.entity;


public class Goodkind implements java.io.Serializable {

	//columns START
	private Integer gsid;
	private String gsname;
	//columns END
	public Goodkind(){
	}
	public Goodkind(Integer gsid,String gsname){
		this.gsid=gsid;		this.gsname=gsname;	}

	public void setGsid(Integer gsid){
		this.gsid=gsid;
	}
	public Integer getGsid(){
		return gsid;
	}

	public void setGsname(String gsname){
		this.gsname=gsname;
	}
	public String getGsname(){
		return gsname;
	}
}

