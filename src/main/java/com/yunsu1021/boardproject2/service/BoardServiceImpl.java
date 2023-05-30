package com.yunsu1021.boardproject2.service;

import com.yunsu1021.boardproject2.dao.BoardDAO;
import com.yunsu1021.boardproject2.dto.BoardDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

@Log4j2
@Service
public class BoardServiceImpl implements BoardService {

    @Resource
    private BoardDAO boardDAO;

    @Override
    public ArrayList<BoardDTO> boardList() throws Exception {
        return boardDAO.boardList();
    }

    @Override
    public int totalCntBoard() throws Exception{
        return boardDAO.totalCntBoard();
    }

    @Override
    public void insertBoard(String board_title, String board_arry, String board_status, String board_regi_ster, String board_info) throws  Exception{

    }

    @Override
    public void insertBoard(BoardDTO boardDTO) throws Exception{
        boardDAO.insertBoard(boardDTO);
    }

    @Override
    public void insertBoard(String[] boardList) throws Exception{

    }
    @Override
    public BoardDTO getDeptData(String board_no) throws Exception{
        return boardDAO.getDeptData(board_no);
    }

    @Override
    public void updateDept(BoardDTO boardDTO)throws Exception{
        log.info("boardDTO : "+boardDTO);
        boardDAO.updateDept(boardDTO);
    }

}
