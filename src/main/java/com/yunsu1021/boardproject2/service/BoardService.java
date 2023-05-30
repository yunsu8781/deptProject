package com.yunsu1021.boardproject2.service;

import com.yunsu1021.boardproject2.dto.BoardDTO;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Map;

public interface BoardService {
    public ArrayList<BoardDTO> boardList() throws Exception;

    public int totalCntBoard() throws Exception;

    public void insertBoard(BoardDTO boardDTO) throws  Exception;

    public void insertBoard(String board_title, String board_arry, String board_status, String board_regi_ster, String board_info) throws Exception;

    public void insertBoard(String[] boardList) throws Exception;

    //수정할 데이터의 값을 불러오는 메소드
    public BoardDTO getDeptData(String board_no) throws  Exception;

    public void updateDept(BoardDTO boardDTO) throws Exception;

}
