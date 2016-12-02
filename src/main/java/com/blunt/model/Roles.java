package com.blunt.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ROLE")
public class Roles implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	

	@Column(name="NAME", length=15, unique=true, nullable=false)
	private String type = UserRoleType.USER.getUserProfileType();
        
       
        
    //@OneToMany(cascade = CascadeType.ALL)  
    @OneToMany(fetch = FetchType.EAGER)  
    @JoinTable(name = "users_in_role",   
        joinColumns        = {@JoinColumn(name = "roleid", referencedColumnName = "role_id")},  
        inverseJoinColumns = {@JoinColumn(name = "userid", referencedColumnName = "id")}  
    )  
    private Set<User> userRoles;

    
	
        
        
        
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Roles))
			return false;
		Roles other = (Roles) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UserProfile [id=" + id + ", type=" + type + "]";
	}

    /**
     * @return the user
     */
    public Set<User> getUser() {
        return userRoles;
    }

    /**
     * @param user the user to set
     */
    public void setUser(Set<User> user) {
        this.userRoles = user;
    }




}