package kh.spring.dao;

import java.util.List;
import java.util.Map;

import kh.spring.dto.ReviewDTO;

public interface ReviewDAO {
	public int insertReview(ReviewDTO dto);
	public List<ReviewDTO> selectAllReviewByCurrentpage(int start, int end);
	public int modifyReview(ReviewDTO dto);
	public int deleteReview(int seq);
	public int deleteReview(String[] seq);
	public List<ReviewDTO> selectReviewPerPage(int start, int end);
	public int getReviewCount();
	public ReviewDTO selectReviewBySeq(int seq);
	public int updateViewCount(int seq);
}
