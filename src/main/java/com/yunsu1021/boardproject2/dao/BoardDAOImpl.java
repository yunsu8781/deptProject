package com.yunsu1021.boardproject2.dao;

import com.yunsu1021.boardproject2.dto.BoardDTO;
import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Map;


@Log4j2
@Repository
public class BoardDAOImpl implements BoardDAO{

    @Resource
    private SqlSession sqlSession;

    @Override
    public ArrayList boardList(Map<String, String> searchData) throws Exception{
        log.info("searchStatus : " + searchData.get("searchStatus"));
        log.info("searchArray : " + searchData.get("searchArray"));
        log.info("searchTitle : " + searchData.get("searchTitle"));
        log.info("limitStartNum : " +  searchData.get("limitStartNum"));
        return(ArrayList)sqlSession.selectList("BoardMapper.getAllBoard", searchData);
    }

    @Override
    public int totalCntBoard() throws Exception {
        return sqlSession.selectOne("BoardMapper.totalCntBoard");
    }

    @Override
    public void insertBoard(BoardDTO boardDTO) throws Exception{
        sqlSession.insert("BoardMapper.insertBoard", boardDTO);
    }

    @Override
    public BoardDTO getDeptData(String board_no) throws Exception{
        return sqlSession.selectOne("BoardMapper.getDeptData", board_no);
    }

    @Override
    public void updateDept(BoardDTO boardDTO) throws Exception{
        sqlSession.update("BoardMapper.updateDept", boardDTO);
    }

/*    @Override
    public ArrayList searchDept(Map searchData) throws Exception{
        log.info("값 : " + searchData);
       return(ArrayList)sqlSession.selectList("BoardMapper.getAllBoard", searchData);
    }*/


}
