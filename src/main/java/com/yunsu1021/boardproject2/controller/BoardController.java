package com.yunsu1021.boardproject2.controller;

import com.yunsu1021.boardproject2.dto.BoardDTO;
import com.yunsu1021.boardproject2.service.BoardService;

import lombok.extern.log4j.Log4j2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@Log4j2
public class BoardController {

    @Autowired
    private BoardService boardService;

    @RequestMapping("/")
    public String playBoardList(@RequestParam Map<String, String> searchData, Model model) throws Exception{

        searchData.get("searchStatus");
        searchData.get("searchArray");
        searchData.get("searchTitle");

        searchData.get("limitStartNum");

        List<BoardDTO> boardList = boardService.boardList(searchData);
        int totalCntBoard = boardService.totalCntBoard();

        model.addAttribute("boardList", boardList);
        model.addAttribute("totalCount", totalCntBoard);

        return "BoardList";
    }

    @RequestMapping("/getDeptData")
    @ResponseBody
    public BoardDTO getDeptData(@RequestParam(value="board_no", required = false) String board_no) throws Exception{
        return boardService.getDeptData(board_no);
    }

    //수정기능
    @RequestMapping(value = "/updateDept")
    public String updateDept(HttpServletRequest request) throws Exception{

        BoardDTO boardDTO = new BoardDTO();

        boardDTO.setBoard_no(Long.parseLong(request.getParameter("board_no")));
        boardDTO.setBoard_title(request.getParameter("board_title"));
        boardDTO.setBoard_arry(request.getParameter("board_arry"));
        boardDTO.setBoard_status(request.getParameter("board_status"));
        boardDTO.setBoard_regi_ster(request.getParameter("board_regi_ster"));
        boardDTO.setBoard_info(request.getParameter("board_info"));

        log.info("boardDTO : "+ boardDTO);

        boardService.updateDept(boardDTO);

        return "redirect:/";
    }

    @RequestMapping("/insertDept")
    public String insertDept(HttpServletRequest request) throws Exception{

        BoardDTO boardDTO = new BoardDTO();

        boardDTO.setBoard_title(request.getParameter("board_title"));
        boardDTO.setBoard_arry(request.getParameter("board_arry"));
        boardDTO.setBoard_status(request.getParameter("board_status"));
        boardDTO.setBoard_regi_ster(request.getParameter("board_regi_ster"));
        boardDTO.setBoard_info(request.getParameter("board_info"));

        return "redirect:/";
    }

/*    @RequestMapping("/search")
    public String searchDept(@RequestParam Map<String, String> searchData, Model model) throws Exception{

        searchData.get("searchStatus");
        searchData.get("searchArray");
        searchData.get("keyword");

        log.info("search = " + searchData);

        model.addAttribute("boardList", boardService.searchDept(searchData));
        model.addAttribute("searchData", searchData);
        return "BoardList";
    }*/

}
