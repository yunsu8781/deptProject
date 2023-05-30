package com.yunsu1021.boardproject2.controller;

import com.yunsu1021.boardproject2.dto.BoardDTO;
import com.yunsu1021.boardproject2.service.BoardService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@Log4j2
public class BoardController {

    @Autowired
    private BoardService boardService;

    @GetMapping("/")
    public String playBoardList(Model model, HttpServletRequest request) throws Exception{

        List<BoardDTO> boardList = boardService.boardList();
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

    @RequestMapping(value = "updateDept")
    @ResponseBody
    public String updateDept(HttpServletRequest request, @RequestParam(value="board_no", required = false) long board_no) throws Exception{

        BoardDTO boardDTO = new BoardDTO();

        boardDTO.setBoard_no(board_no);
        boardDTO.setBoard_title(request.getParameter("board_title"));
        boardDTO.setBoard_status(request.getParameter("board_status"));
        boardDTO.setBoard_arry(request.getParameter("board_arry"));
        boardDTO.setBoard_info(request.getParameter("board_info"));
        boardDTO.setBoard_regi_ster(request.getParameter("board_regi_ster"));

        log.info("boardDTO : "+ boardDTO);

        boardService.updateDept(boardDTO);

        return "redirect:/";
    }

    @RequestMapping("/insertDept")
    public String insertDept(HttpServletRequest request, Model model) throws Exception{

        BoardDTO boardDTO = new BoardDTO();

        boardDTO.setBoard_title(request.getParameter("board_title"));
        boardDTO.setBoard_arry(request.getParameter("board_arry"));
        boardDTO.setBoard_status(request.getParameter("board_status"));
        boardDTO.setBoard_regi_ster(request.getParameter("board_regi_ster"));
        boardDTO.setBoard_info(request.getParameter("board_info"));

        return "redirect:/";
    }


}
