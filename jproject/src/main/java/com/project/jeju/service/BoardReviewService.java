package com.project.jeju.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jeju.dao.BoardReviewDao;

@Service
public class BoardReviewService {

	@Autowired
	private BoardReviewDao brdao;
}
