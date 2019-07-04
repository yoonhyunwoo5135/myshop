package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
		DBConnectionMgr mgr;

	public ProductDAO() {
	      mgr = DBConnectionMgr.getInstance();
	   }
	
	public ProductDTO insert(ProductDTO dto) {
		
		try {
			con = mgr.getConnection();
		String sql = "insert into product values(?,?,?,?)";
		ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getName());
		ps.setString(3, dto.getContent());
		ps.setString(4, dto.getPrice());
		
		ps.executeUpdate();
		
		int fail = 1;
		dto.setFail(fail);
		}
		
		catch (Exception e) {
			int fail = 0;
			dto.setFail(fail);
		}
		
		return dto;
	}
	public ProductDTO update(ProductDTO dto) {
		
		try {
			con = mgr.getConnection();
			String sql = "update product set id = ?, name = ?, content = ?, price = ? where id = ?";
			ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getContent());
			ps.setString(4, dto.getPrice());
			ps.setString(5, dto.getKeyId());
			
			ps.executeUpdate();
			
			int fail = 1;
			dto.setFail(fail);
		}
		
		catch (Exception e) {
			int fail = 0;
			dto.setFail(fail);
		}
		
		return dto;
	}
	public ProductDTO delete(ProductDTO dto) {
		
		try {
			con = mgr.getConnection();
			String sql = "delete from product where id = ?";
			ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			
			ps.executeUpdate();
			
			int fail = 1;
			dto.setFail(fail);
		}
		
		catch (Exception e) {
			int fail = 0;
			dto.setFail(fail);
		}
		
		return dto;
	}
	public ProductDTO select(ProductDTO dto) {
		
		try {
			con = mgr.getConnection();
		String sql = "select * from product where id = ?";
		ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		
		rs = ps.executeQuery();
		
		while(rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(2);
			String content = rs.getString(3);
			String price = rs.getString(4);
			
			dto.setId(id);
			dto.setName(name);
			dto.setContent(content);
			dto.setPrice(price);
			
		}
		
		int fail = 1;
		dto.setFail(fail);
		}
		
		catch (Exception e) {
			int fail = 0;
			dto.setFail(fail);
		}
		
		return dto;
	}
	public ArrayList<ProductDTO> selectAll(ProductDTO dto) {
			ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
			ProductDTO dto2 = new ProductDTO();
			try {
				con = mgr.getConnection();
			String sql = "select * from product";
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				dto2 = new ProductDTO();
				String id = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				String price = rs.getString(4);
				
				dto2.setId(id);
				dto2.setName(name);
				dto2.setContent(content);
				dto2.setPrice(price);
				
				list.add(dto2);
			}
			
			int fail = 1;
			dto.setFail(fail);
			}
			
			catch (Exception e) {
				int fail = 0;
				dto.setFail(fail);
			}
			finally {
				try {
					rs.close();
					ps.close();
					con.close();
					mgr.freeConnection(con, ps, rs);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return list;
		}
}
