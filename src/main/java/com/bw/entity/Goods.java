package com.bw.entity;


public class Goods implements java.io.Serializable {

	//columns START
	private Integer gid;
	private String gname;
	private Integer bid;
	private Integer gsid;
	private String img;
	private String bname;
	private String gsname;
	//columns END
	public Goods(){
	}
	public Goods(Integer gid,String gname,Integer bid,Integer gsid,String img){
		this.gid=gid;		this.gname=gname;		this.bid=bid;		this.gsid=gsid;		this.img=img;	}

	
	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getGsname() {
		return gsname;
	}

	public void setGsname(String gsname) {
		this.gsname = gsname;
	}

	public void setGid(Integer gid){
		this.gid=gid;
	}
	public Integer getGid(){
		return gid;
	}

	public void setGname(String gname){
		this.gname=gname;
	}
	public String getGname(){
		return gname;
	}

	public void setBid(Integer bid){
		this.bid=bid;
	}
	public Integer getBid(){
		return bid;
	}

	public void setGsid(Integer gsid){
		this.gsid=gsid;
	}
	public Integer getGsid(){
		return gsid;
	}

	public void setImg(String img){
		this.img=img;
	}
	public String getImg(){
		return img;
	}
}

