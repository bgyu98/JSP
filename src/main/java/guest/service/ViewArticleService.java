package guest.service;

import java.util.List;

import board_ex.model.*;
import guest.model.*;
import guest.model.MessageException;


public class ViewArticleService {
	private static ViewArticleService instance;
	public static ViewArticleService getInstance()  throws MessageException{
		if( instance == null )
		{
			instance = new ViewArticleService();
		}
		return instance;
	}
	
	public Message getArticleById(String id) throws MessageException
	{
		int article_id = 0;
		if( id != null ) article_id = Integer.parseInt(id);
		MessageDao dao = MessageDao.getInstance();
		Message rec = dao.selectById(article_id);		
		return rec;
	}
		
}

