package com.yunsu1021.boardproject2.dao;

import com.yunsu1021.boardproject2.dto.BoardDTO;
import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;


@Log4j2
@Repository
public class BoardDAOImpl implements BoardDAO{

    @Resource
    private SqlSession sqlSession;

    @Override
    public ArrayList boardList() throws Exception{
        return(ArrayList)sqlSession.selectList("BoardMapper.getAllBoard");
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
        log.info("boardDTO : "+boardDTO);
        sqlSession.update("BoardMapper.updateDept", boardDTO);
    }


}
