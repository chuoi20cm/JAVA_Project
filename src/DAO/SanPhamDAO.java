/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.SanPhamDTO;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class SanPhamDAO {

    public SanPhamDAO() {
    }
    private SqlServerConnect con = new SqlServerConnect();

    public ArrayList<SanPhamDTO> list() {
        ArrayList<SanPhamDTO> dssp = new ArrayList<>();
        try {
            String sql = "SELECT * FROM SANPHAM WHERE TINHTRANG=1";
            ResultSet rs = con.executeQuery(sql);
            while (rs.next()) {

                String maSp = rs.getString("MASP");
                String tenSP = rs.getString("TENSP");
                Double giaban = rs.getDouble("GIABAN");
                int soluong = rs.getInt("SOLUONG");
                String dvt = rs.getString("DVT");
                String nsx = rs.getString("NSX");
                String maloai = rs.getString("MALOAI");

                SanPhamDTO n = new SanPhamDTO(maSp, tenSP, giaban, soluong, dvt, nsx, maloai);
                dssp.add(n);
            }
            rs.close();
            con.disConnect();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return dssp;
    }

    public void add(SanPhamDTO a) {
        String sql = "INSERT INTO SANPHAM VALUES (";
        sql += "'" + a.getMaSP() + "',";
        sql += "N'" + a.getTenSP() + "',";
        sql += "'" + a.getGiaban() + "',";
        sql += "'" + a.getSoluong() + "',";
        sql += "N'" + a.getDvt() + "',";
        sql += "N'" + a.getNsx() + "',";
        sql += "'" + a.getMaloai() + "',";
        sql += "'1')";
        System.out.println(sql);
        con.executeUpdate(sql);

    }

    public void addTrung(SanPhamDTO a) {
        try {
            String sql_check_sp = "SELECT * FROM sanpham WHERE TINHTRANG=0";
            ResultSet rs = con.executeQuery(sql_check_sp);
            while (rs.next()) {
                String masp_cu = rs.getString("MASP");
                System.out.println(masp_cu);
                if (!masp_cu.equals(a.getTenSP())) {
                    String sql = "UPDATE SANPHAM SET ";
                    sql += "TENSP=N'" + a.getTenSP() + "' ,";
                    sql += "GIABAN='" + a.getGiaban() + "', ";
                    sql += "SOLUONG='" + a.getSoluong() + "', ";
                    sql += "DVT=N'" + a.getDvt() + "' ,";
                    sql += "NSX=N'" + a.getNsx() + "', ";
                    sql += "MALOAI=N'" + a.getMaloai() + "', ";
                    sql += "TINHTRANG='1'";
                    sql += " WHERE MASP='" + a.getMaSP() + "'";
                    System.out.println(sql);
                    con.executeUpdate(sql);
                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void set(SanPhamDTO a) {

        String sql = "UPDATE SANPHAM SET ";
        sql += "TENSP=N'" + a.getTenSP() + "' ,";
        sql += "GIABAN='" + a.getGiaban() + "', ";
        sql += "SOLUONG='" + a.getSoluong() + "', ";
        sql += "DVT=N'" + a.getDvt() + "' ,";
        sql += "NSX=N'" + a.getNsx() + "', ";
        sql += "MALOAI=N'" + a.getMaloai() + "', ";
        sql += "TINHTRANG='1'";
        sql += " WHERE MASP='" + a.getMaSP() + "'";
        System.out.println(sql);
        con.executeUpdate(sql);
    }

    public void delete(String a) {
        String sql = "UPDATE SANPHAM SET TINHTRANG = 0 WHERE MASP='" + a + "'";
        con.executeUpdate(sql);
        System.out.println(sql);

    }

    public void ExportExcelDatabase() {
        try {

            String sql = "SELECT * FROM SANPHAM WHERE TINHTRANG=1";
            ResultSet rs = con.executeQuery(sql);
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet("SanphamExcel");

            XSSFCellStyle style = workbook.createCellStyle();

            XSSFRow row = sheet.createRow(0);
            XSSFCell cell;

            cell = row.createCell(0);
            cell.setCellValue("MASP");
            cell.setCellStyle(style);
            cell = row.createCell(1);
            cell.setCellValue("TENSP");
            cell.setCellStyle(style);

            cell = row.createCell(2);
            cell.setCellValue("GIABAN");
            cell.setCellStyle(style);

            cell = row.createCell(3);
            cell.setCellValue("SOLUONG");
            cell.setCellStyle(style);

            cell = row.createCell(4);
            cell.setCellValue("DONVITINH");
            cell.setCellStyle(style);
            cell = row.createCell(5);
            cell.setCellValue("NSX");
            cell.setCellStyle(style);

            cell = row.createCell(6);
            cell.setCellValue("MALOAI");
            cell.setCellStyle(style);

            int i = 1;

            while (rs.next()) {
                String maSp = rs.getString("MASP");
                String tenSP = rs.getString("TENSP");
                Double giaban = rs.getDouble("GIABAN");
                int soluong = rs.getInt("SOLUONG");
                String dvt = rs.getString("DVT");
                String nsx = rs.getString("NSX");
                String maloai = rs.getString("MALOAI");

                row = sheet.createRow(i);
                cell = row.createCell(0);
                cell.setCellValue(maSp);
                cell = row.createCell(1);
                cell.setCellValue(tenSP);
                cell = row.createCell(2);
                cell.setCellValue(giaban);
                cell = row.createCell(3);
                cell.setCellValue(soluong);
                cell = row.createCell(4);
                cell.setCellValue(dvt);
                cell = row.createCell(5);
                cell.setCellValue(nsx);
                cell = row.createCell(6);
                cell.setCellValue(maloai);

                i++;
            }

            for (int col = 0; col < row.getLastCellNum(); col++) {
                sheet.autoSizeColumn((short) (col));
            }
            JFileChooser chooser = new JFileChooser();
            chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
            chooser.setAcceptAllFileFilterUsed(false);
            if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
                int count = 0;
                File ex = new File(chooser.getSelectedFile() + "/sanphamExcel.xlsx");
                while (ex.exists()) {
                    String s = "ssanphamExcel.xlsx";
                    String[] parts = s.split(".", 2);
                    String path = parts[1];
                    ex = new File(chooser.getSelectedFile() + "/" + "(" + (count++) + ")" + path);
                }
                FileOutputStream out = new FileOutputStream(ex);
                out = new FileOutputStream(ex);
                workbook.write(out);
                JOptionPane.showMessageDialog(null,"Xuất thành công!");
                out.close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void ImportExcelDatabase() {
        try {

            JFileChooser fc = new JFileChooser();

            FileNameExtensionFilter filter = new FileNameExtensionFilter(
                    "Excel", "xlsx");
            fc.setFileFilter(filter);
            File file = fc.getSelectedFile();
            if (fc.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
                file = fc.getSelectedFile();
            }

            FileInputStream in = new FileInputStream(file);
            XSSFWorkbook workbook = new XSSFWorkbook(in);
            XSSFSheet sheet = workbook.getSheetAt(0);
            Row row;

            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
                row = sheet.getRow(i);
                String maSP = row.getCell(0).getStringCellValue();
                String tenSP = row.getCell(1).getStringCellValue();

                int gia = (int) row.getCell(2).getNumericCellValue();
                int sl_nhap = (int) row.getCell(3).getNumericCellValue();
                String dvt = row.getCell(4).getStringCellValue();
                String nsx = row.getCell(5).getStringCellValue();
                String maloai = row.getCell(6).getStringCellValue();

                String sql_check = "SELECT * FROM SANPHAM WHERE MASP='" + maSP + "'";
                ResultSet rs = con.executeQuery(sql_check);
                if (!rs.next()) {
                    String sql = "INSERT INTO SANPHAM (MASP,TENSP,GIABAN,SOLUONG,DVT,NSX,MALOAI,TINHTRANG)VALUES (";
                    sql += "'" + maSP + "',";
                    sql += "N'" + tenSP + "',";
                    sql += "'" + gia + "',";
                    sql += "'" + sl_nhap + "',";
                    sql += "N'" + dvt + "',";
                    sql += "N'" + nsx + "',";
                    sql += "'" + maloai + "',";
                    sql += "'1')";
                    con.executeUpdate(sql);
                } else {
                    String sql = "UPDATE SANPHAM SET ";
                    sql += "TENSP=N'" + tenSP + "', ";
                    sql += "GIABAN='" + gia + "', ";
                    sql += "SOLUONG='" + sl_nhap + "', ";
                    sql += "DVT=N'" + dvt + "', ";
                    sql += "NSX=N'" + nsx + "', ";
                    sql += "MALOAI=N'" + maloai + "', ";
                    sql += "TINHTRANG='1'";
                    sql += "WHERE MASP='" + maSP + "' OR MASP='"+maSP+1+ "';";
                    con.executeUpdate(sql);
                }
            }
            JOptionPane.showMessageDialog(null,"Thêm thành công!");
            in.close();

        } catch (FileNotFoundException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException | SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        
    }
}
