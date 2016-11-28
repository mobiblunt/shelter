/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import org.hibernate.annotations.Type;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="USER")
public class User implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

	
	@NotEmpty
	@Column(name="PASSWORD", nullable=false)
	private String password;
	
        @NotEmpty
        @Transient
        private String confPassword;
        
        
	@NotEmpty
	@Column(name="FIRST_NAME", nullable=false)
	private String firstName;

	@NotEmpty
	@Column(name="LAST_NAME", nullable=false)
	private String lastName;

	@NotEmpty
	@Column(name="GENDER", nullable=false)
	private String gender;

	@NotNull
	@Column(name="DATE_OF_BIRTH", nullable=false)
        //@DateTimeFormat(pattern = "dd-MM-yyyy")
        @Type(type="date")
	private Date dateOfBirth;

	@NotEmpty
	@Column(name="EMAIL", nullable=false)
	private String email;

	@NotEmpty
	@Column(name="MOBILE_PHONE", nullable=false)
	private String mobilePhone;

	@NotEmpty
	@Column(name="CITY", nullable=false)
	private String city;

	@NotEmpty
	@Column(name="STATE", nullable=false)
	private String state;

	@NotEmpty
	@Column(name="COUNTRY", nullable=false)
	private String country;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateOfBirth() {
        return dateOfBirth;
    }

    
    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
        return city;
    }

    
    public void setCity(String city) {
        this.city = city;
    }

    
    public String getState() {
        return state;
    }

    
    public void setState(String state) {
        this.state = state;
    }

    
    public String getCountry() {
        return country;
    }

    
    public void setCountry(String country) {
        this.country = country;
    }

	

	@Override
	public int hashCode() {
        return firstName != null ? firstName.hashCode() : 0;
        }

	@Override
	public boolean equals(Object obj) {
            if (this == obj) {
            return true;
            }
            if (!(obj instanceof User)) {
            return false;
            }
            User user = (User) obj;
            if (firstName != null ? !firstName.equals(user.firstName): user.firstName != null) {
            return false;
            } else {
            return true;
            }
        }

	/*
	 * DO-NOT-INCLUDE passwords in toString function.
	 * It is done here just for convenience purpose.
	 */
	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName+ ", lastName=" + lastName
				+ ", email=" + email + "]";
	}

    /**
     * @return the confPassword
     */
    public String getConfPassword() {
        return confPassword;
    }

    /**
     * @param confPassword the confPassword to set
     */
    public void setConfPassword(String confPassword) {
        this.confPassword = confPassword;
    }


	
}