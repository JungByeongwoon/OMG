package com.omg.cmn;

public class DTO {
	/**구분 */
	private String div;
	/**�? 번호 */
	private int num;
	/**총�??�� */
	private int totalCnt;
	
	public DTO(){}

	public String getDiv() {
		return div;
	}

	public void setDiv(String div) {
		this.div = div;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	@Override
	public String toString() {
		return "DTO [div=" + div + ", num=" + num + ", totalCnt=" + totalCnt + "]";
	}

	
	
}

