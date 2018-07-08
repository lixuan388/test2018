package com.ecity.java.web.taobao.test;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.internal.util.StringUtils;
import com.taobao.api.request.AlitripTravelItemSingleQueryRequest;
import com.taobao.api.request.AlitripTravelNormalvisaGetdetailRequest;
import com.taobao.api.request.AlitripTravelTradesSearchRequest;
import com.taobao.api.response.AlitripTravelItemSingleQueryResponse;
import com.taobao.api.response.AlitripTravelNormalvisaGetdetailResponse;
import com.taobao.api.response.AlitripTravelTradesSearchResponse;

public class TaobaoAlitripTravelItemSingleQuery {
	
//	static String url="https://gw.api.tbsandbox.com/router/rest";
//	static String appkey="1025010520";
//	static String secret="sandbox984852c29d3c2dbcedabbf663";
//	static String sessionKey="6101a18fc737ad68e53c63516710d664888b94ee46498b03651880377";
	

	static String url="https://eco.taobao.com/router/rest";
	static String appkey="25010520";
	static String secret="364d468984852c29d3c2dbcedabbf663";
	static String sessionKey="6102915871653ad7217f8c61ba7e6eeb8e1867c5b7904e54059312230";
	
	
	public static void main(String[] args) {
//		TaobaoClient client = new DefaultTaobaoClient("url", "appkey", "secret");
//		AlitripTravelItemSingleQueryRequest req = new AlitripTravelItemSingleQueryRequest();
//		req.setItemId(1234L);
//		req.setOutProductId("1111");
//		AlitripTravelItemSingleQueryResponse rsp = null;
//		try {
//			rsp = client.execute(req, "sessionKey");
//		} catch (ApiException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(rsp.getBody());
		AlitripTravelTradesSearch();
	}
	
	
	public static void AlitripTravelTradesSearch()
	{
	
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlitripTravelTradesSearchRequest req = new AlitripTravelTradesSearchRequest();
		req.setPageSize(20L);
		req.setEndCreatedTime(StringUtils.parseDateTime("2016-01-01 12:00:00"));
		req.setOrderStatus(1L);
		req.setCurrentPage(1L);
		req.setStartCreatedTime(StringUtils.parseDateTime("2018-09-01 00:00:00"));
		AlitripTravelTradesSearchResponse rsp = null;
		try {
			rsp = client.execute(req, sessionKey);
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(rsp.getBody());
	}
	
	public static void AlitripTravelNormalvisaGetdetail()
	{
	
		TaobaoClient client = new DefaultTaobaoClient("url", "appkey", "secret");
		AlitripTravelNormalvisaGetdetailRequest req = new AlitripTravelNormalvisaGetdetailRequest();
		req.setBizOrderId(1234L);
		AlitripTravelNormalvisaGetdetailResponse rsp = null;
		try {
			rsp = client.execute(req, "sessionKey");
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(rsp.getBody());
	}
	
	

	
	
	
}
