<Query Kind="Program">
  <Output>DataGrids</Output>
</Query>

public class DrawArg {
	public int Id;
	public string ModelName;
	public string Type;
	public string Property;
}
void Main()
{
	var file = @"I:\dev\flightgear-models\aircraft\Jaguar-GR1\Models\Jaguar-GR1.xml";
	var l = File.ReadAllText(file);
	XDocument doc = null;
	try
	{
		using (var reader = new StringReader(l))
		{
			//                doc = XDocument.Load(fn, LoadOptions.SetLineInfo);
			doc = XDocument.Load(reader, LoadOptions.SetLineInfo);

		}
	}
	catch (Exception e)
	{
		if (e.Message.Contains("Version number") && e.Message.Contains("is invalid"))
		{
			//l = Regex.Replace(l, "\\?xml.*version=['\"][0-9.]*['\"]", "?xml version=\"1.0\" ");
			l = Regex.Replace(l, @"\?xml\s*version\s*=\s*['""][0-9.]+['""]", "?xml version=\"1.0\" ");
			using (var reader = new StringReader(l))
			{
				try
				{
					doc = XDocument.Load(reader, LoadOptions.SetLineInfo);
				}
				catch (Exception e1)
				{

				}
			}
		}
		//else
		//	System.Console.WriteLine("[ERROR] Invalid XML: {0} {1}", file, e.Message);
	}
	if (doc == null)
	{
		Console.WriteLine("[ERROR] Invalid XML: {0}", file, null);

	}
	else
	{
		int idx = 1;
		XPathNavigator navigator = doc.CreateNavigator();
		var nodes = doc.XPathSelectElements("//animation/type[text()='rotate']").ToList();
		nodes.AddRange(doc.XPathSelectElements("//animation/type[text()='translate']").ToList());
		nodes.AddRange(doc.XPathSelectElements("//animation/type[text()='knob']").ToList());
		var drawArgs = nodes.Select(xx =>
				new DrawArg
				{
					Id = 0,
					ModelName = xx.Parent.Element("object-name").Value,
					Type = xx.Parent.Element("type").Value,
					Property = xx.Parent.Element("property")?.Value,
					//Animation = xx.Parent,
				}).OrderBy(xx => xx.ModelName).ToList();
				foreach(var n in drawArgs)
				n.Id = idx++;
		drawArgs.Dump();
	}
}