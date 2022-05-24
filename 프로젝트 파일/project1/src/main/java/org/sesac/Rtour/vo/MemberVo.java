package org.sesac.Rtour.vo;

public class MemberVo {
	private String mem_id, mem_name, mem_passwd, mem_gen, mem_email;
	private int mem_age, mem_tel;
	
	public MemberVo(String mem_id, String mem_name, String mem_passwd, String mem_gen, String mem_email, int mem_age,
			int mem_tel) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_passwd = mem_passwd;
		this.mem_gen = mem_gen;
		this.mem_email = mem_email;
		this.mem_age = mem_age;
		this.mem_tel = mem_tel;
	}

	public MemberVo() {
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_passwd() {
		return mem_passwd;
	}
	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}
	public String getMem_gen() {
		return mem_gen;
	}
	public void setMem_gen(String mem_gen) {
		this.mem_gen = mem_gen;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public int getMem_age() {
		return mem_age;
	}
	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}
	public int getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(int mem_tel) {
		this.mem_tel = mem_tel;
	}

	@Override
	public String toString() {
		return "MemberVo [mem_id=" + mem_id + ", mem_name=" + mem_name + ", mem_passwd=" + mem_passwd + ", mem_gen="
				+ mem_gen + ", mem_email=" + mem_email + ", mem_age=" + mem_age + ", mem_tel=" + mem_tel + "]";
	}
		
}
