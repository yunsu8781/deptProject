package com.yunsu1021.boardproject2.dao;

import com.yunsu1021.boardproject2.dto.BoardDTO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public interface BoardDAO {

    public ArrayList<BoardDTO> boardList(Map searchData) throws Exception;

    public int totalCntBoard() throws Exception;

    public void insertBoard(BoardDTO boardDTO) throws Exception;

    public BoardDTO getDeptData(String board_no) throws Exception;

    public void updateDept(BoardDTO boardDTO) throws Exception;

/*    public ArrayList searchDept(Map searchData) throws Exception;*/

}
