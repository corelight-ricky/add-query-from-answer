module DNS;

event dns_query_reply(c: connection, msg: dns_msg, query: string, qtype: count, qclass: count)
{
	if(!c?$dns)
		return;

	if(!c$dns?$query)
		c$dns$query = query;
}

