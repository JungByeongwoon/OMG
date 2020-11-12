package com.omg.document.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omg.document.dao.DocumentDaoImpl;
import com.omg.document.domain.DocumentVO;

@Service("documentService")
public class DocumentService {

	@Autowired
	DocumentDaoImpl documentDaoImpl;
	
	/**
	 * λ¬Έμ ?½? 
	 * @param documentVO
	 * @return
	 */
	public int doInsert(DocumentVO documentVO) {
		return documentDaoImpl.doInsert(documentVO);
	}
	
	/**
	 * λ¬Έμ ?­?  
	 * @param documentVO
	 * @return
	 */
	public int doDelete(DocumentVO documentVO) {
		return documentDaoImpl.doDelete(documentVO);
	}
	
	/**
	 * λ¬Έμ κ°±μ 
	 * @param documentVO
	 * @return
	 */
	public int doUpdate(DocumentVO documentVO) {
		return documentDaoImpl.doUpdate(documentVO);
	}
	/**
	 * ?¨κ±? κ²?? 
	 * @param documentVO
	 * @return
	 */
	public DocumentVO doSelectOne(DocumentVO documentVO) {
		return documentDaoImpl.doSelectOne(documentVO);
	}
	
	/**
	 * ? μ²? κ²??
	 * @param documentVO
	 * @return
	 */
	public List<DocumentVO> doSelectList(){
		return documentDaoImpl.doSelectList();
	}
	
	/**
	 * ?¬λ²? κ²??¬
	 * @param documentVO
	 * @return
	 */
	
	public List<DocumentVO> doempIdSelectList (DocumentVO documentVO){
		
		return documentDaoImpl.doempIdSelectList(documentVO);
	}
	
	public int doempIdcheck(DocumentVO documentVO) {
		return documentDaoImpl.doempIdcheck(documentVO);
	}

	
}
