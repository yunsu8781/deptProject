package com.yunsu1021.boardproject2.dao;

import com.yunsu1021.boardproject2.dto.BoardDTO;

import java.util.ArrayList;

public interface BoardDAO {

    public ArrayList<BoardDTO> boardList() throws Exception;

    public int totalCntBoard() throws Exception;

    public void insertBoard(BoardDTO boardDTO) throws Exception;

    public BoardDTO getDeptData(String board_no) throws Exception;

    public void updateDept(BoardDTO boardDTO) throws Exception;

}
