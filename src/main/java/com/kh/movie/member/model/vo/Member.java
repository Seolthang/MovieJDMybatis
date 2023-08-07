package com.kh.movie.member.model.vo;

import java.sql.Timestamp;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberGender;
	private String memberEmail;
	private String memberNickname;
	private Timestamp memberDate;
	private String memberYn;
	
	public Member() {}
	
	public Member(String memberId, String memberPw, String memberGender, String memberEmail, String memberNickname) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberGender = memberGender;
		this.memberEmail = memberEmail;
		this.memberNickname = memberNickname;
	}

	public Member(String memberId, String memberPw) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
	}

	public Member(String memberId, String memberPw, String memberName, String memberGender, String memberEmail,
			String memberNickname) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberGender = memberGender;
		this.memberEmail = memberEmail;
		this.memberNickname = memberNickname;
	}

	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public Timestamp getMemberDate() {
		return memberDate;
	}
	public void setMemberDate(Timestamp memberDate) {
		this.memberDate = memberDate;
	}
	public String getMemberYn() {
		return memberYn;
	}
	public void setMemberYn(String memberYn) {
		this.memberYn = memberYn;
	}

	@Override
	public String toString() {
		return "회원 [아이디=" + memberId + ", 비밀번호=" + memberPw + ", 이름=" + memberName
				+ ", 성별=" + memberGender + ", 이메일=" + memberEmail + ", 별명="
				+ memberNickname + ", 가입일=" + memberDate + ", 회원여부=" + memberYn + "]";
	}
	
	
}
