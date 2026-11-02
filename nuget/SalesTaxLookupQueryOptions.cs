using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.SalesTaxLookup
{
    /// <summary>
    /// Query options for the Sales Tax Lookup API
    /// </summary>
    public class SalesTaxLookupQueryOptions
    {
        /// <summary>
        /// The zip code for which you want to get the sales tax rate. ZIP+4 (64082-1234) is accepted and priced at its 5-digit ZIP
        /// </summary>
        [JsonProperty("zip")]
        public string Zip { get; set; }
    }
}
