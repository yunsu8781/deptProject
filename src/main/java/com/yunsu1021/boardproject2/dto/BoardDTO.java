package com.yunsu1021.boardproject2.dto;

import lombok.Data;

import java.util.Date;

@Data
public class BoardDTO {

    private long board_no;
    private String board_title;
    private String board_arry;
    private String board_status;
    private String board_info;
    private String board_regi_ster;
    private Date board_regi_Date;

}
