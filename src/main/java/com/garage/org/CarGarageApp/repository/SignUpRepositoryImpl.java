package com.garage.org.CarGarageApp.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.garage.org.CarGarageApp.model.AddServiceModel;
import com.garage.org.CarGarageApp.model.Appointment;
import com.garage.org.CarGarageApp.model.CarSubModel;
import com.garage.org.CarGarageApp.model.CheckLogin;
import com.garage.org.CarGarageApp.model.CustLoginModel;
import com.garage.org.CarGarageApp.model.ImgModel;
import com.garage.org.CarGarageApp.model.SignUpModel;



@Repository("singUpRepo")
public class SignUpRepositoryImpl implements SignUpRepository {
	
	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isAddData(final SignUpModel model) {
		
		int value=template.update("insert into cust_signup values('0',?,?,?,?,?)",new PreparedStatementSetter()
				{

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						// TODO Auto-generated method stub
						ps.setString(1, model.getCname());
						ps.setString(2,model.getCemail());
						ps.setString(3,model.getCcontact());
						ps.setString(4,model.getCusername());
						ps.setString(5,model.getCpassword());
					
						
						
					}
			
				});
			
				
		
		return value>0?true:false;
	}


	@Override
	public List<CustLoginModel> isLoginData() {
		final RowMapper<CustLoginModel> rowMapper=new RowMapper<CustLoginModel>() {

			

	
	@Override
	public CustLoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		CustLoginModel l=new CustLoginModel();
		l.setCusername(rs.getString(1));
		l.setCpassword(rs.getString(2));
		return l;
	}
		};
	List<CustLoginModel>list=template.query("select cusername,cpassword from cust_signup",rowMapper);
	return list;
//		String sql = "SELECT * FROM cust_signup WHERE cusername = ? AND cpassword = ?";
//		List<CustLoginModel> list = template.query(sql, rowMapper, user, pass);
//		return list;
	}


	@Override
	public List<CheckLogin> isCheckLoginData() {
		
		final RowMapper<CheckLogin> rowMapper=new RowMapper<CheckLogin>() {

			@Override
			public CheckLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
				CheckLogin m=new CheckLogin();
				m.setCemail(rs.getString(1));
				m.setCcontact(rs.getString(2));
				return m;
			}
			
		};
		List<CheckLogin>list=template.query("select cemail,ccontact from cust_signup",rowMapper);
		return list;
		
	}


	@Override
	public boolean isAddCustData(final CarSubModel model) {
		int value=template.update("insert into services values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",new PreparedStatementSetter()
		{

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1,model.getCname());
				ps.setString(2,model.getVehicalno());
				ps.setString(3,model.getTr());
				ps.setString(4,model.getCars());
				ps.setString(5,model.getBikes());
				ps.setString(6,model.getCarsi());
				ps.setString(7, model.getOilp());
				ps.setString(8, model.getCarcle());
				ps.setString(9,model.getCarclepri() );
				ps.setString(10,model.getWheeltyp() );
				ps.setString(11,model.getQty());
				ps.setString(12, model.getWheelpri());
				ps.setString(13, model.getFb());
				ps.setString(14, model.getDt());
				ps.setString(15,model.getTm());
				
				
			}
	
		});
	
		

return value>0?true:false;
}


	@Override
	public List<AddServiceModel> getServiceRecord() {
		final RowMapper<AddServiceModel> rowMapper=new RowMapper<AddServiceModel>() {

			@Override
			public AddServiceModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				AddServiceModel m=new AddServiceModel();
				m.setId(rs.getInt(1));
				m.setBrand_name(rs.getString(2));
				m.setModel_name(rs.getString(3));
				m.setService_name(rs.getString(4));
				m.setService_price(rs.getInt(5));
				return m;
			}

			
			
		};
		List<AddServiceModel> list=template.query("select * from admin_service",rowMapper);
		return list;
		
	}


	@Override
	public boolean getDeleteRecord(final int id) {
		int val=template.update("delete from admin_service where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1,id);
				
			}
			
		});
		return val>0?true:false;
	}


	@Override
	public boolean isAddServiceData(final AddServiceModel model) {
		
		int val=template.update("insert into admin_service values('0',?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getBrand_name());
				ps.setString(2, model.getModel_name());
				ps.setString(3, model.getService_name());
				ps.setInt(4,model.getService_price() );
				
			}
			
		});
		return val>0?true:false;
	}


	@Override
	public boolean getUpdateService(final AddServiceModel model) {
		
		int val=template.update("update admin_service set brand_name=?,model_name=?,service_name=?,price=? where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				
				ps.setString(1,model.getBrand_name());
				ps.setString(2,model.getModel_name());
				ps.setString(3,model.getService_name());
				ps.setInt(4,model.getService_price());
				ps.setInt(5,model.getId());
			}
				
		});
		return val>0?true:false;
	}


	@Override
	public boolean isAddImgName(final ImgModel model) {
		int val=template.update("insert into cientimg values('0',?)",new PreparedStatementSetter(){

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getName());
				
			}
		
		});
		return val>0?true:false;
	}


	@Override
	public List<ImgModel> getImageName() {
		final RowMapper<ImgModel> rowMapper=new RowMapper<ImgModel>() {

			@Override
			public ImgModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				ImgModel m=new ImgModel();
				m.setName(rs.getString(1));
				
				return m;
			}
			
		};
		List<ImgModel>list=template.query("select imgname from cientimg",rowMapper);
		return list;
			}


	@Override
	public List<CarSubModel> getClientSerRecord() {
		final RowMapper<CarSubModel> rowMapper=new RowMapper<CarSubModel>() {

			@Override
			public CarSubModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				CarSubModel c=new CarSubModel();
				c.setCname(rs.getString(1));
				c.setVehicalno(rs.getString(2));
				c.setTr(rs.getString(3));
				c.setCars(rs.getString(4));
				c.setBikes(rs.getString(5));
				c.setCarsi(rs.getString(6));
				c.setOilp(rs.getString(7));
				c.setCarcle(rs.getString(8));
				c.setCarclepri(rs.getString(9));
				c.setWheeltyp(rs.getString(10));
				c.setQty(rs.getString(11));
				c.setWheelpri(rs.getString(12));
				c.setFb(rs.getString(13));
				c.setDt(rs.getString(14));
				c.setTm(rs.getString(15));
				return c;
			}
		
		
		};
		List<CarSubModel>list=template.query("select * from Services",rowMapper);
		return list;
}


	@Override
	public boolean delClientData(final String vno) {
		int val=template.update("delete from services where vehicalno=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, vno);
				
			}
			
		});
		return val>0?true:false;
		
	}


	@Override
	public boolean addAppointmentData(final Appointment model) {
		int val=template.update("insert into Appointment_Data values('0',?,?,?,?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getName());
				ps.setString(2, model.getModel());
				ps.setString(3, model.getService());
				ps.setString(4, model.getSubservice());
				ps.setString(5, model.getBrand());
				ps.setString(6, model.getCity());
				ps.setString(7, model.getContact());
				ps.setString(8, model.getAddress());
				
			}
			
			
		});
		return val>0?true:false;
		
	}
}

	
