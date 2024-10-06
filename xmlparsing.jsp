package com.demojsp;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XmlParsing {
	public static void main(String[] args) {
      try {
    	  File inputfile=new File("books.xml");
    	  DocumentBuilderFactory  dbfactory=DocumentBuilderFactory.newInstance();
    	  DocumentBuilder dbbuilder=dbfactory.newDocumentBuilder();
    	  Document doc=dbbuilder.parse(inputfile);
    	  doc.getDocumentElement().normalize();
    	  NodeList nlist=doc.getElementsByTagName("books");
    	  for(int i=0;i<nlist.getLength();i++) {
    		Node nnode=nlist.item(i);
    		Element ele=(Element)nnode;
    		System.out.println("title:"+ele.getElementsByTagName("title").item(0).getTextContent());
    		System.out.println("author:"+ele.getElementsByTagName("author").item(0).getTextContent());
    		System.out.println("price:"+ele.getElementsByTagName("price").item(0).getTextContent());
    		//System.out.println("address:"+ele.getElementsByTagName("address").item(0).getTextContent());

    		System.out.println();
    	  }
    	  
//    	  
//    	  NodeList addressList = book.getElementsByTagName("address");
//          if (addressList.getLength() > 0) {
//              Element address = (Element) addressList.item(0);
//              System.out.println("Address: ");
//              System.out.println("  Street: " + address.getElementsByTagName("street").item(0).getTextContent());
//              System.out.println("  Landmark: " + address.getElementsByTagName("landmark").item(0).getTextContent());
//              System.out.println("  Pincode: " + address.getElementsByTagName("pincode").item(0).getTextContent());
//          } else {
//              System.out.println("Address: Not Available");
         // }
      }catch(Exception e) {
    	  e.printStackTrace();
      }
	}
}