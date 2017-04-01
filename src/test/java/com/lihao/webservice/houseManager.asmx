<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.AIHM.com/webservices/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://www.AIHM.com/webservices/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.AIHM.com/webservices/">
      <s:element name="showMe">
        <s:complexType />
      </s:element>
      <s:element name="showMeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="showMeResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="pageHeader" type="tns:pageHeader" />
      <s:complexType name="pageHeader">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="curUser" type="tns:clsUser" />
        </s:sequence>
        <s:anyAttribute />
      </s:complexType>
      <s:complexType name="clsUser">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="workNumber" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="userType" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="userName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="sysUserDesc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="passWord" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="userCName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="orgID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="orgName" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="loginMode" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="userIP" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="dynaPSW" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="loginMessage" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="queryHouseListByCondition">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="buildingID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="colList" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strWhere" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strOrder" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseListByConditionResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="queryHouseListByConditionResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseInfoByID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseInfoByIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="queryHouseInfoByIDResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getHouseInfoByID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getHouseInfoByIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getHouseInfoByIDResult" type="tns:clsHouse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="clsHouse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="buildingID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="buildingName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="houseNO" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="certificationNum" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="houseType" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="houseTypeDesc" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="useType" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="useTypeDesc" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="houseArea" type="s:float" />
          <s:element minOccurs="0" maxOccurs="1" name="ownerName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="IDCard" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ownerMobile" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="userName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="userMobile" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="createDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="createrID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="creater" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="queryHouseUserInfoByHouseID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseUserInfoByHouseIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="queryHouseUserInfoByHouseIDResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseUserInfoByUserID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryHouseUserInfoByUserIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="queryHouseUserInfoByUserIDResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="addHouse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="buildingID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="houseNO" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="certificationNum" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ownerName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="IDCard" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ownerMobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="houseType" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="useType" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="houseArea" type="s:float" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="addHouseResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="addHouseResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="addHouseByJson">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseInfo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="addHouseByJsonResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="addHouseByJsonResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryLockMan">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="queryLockManResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="queryLockManResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="lock4Edit">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="lock4EditResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="lock4EditResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="unlock">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="unlockResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="unlockResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="updateHouseInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="houseNO" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="certificationNum" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ownerName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="IDCard" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ownerMobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="houseType" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="useType" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="houseArea" type="s:float" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="updateHouseInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="updateHouseInfoResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="updateHouseInfoByJson">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseInfo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="updateHouseInfoByJsonResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="updateHouseInfoByJsonResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="delHouseInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="houseID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="delHouseInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="delHouseInfoResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getCompany">
        <s:complexType />
      </s:element>
      <s:element name="getCompanyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getCompanyResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getCompanyCode">
        <s:complexType />
      </s:element>
      <s:element name="getCompanyCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getCompanyCodeResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="string" nillable="true" type="s:string" />
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema" />
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="clsHouse" nillable="true" type="tns:clsHouse" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="showMeSoapIn">
    <wsdl:part name="parameters" element="tns:showMe" />
  </wsdl:message>
  <wsdl:message name="showMeSoapOut">
    <wsdl:part name="parameters" element="tns:showMeResponse" />
  </wsdl:message>
  <wsdl:message name="showMepageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionSoapIn">
    <wsdl:part name="parameters" element="tns:queryHouseListByCondition" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionSoapOut">
    <wsdl:part name="parameters" element="tns:queryHouseListByConditionResponse" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDSoapIn">
    <wsdl:part name="parameters" element="tns:queryHouseInfoByID" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDSoapOut">
    <wsdl:part name="parameters" element="tns:queryHouseInfoByIDResponse" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDSoapIn">
    <wsdl:part name="parameters" element="tns:getHouseInfoByID" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDSoapOut">
    <wsdl:part name="parameters" element="tns:getHouseInfoByIDResponse" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDSoapIn">
    <wsdl:part name="parameters" element="tns:queryHouseUserInfoByHouseID" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDSoapOut">
    <wsdl:part name="parameters" element="tns:queryHouseUserInfoByHouseIDResponse" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDSoapIn">
    <wsdl:part name="parameters" element="tns:queryHouseUserInfoByUserID" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDSoapOut">
    <wsdl:part name="parameters" element="tns:queryHouseUserInfoByUserIDResponse" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="addHouseSoapIn">
    <wsdl:part name="parameters" element="tns:addHouse" />
  </wsdl:message>
  <wsdl:message name="addHouseSoapOut">
    <wsdl:part name="parameters" element="tns:addHouseResponse" />
  </wsdl:message>
  <wsdl:message name="addHousepageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonSoapIn">
    <wsdl:part name="parameters" element="tns:addHouseByJson" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonSoapOut">
    <wsdl:part name="parameters" element="tns:addHouseByJsonResponse" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="queryLockManSoapIn">
    <wsdl:part name="parameters" element="tns:queryLockMan" />
  </wsdl:message>
  <wsdl:message name="queryLockManSoapOut">
    <wsdl:part name="parameters" element="tns:queryLockManResponse" />
  </wsdl:message>
  <wsdl:message name="queryLockManpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="lock4EditSoapIn">
    <wsdl:part name="parameters" element="tns:lock4Edit" />
  </wsdl:message>
  <wsdl:message name="lock4EditSoapOut">
    <wsdl:part name="parameters" element="tns:lock4EditResponse" />
  </wsdl:message>
  <wsdl:message name="lock4EditpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="unlockSoapIn">
    <wsdl:part name="parameters" element="tns:unlock" />
  </wsdl:message>
  <wsdl:message name="unlockSoapOut">
    <wsdl:part name="parameters" element="tns:unlockResponse" />
  </wsdl:message>
  <wsdl:message name="unlockpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoSoapIn">
    <wsdl:part name="parameters" element="tns:updateHouseInfo" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoSoapOut">
    <wsdl:part name="parameters" element="tns:updateHouseInfoResponse" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfopageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonSoapIn">
    <wsdl:part name="parameters" element="tns:updateHouseInfoByJson" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonSoapOut">
    <wsdl:part name="parameters" element="tns:updateHouseInfoByJsonResponse" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonpageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoSoapIn">
    <wsdl:part name="parameters" element="tns:delHouseInfo" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoSoapOut">
    <wsdl:part name="parameters" element="tns:delHouseInfoResponse" />
  </wsdl:message>
  <wsdl:message name="delHouseInfopageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="getCompanySoapIn">
    <wsdl:part name="parameters" element="tns:getCompany" />
  </wsdl:message>
  <wsdl:message name="getCompanySoapOut">
    <wsdl:part name="parameters" element="tns:getCompanyResponse" />
  </wsdl:message>
  <wsdl:message name="getCompanypageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="getCompanyCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getCompanyCode" />
  </wsdl:message>
  <wsdl:message name="getCompanyCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getCompanyCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getCompanyCodepageHeader">
    <wsdl:part name="pageHeader" element="tns:pageHeader" />
  </wsdl:message>
  <wsdl:message name="showMeHttpGetIn" />
  <wsdl:message name="showMeHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionHttpGetIn">
    <wsdl:part name="buildingID" type="s:string" />
    <wsdl:part name="colList" type="s:string" />
    <wsdl:part name="strWhere" type="s:string" />
    <wsdl:part name="strOrder" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDHttpGetOut">
    <wsdl:part name="Body" element="tns:clsHouse" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDHttpGetIn">
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="addHouseHttpGetIn">
    <wsdl:part name="buildingID" type="s:string" />
    <wsdl:part name="houseNO" type="s:string" />
    <wsdl:part name="certificationNum" type="s:string" />
    <wsdl:part name="ownerName" type="s:string" />
    <wsdl:part name="IDCard" type="s:string" />
    <wsdl:part name="ownerMobile" type="s:string" />
    <wsdl:part name="houseType" type="s:string" />
    <wsdl:part name="useType" type="s:string" />
    <wsdl:part name="houseArea" type="s:string" />
  </wsdl:message>
  <wsdl:message name="addHouseHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonHttpGetIn">
    <wsdl:part name="houseInfo" type="s:string" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="queryLockManHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryLockManHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="lock4EditHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="lock4EditHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="unlockHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="unlockHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
    <wsdl:part name="houseNO" type="s:string" />
    <wsdl:part name="certificationNum" type="s:string" />
    <wsdl:part name="ownerName" type="s:string" />
    <wsdl:part name="IDCard" type="s:string" />
    <wsdl:part name="ownerMobile" type="s:string" />
    <wsdl:part name="houseType" type="s:string" />
    <wsdl:part name="useType" type="s:string" />
    <wsdl:part name="houseArea" type="s:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonHttpGetIn">
    <wsdl:part name="houseInfo" type="s:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoHttpGetIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getCompanyHttpGetIn" />
  <wsdl:message name="getCompanyHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getCompanyCodeHttpGetIn" />
  <wsdl:message name="getCompanyCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="showMeHttpPostIn" />
  <wsdl:message name="showMeHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionHttpPostIn">
    <wsdl:part name="buildingID" type="s:string" />
    <wsdl:part name="colList" type="s:string" />
    <wsdl:part name="strWhere" type="s:string" />
    <wsdl:part name="strOrder" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseListByConditionHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseInfoByIDHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getHouseInfoByIDHttpPostOut">
    <wsdl:part name="Body" element="tns:clsHouse" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByHouseIDHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDHttpPostIn">
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryHouseUserInfoByUserIDHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="addHouseHttpPostIn">
    <wsdl:part name="buildingID" type="s:string" />
    <wsdl:part name="houseNO" type="s:string" />
    <wsdl:part name="certificationNum" type="s:string" />
    <wsdl:part name="ownerName" type="s:string" />
    <wsdl:part name="IDCard" type="s:string" />
    <wsdl:part name="ownerMobile" type="s:string" />
    <wsdl:part name="houseType" type="s:string" />
    <wsdl:part name="useType" type="s:string" />
    <wsdl:part name="houseArea" type="s:string" />
  </wsdl:message>
  <wsdl:message name="addHouseHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonHttpPostIn">
    <wsdl:part name="houseInfo" type="s:string" />
  </wsdl:message>
  <wsdl:message name="addHouseByJsonHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="queryLockManHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="queryLockManHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="lock4EditHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="lock4EditHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="unlockHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="unlockHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
    <wsdl:part name="houseNO" type="s:string" />
    <wsdl:part name="certificationNum" type="s:string" />
    <wsdl:part name="ownerName" type="s:string" />
    <wsdl:part name="IDCard" type="s:string" />
    <wsdl:part name="ownerMobile" type="s:string" />
    <wsdl:part name="houseType" type="s:string" />
    <wsdl:part name="useType" type="s:string" />
    <wsdl:part name="houseArea" type="s:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonHttpPostIn">
    <wsdl:part name="houseInfo" type="s:string" />
  </wsdl:message>
  <wsdl:message name="updateHouseInfoByJsonHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoHttpPostIn">
    <wsdl:part name="houseID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="delHouseInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getCompanyHttpPostIn" />
  <wsdl:message name="getCompanyHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getCompanyCodeHttpPostIn" />
  <wsdl:message name="getCompanyCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:portType name="houseManagerSoap">
    <wsdl:operation name="showMe">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取服务集的名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=showMe'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:showMeSoapIn" />
      <wsdl:output message="tns:showMeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">按指定条件获取指定楼栋的房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseListByCondition'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseListByConditionSoapIn" />
      <wsdl:output message="tns:queryHouseListByConditionSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回结果集&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseInfoByIDSoapIn" />
      <wsdl:output message="tns:queryHouseInfoByIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回对象&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.getHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getHouseInfoByIDSoapIn" />
      <wsdl:output message="tns:getHouseInfoByIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据房屋ID获取住户列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByHouseID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByHouseIDSoapIn" />
      <wsdl:output message="tns:queryHouseUserInfoByHouseIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据用户ID获取房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByUserID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByUserIDSoapIn" />
      <wsdl:output message="tns:queryHouseUserInfoByUserIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouse'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseSoapIn" />
      <wsdl:output message="tns:addHouseSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouseByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseByJsonSoapIn" />
      <wsdl:output message="tns:addHouseByJsonSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">查询指定房屋是否有人正在编辑&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryLockMan'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryLockManSoapIn" />
      <wsdl:output message="tns:queryLockManSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">锁定房屋编辑,避免冲突&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.lock4Edit'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:lock4EditSoapIn" />
      <wsdl:output message="tns:lock4EditSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">释放房屋编辑锁&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.unlock'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:unlockSoapIn" />
      <wsdl:output message="tns:unlockSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoSoapIn" />
      <wsdl:output message="tns:updateHouseInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfoByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoByJsonSoapIn" />
      <wsdl:output message="tns:updateHouseInfoByJsonSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">删除房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.delHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:delHouseInfoSoapIn" />
      <wsdl:output message="tns:delHouseInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompany'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanySoapIn" />
      <wsdl:output message="tns:getCompanySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位代码&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompanyCode'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanyCodeSoapIn" />
      <wsdl:output message="tns:getCompanyCodeSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="houseManagerHttpGet">
    <wsdl:operation name="showMe">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取服务集的名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=showMe'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:showMeHttpGetIn" />
      <wsdl:output message="tns:showMeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">按指定条件获取指定楼栋的房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseListByCondition'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseListByConditionHttpGetIn" />
      <wsdl:output message="tns:queryHouseListByConditionHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回结果集&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseInfoByIDHttpGetIn" />
      <wsdl:output message="tns:queryHouseInfoByIDHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回对象&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.getHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getHouseInfoByIDHttpGetIn" />
      <wsdl:output message="tns:getHouseInfoByIDHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据房屋ID获取住户列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByHouseID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByHouseIDHttpGetIn" />
      <wsdl:output message="tns:queryHouseUserInfoByHouseIDHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据用户ID获取房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByUserID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByUserIDHttpGetIn" />
      <wsdl:output message="tns:queryHouseUserInfoByUserIDHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouse'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseHttpGetIn" />
      <wsdl:output message="tns:addHouseHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouseByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseByJsonHttpGetIn" />
      <wsdl:output message="tns:addHouseByJsonHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">查询指定房屋是否有人正在编辑&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryLockMan'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryLockManHttpGetIn" />
      <wsdl:output message="tns:queryLockManHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">锁定房屋编辑,避免冲突&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.lock4Edit'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:lock4EditHttpGetIn" />
      <wsdl:output message="tns:lock4EditHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">释放房屋编辑锁&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.unlock'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:unlockHttpGetIn" />
      <wsdl:output message="tns:unlockHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoHttpGetIn" />
      <wsdl:output message="tns:updateHouseInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfoByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoByJsonHttpGetIn" />
      <wsdl:output message="tns:updateHouseInfoByJsonHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">删除房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.delHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:delHouseInfoHttpGetIn" />
      <wsdl:output message="tns:delHouseInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompany'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanyHttpGetIn" />
      <wsdl:output message="tns:getCompanyHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位代码&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompanyCode'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanyCodeHttpGetIn" />
      <wsdl:output message="tns:getCompanyCodeHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="houseManagerHttpPost">
    <wsdl:operation name="showMe">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取服务集的名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=showMe'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:showMeHttpPostIn" />
      <wsdl:output message="tns:showMeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">按指定条件获取指定楼栋的房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseListByCondition'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseListByConditionHttpPostIn" />
      <wsdl:output message="tns:queryHouseListByConditionHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回结果集&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseInfoByIDHttpPostIn" />
      <wsdl:output message="tns:queryHouseInfoByIDHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取指定编号的房屋信息，返回对象&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.getHouseInfoByID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getHouseInfoByIDHttpPostIn" />
      <wsdl:output message="tns:getHouseInfoByIDHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据房屋ID获取住户列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByHouseID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByHouseIDHttpPostIn" />
      <wsdl:output message="tns:queryHouseUserInfoByHouseIDHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">根据用户ID获取房屋列表&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryHouseUserInfoByUserID'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryHouseUserInfoByUserIDHttpPostIn" />
      <wsdl:output message="tns:queryHouseUserInfoByUserIDHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouse'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseHttpPostIn" />
      <wsdl:output message="tns:addHouseHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">添加房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.addHouseByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:addHouseByJsonHttpPostIn" />
      <wsdl:output message="tns:addHouseByJsonHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">查询指定房屋是否有人正在编辑&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.queryLockMan'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:queryLockManHttpPostIn" />
      <wsdl:output message="tns:queryLockManHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">锁定房屋编辑,避免冲突&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.lock4Edit'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:lock4EditHttpPostIn" />
      <wsdl:output message="tns:lock4EditHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">释放房屋编辑锁&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.unlock'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:unlockHttpPostIn" />
      <wsdl:output message="tns:unlockHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoHttpPostIn" />
      <wsdl:output message="tns:updateHouseInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">更新房屋基本信息。使用Json字符串传送房屋信息&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.updateHouseInfoByJson'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:updateHouseInfoByJsonHttpPostIn" />
      <wsdl:output message="tns:updateHouseInfoByJsonHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">删除房屋&lt;br /&gt;&lt;a href='../../SDK/PPM/Interface-houseManager.html?jump=houseManager.delHouseInfo'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:delHouseInfoHttpPostIn" />
      <wsdl:output message="tns:delHouseInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位名称&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompany'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanyHttpPostIn" />
      <wsdl:output message="tns:getCompanyHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">获取单位代码&lt;br /&gt;&lt;a href='../../SDK/System/Interface-virtual.html?jump=getCompanyCode'&gt;SDK说明&lt;/a&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCompanyCodeHttpPostIn" />
      <wsdl:output message="tns:getCompanyCodeHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="houseManagerSoap" type="tns:houseManagerSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="showMe">
      <soap:operation soapAction="http://www.AIHM.com/webservices/showMe" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:showMepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <soap:operation soapAction="http://www.AIHM.com/webservices/queryHouseListByCondition" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:queryHouseListByConditionpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <soap:operation soapAction="http://www.AIHM.com/webservices/queryHouseInfoByID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:queryHouseInfoByIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <soap:operation soapAction="http://www.AIHM.com/webservices/getHouseInfoByID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:getHouseInfoByIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <soap:operation soapAction="http://www.AIHM.com/webservices/queryHouseUserInfoByHouseID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:queryHouseUserInfoByHouseIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <soap:operation soapAction="http://www.AIHM.com/webservices/queryHouseUserInfoByUserID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:queryHouseUserInfoByUserIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <soap:operation soapAction="http://www.AIHM.com/webservices/addHouse" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:addHousepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <soap:operation soapAction="http://www.AIHM.com/webservices/addHouseByJson" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:addHouseByJsonpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <soap:operation soapAction="http://www.AIHM.com/webservices/queryLockMan" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:queryLockManpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <soap:operation soapAction="http://www.AIHM.com/webservices/lock4Edit" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:lock4EditpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <soap:operation soapAction="http://www.AIHM.com/webservices/unlock" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:unlockpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <soap:operation soapAction="http://www.AIHM.com/webservices/updateHouseInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:updateHouseInfopageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <soap:operation soapAction="http://www.AIHM.com/webservices/updateHouseInfoByJson" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:updateHouseInfoByJsonpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <soap:operation soapAction="http://www.AIHM.com/webservices/delHouseInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:delHouseInfopageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <soap:operation soapAction="http://www.AIHM.com/webservices/getCompany" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:getCompanypageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <soap:operation soapAction="http://www.AIHM.com/webservices/getCompanyCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:getCompanyCodepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="houseManagerSoap12" type="tns:houseManagerSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="showMe">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/showMe" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:showMepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/queryHouseListByCondition" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:queryHouseListByConditionpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/queryHouseInfoByID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:queryHouseInfoByIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/getHouseInfoByID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:getHouseInfoByIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/queryHouseUserInfoByHouseID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:queryHouseUserInfoByHouseIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/queryHouseUserInfoByUserID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:queryHouseUserInfoByUserIDpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/addHouse" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:addHousepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/addHouseByJson" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:addHouseByJsonpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/queryLockMan" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:queryLockManpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/lock4Edit" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:lock4EditpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/unlock" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:unlockpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/updateHouseInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:updateHouseInfopageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/updateHouseInfoByJson" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:updateHouseInfoByJsonpageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/delHouseInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:delHouseInfopageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/getCompany" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:getCompanypageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <soap12:operation soapAction="http://www.AIHM.com/webservices/getCompanyCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:getCompanyCodepageHeader" part="pageHeader" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="houseManagerHttpGet" type="tns:houseManagerHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="showMe">
      <http:operation location="/showMe" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <http:operation location="/queryHouseListByCondition" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <http:operation location="/queryHouseInfoByID" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <http:operation location="/getHouseInfoByID" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <http:operation location="/queryHouseUserInfoByHouseID" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <http:operation location="/queryHouseUserInfoByUserID" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <http:operation location="/addHouse" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <http:operation location="/addHouseByJson" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <http:operation location="/queryLockMan" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <http:operation location="/lock4Edit" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <http:operation location="/unlock" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <http:operation location="/updateHouseInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <http:operation location="/updateHouseInfoByJson" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <http:operation location="/delHouseInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <http:operation location="/getCompany" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <http:operation location="/getCompanyCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="houseManagerHttpPost" type="tns:houseManagerHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="showMe">
      <http:operation location="/showMe" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseListByCondition">
      <http:operation location="/queryHouseListByCondition" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseInfoByID">
      <http:operation location="/queryHouseInfoByID" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getHouseInfoByID">
      <http:operation location="/getHouseInfoByID" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByHouseID">
      <http:operation location="/queryHouseUserInfoByHouseID" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryHouseUserInfoByUserID">
      <http:operation location="/queryHouseUserInfoByUserID" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouse">
      <http:operation location="/addHouse" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="addHouseByJson">
      <http:operation location="/addHouseByJson" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="queryLockMan">
      <http:operation location="/queryLockMan" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="lock4Edit">
      <http:operation location="/lock4Edit" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="unlock">
      <http:operation location="/unlock" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfo">
      <http:operation location="/updateHouseInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="updateHouseInfoByJson">
      <http:operation location="/updateHouseInfoByJson" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="delHouseInfo">
      <http:operation location="/delHouseInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompany">
      <http:operation location="/getCompany" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCompanyCode">
      <http:operation location="/getCompanyCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="houseManager">
    <wsdl:port name="houseManagerSoap" binding="tns:houseManagerSoap">
      <soap:address location="http://192.168.2.254:50001/PPM/houseManager.asmx" />
    </wsdl:port>
    <wsdl:port name="houseManagerSoap12" binding="tns:houseManagerSoap12">
      <soap12:address location="http://192.168.2.254:50001/PPM/houseManager.asmx" />
    </wsdl:port>
    <wsdl:port name="houseManagerHttpGet" binding="tns:houseManagerHttpGet">
      <http:address location="http://192.168.2.254:50001/PPM/houseManager.asmx" />
    </wsdl:port>
    <wsdl:port name="houseManagerHttpPost" binding="tns:houseManagerHttpPost">
      <http:address location="http://192.168.2.254:50001/PPM/houseManager.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>