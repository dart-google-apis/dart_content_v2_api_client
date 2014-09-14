part of content_v2_api;

class Account {

  /** Indicates whether the merchant sells adult content. */
  core.bool adultContent;

  /** List of linked AdWords accounts. */
  core.List<AccountAdwordsLink> adwordsLinks;

  /** Merchant Center account ID. */
  core.String id;

  /** Identifies what kind of resource this is. Value: the fixed string "content#account". */
  core.String kind;

  /** Display name for the account. */
  core.String name;

  /** URL for individual seller reviews, i.e., reviews for each child account. */
  core.String reviewsUrl;

  /** Client-specific, locally-unique, internal ID for the child account. */
  core.String sellerId;

  /** Users with access to the account. Every account (except for subaccounts) must have at least one admin user. */
  core.List<AccountUser> users;

  /** The merchant's website. */
  core.String websiteUrl;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("adultContent")) {
      adultContent = json["adultContent"];
    }
    if (json.containsKey("adwordsLinks")) {
      adwordsLinks = json["adwordsLinks"].map((adwordsLinksItem) => new AccountAdwordsLink.fromJson(adwordsLinksItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("reviewsUrl")) {
      reviewsUrl = json["reviewsUrl"];
    }
    if (json.containsKey("sellerId")) {
      sellerId = json["sellerId"];
    }
    if (json.containsKey("users")) {
      users = json["users"].map((usersItem) => new AccountUser.fromJson(usersItem)).toList();
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (adultContent != null) {
      output["adultContent"] = adultContent;
    }
    if (adwordsLinks != null) {
      output["adwordsLinks"] = adwordsLinks.map((adwordsLinksItem) => adwordsLinksItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (reviewsUrl != null) {
      output["reviewsUrl"] = reviewsUrl;
    }
    if (sellerId != null) {
      output["sellerId"] = sellerId;
    }
    if (users != null) {
      output["users"] = users.map((usersItem) => usersItem.toJson()).toList();
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountAdwordsLink {

  /** Customer ID of the AdWords account. */
  core.String adwordsId;

  /** Status of the link between this Merchant Center account and the AdWords account. */
  core.String status;

  /** Create new AccountAdwordsLink from JSON data */
  AccountAdwordsLink.fromJson(core.Map json) {
    if (json.containsKey("adwordsId")) {
      adwordsId = json["adwordsId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for AccountAdwordsLink */
  core.Map toJson() {
    var output = new core.Map();

    if (adwordsId != null) {
      output["adwordsId"] = adwordsId;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of AccountAdwordsLink */
  core.String toString() => JSON.encode(this.toJson());

}

/** The status of an account, i.e., information about its products, which is computed offline and not returned immediately at insertion time. */
class AccountStatus {

  /** The ID of the account for which the status is reported. */
  core.String accountId;

  /** A list of data quality issues. */
  core.List<AccountStatusDataQualityIssue> dataQualityIssues;

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountStatus". */
  core.String kind;

  /** Create new AccountStatus from JSON data */
  AccountStatus.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("dataQualityIssues")) {
      dataQualityIssues = json["dataQualityIssues"].map((dataQualityIssuesItem) => new AccountStatusDataQualityIssue.fromJson(dataQualityIssuesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (dataQualityIssues != null) {
      output["dataQualityIssues"] = dataQualityIssues.map((dataQualityIssuesItem) => dataQualityIssuesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountStatus */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountStatusDataQualityIssue {

  /** Country for which this issue is reported. */
  core.String country;

  /** Actual value displayed on the landing page. */
  core.String displayedValue;

  /** Example items featuring the issue. */
  core.List<AccountStatusExampleItem> exampleItems;

  /** Issue identifier. */
  core.String id;

  /** Last time the account was checked for this issue. */
  core.String lastChecked;

  /** Number of items in the account found to have the said issue. */
  core.int numItems;

  /** Severity of the problem. */
  core.String severity;

  /** Submitted value that causes the issue. */
  core.String submittedValue;

  /** Create new AccountStatusDataQualityIssue from JSON data */
  AccountStatusDataQualityIssue.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("displayedValue")) {
      displayedValue = json["displayedValue"];
    }
    if (json.containsKey("exampleItems")) {
      exampleItems = json["exampleItems"].map((exampleItemsItem) => new AccountStatusExampleItem.fromJson(exampleItemsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastChecked")) {
      lastChecked = json["lastChecked"];
    }
    if (json.containsKey("numItems")) {
      numItems = json["numItems"];
    }
    if (json.containsKey("severity")) {
      severity = json["severity"];
    }
    if (json.containsKey("submittedValue")) {
      submittedValue = json["submittedValue"];
    }
  }

  /** Create JSON Object for AccountStatusDataQualityIssue */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (displayedValue != null) {
      output["displayedValue"] = displayedValue;
    }
    if (exampleItems != null) {
      output["exampleItems"] = exampleItems.map((exampleItemsItem) => exampleItemsItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastChecked != null) {
      output["lastChecked"] = lastChecked;
    }
    if (numItems != null) {
      output["numItems"] = numItems;
    }
    if (severity != null) {
      output["severity"] = severity;
    }
    if (submittedValue != null) {
      output["submittedValue"] = submittedValue;
    }

    return output;
  }

  /** Return String representation of AccountStatusDataQualityIssue */
  core.String toString() => JSON.encode(this.toJson());

}

/** An example of an item that has poor data quality. An item value on the landing page differs from what is submitted, or conflicts with a policy. */
class AccountStatusExampleItem {

  /** Unique item ID as specified in the uploaded product data. */
  core.String itemId;

  /** Landing page of the item. */
  core.String link;

  /** The item value that was submitted. */
  core.String submittedValue;

  /** Title of the item. */
  core.String title;

  /** The actual value on the landing page. */
  core.String valueOnLandingPage;

  /** Create new AccountStatusExampleItem from JSON data */
  AccountStatusExampleItem.fromJson(core.Map json) {
    if (json.containsKey("itemId")) {
      itemId = json["itemId"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("submittedValue")) {
      submittedValue = json["submittedValue"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("valueOnLandingPage")) {
      valueOnLandingPage = json["valueOnLandingPage"];
    }
  }

  /** Create JSON Object for AccountStatusExampleItem */
  core.Map toJson() {
    var output = new core.Map();

    if (itemId != null) {
      output["itemId"] = itemId;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (submittedValue != null) {
      output["submittedValue"] = submittedValue;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (valueOnLandingPage != null) {
      output["valueOnLandingPage"] = valueOnLandingPage;
    }

    return output;
  }

  /** Return String representation of AccountStatusExampleItem */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountUser {

  /** Whether user is an admin. */
  core.bool admin;

  /** User's email address. */
  core.String emailAddress;

  /** Create new AccountUser from JSON data */
  AccountUser.fromJson(core.Map json) {
    if (json.containsKey("admin")) {
      admin = json["admin"];
    }
    if (json.containsKey("emailAddress")) {
      emailAddress = json["emailAddress"];
    }
  }

  /** Create JSON Object for AccountUser */
  core.Map toJson() {
    var output = new core.Map();

    if (admin != null) {
      output["admin"] = admin;
    }
    if (emailAddress != null) {
      output["emailAddress"] = emailAddress;
    }

    return output;
  }

  /** Return String representation of AccountUser */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountsCustomBatchRequest {

  core.List<AccountsCustomBatchRequestEntry> entries;

  /** Create new AccountsCustomBatchRequest from JSON data */
  AccountsCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new AccountsCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for AccountsCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AccountsCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the accounts service of the Content API for Shopping. */
class AccountsCustomBatchRequestEntry {

  /** The account to create or update. Only defined if the method is insert or update. */
  Account account;

  /** The ID of the account to get or delete. Only defined if the method is get or delete. */
  core.String accountId;

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get, insert, update, or delete). */
  core.String method;

  /** Create new AccountsCustomBatchRequestEntry from JSON data */
  AccountsCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("account")) {
      account = new Account.fromJson(json["account"]);
    }
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
  }

  /** Create JSON Object for AccountsCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (account != null) {
      output["account"] = account.toJson();
    }
    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }

    return output;
  }

  /** Return String representation of AccountsCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountsCustomBatchResponse {

  core.List<AccountsCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountsCustomBatchResponse". */
  core.String kind;

  /** Create new AccountsCustomBatchResponse from JSON data */
  AccountsCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new AccountsCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountsCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountsCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the accounts service of the Content API for Shopping. */
class AccountsCustomBatchResponseEntry {

  /** The retrieved, created, or updated account. Not defined if the method was delete. */
  Account account;

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountsCustomBatchResponseEntry". */
  core.String kind;

  /** Create new AccountsCustomBatchResponseEntry from JSON data */
  AccountsCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("account")) {
      account = new Account.fromJson(json["account"]);
    }
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountsCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (account != null) {
      output["account"] = account.toJson();
    }
    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountsCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountsListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountsListResponse". */
  core.String kind;

  core.String nextPageToken;

  core.List<Account> resources;

  /** Create new AccountsListResponse from JSON data */
  AccountsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new Account.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for AccountsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AccountsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountstatusesCustomBatchRequest {

  core.List<AccountstatusesCustomBatchRequestEntry> entries;

  /** Create new AccountstatusesCustomBatchRequest from JSON data */
  AccountstatusesCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new AccountstatusesCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for AccountstatusesCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AccountstatusesCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the accountstatuses service of the Content API for Shopping. */
class AccountstatusesCustomBatchRequestEntry {

  /** The ID of the (sub-)account whose status to get. */
  core.String accountId;

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get). */
  core.String method;

  /** Create new AccountstatusesCustomBatchRequestEntry from JSON data */
  AccountstatusesCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
  }

  /** Create JSON Object for AccountstatusesCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }

    return output;
  }

  /** Return String representation of AccountstatusesCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountstatusesCustomBatchResponse {

  core.List<AccountstatusesCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountstatusesCustomBatchResponse". */
  core.String kind;

  /** Create new AccountstatusesCustomBatchResponse from JSON data */
  AccountstatusesCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new AccountstatusesCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountstatusesCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountstatusesCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the accountstatuses service of the Content API for Shopping. */
class AccountstatusesCustomBatchResponseEntry {

  /** The requested account status. Defined if and only if the request was successful. */
  AccountStatus accountStatus;

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Create new AccountstatusesCustomBatchResponseEntry from JSON data */
  AccountstatusesCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("accountStatus")) {
      accountStatus = new AccountStatus.fromJson(json["accountStatus"]);
    }
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
  }

  /** Create JSON Object for AccountstatusesCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (accountStatus != null) {
      output["accountStatus"] = accountStatus.toJson();
    }
    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }

    return output;
  }

  /** Return String representation of AccountstatusesCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountstatusesListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#accountstatusesListResponse". */
  core.String kind;

  core.String nextPageToken;

  core.List<AccountStatus> resources;

  /** Create new AccountstatusesListResponse from JSON data */
  AccountstatusesListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new AccountStatus.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for AccountstatusesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AccountstatusesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Datafeed {

  /** The two-letter ISO 639-1 language in which the attributes are defined in the data feed. */
  core.String attributeLanguage;

  /** The two-letter ISO 639-1 language of the items in the feed. */
  core.String contentLanguage;

  /** The type of data feed. */
  core.String contentType;

  /** Fetch schedule for the feed file. */
  DatafeedFetchSchedule fetchSchedule;

  /** The filename of the feed. All feeds must have a unique file name. */
  core.String fileName;

  /** Format of the feed file. */
  DatafeedFormat format;

  /** The ID of the data feed. */
  core.int id;

  /** The list of intended destinations (corresponds to checked check boxes in Merchant Center). */
  core.List<core.String> intendedDestinations;

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeed". */
  core.String kind;

  /** A descriptive name of the data feed. */
  core.String name;

  /** The two-letter ISO 3166 country where the items in the feed will be included in the search index. */
  core.String targetCountry;

  /** Create new Datafeed from JSON data */
  Datafeed.fromJson(core.Map json) {
    if (json.containsKey("attributeLanguage")) {
      attributeLanguage = json["attributeLanguage"];
    }
    if (json.containsKey("contentLanguage")) {
      contentLanguage = json["contentLanguage"];
    }
    if (json.containsKey("contentType")) {
      contentType = json["contentType"];
    }
    if (json.containsKey("fetchSchedule")) {
      fetchSchedule = new DatafeedFetchSchedule.fromJson(json["fetchSchedule"]);
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("format")) {
      format = new DatafeedFormat.fromJson(json["format"]);
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("intendedDestinations")) {
      intendedDestinations = json["intendedDestinations"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("targetCountry")) {
      targetCountry = json["targetCountry"];
    }
  }

  /** Create JSON Object for Datafeed */
  core.Map toJson() {
    var output = new core.Map();

    if (attributeLanguage != null) {
      output["attributeLanguage"] = attributeLanguage;
    }
    if (contentLanguage != null) {
      output["contentLanguage"] = contentLanguage;
    }
    if (contentType != null) {
      output["contentType"] = contentType;
    }
    if (fetchSchedule != null) {
      output["fetchSchedule"] = fetchSchedule.toJson();
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (format != null) {
      output["format"] = format.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (intendedDestinations != null) {
      output["intendedDestinations"] = intendedDestinations.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (targetCountry != null) {
      output["targetCountry"] = targetCountry;
    }

    return output;
  }

  /** Return String representation of Datafeed */
  core.String toString() => JSON.encode(this.toJson());

}

/** The required fields vary based on the frequency of fetching. For a monthly fetch schedule, day_of_month and hour are required. For a weekly fetch schedule, weekday and hour are required. For a daily fetch schedule, only hour is required. */
class DatafeedFetchSchedule {

  /** The day of the month the feed file should be fetched (1-31). */
  core.int dayOfMonth;

  /** The URL where the feed file can be fetched. Google Merchant Center will support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP protocols, so the value will need to be a valid link using one of those four protocols. */
  core.String fetchUrl;

  /** The hour of the day the feed file should be fetched (0-24). */
  core.int hour;

  /** An optional password for fetch_url. */
  core.String password;

  /** Time zone used for schedule. UTC by default. E.g., "America/Los_Angeles". */
  core.String timeZone;

  /** An optional user name for fetch_url. */
  core.String username;

  /** The day of the week the feed file should be fetched. */
  core.String weekday;

  /** Create new DatafeedFetchSchedule from JSON data */
  DatafeedFetchSchedule.fromJson(core.Map json) {
    if (json.containsKey("dayOfMonth")) {
      dayOfMonth = json["dayOfMonth"];
    }
    if (json.containsKey("fetchUrl")) {
      fetchUrl = json["fetchUrl"];
    }
    if (json.containsKey("hour")) {
      hour = json["hour"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
    if (json.containsKey("weekday")) {
      weekday = json["weekday"];
    }
  }

  /** Create JSON Object for DatafeedFetchSchedule */
  core.Map toJson() {
    var output = new core.Map();

    if (dayOfMonth != null) {
      output["dayOfMonth"] = dayOfMonth;
    }
    if (fetchUrl != null) {
      output["fetchUrl"] = fetchUrl;
    }
    if (hour != null) {
      output["hour"] = hour;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }
    if (username != null) {
      output["username"] = username;
    }
    if (weekday != null) {
      output["weekday"] = weekday;
    }

    return output;
  }

  /** Return String representation of DatafeedFetchSchedule */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedFormat {

  /** Delimiter for the separation of values in a delimiter-separated values feed. If not specified, the delimiter will be auto-detected. Ignored for non-DSV data feeds. */
  core.String columnDelimiter;

  /** Character encoding scheme of the data feed. If not specified, the encoding will be auto-detected. */
  core.String fileEncoding;

  /** Specifies how double quotes are interpreted. If not specified, the mode will be auto-detected. Ignored for non-DSV data feeds. */
  core.String quotingMode;

  /** Create new DatafeedFormat from JSON data */
  DatafeedFormat.fromJson(core.Map json) {
    if (json.containsKey("columnDelimiter")) {
      columnDelimiter = json["columnDelimiter"];
    }
    if (json.containsKey("fileEncoding")) {
      fileEncoding = json["fileEncoding"];
    }
    if (json.containsKey("quotingMode")) {
      quotingMode = json["quotingMode"];
    }
  }

  /** Create JSON Object for DatafeedFormat */
  core.Map toJson() {
    var output = new core.Map();

    if (columnDelimiter != null) {
      output["columnDelimiter"] = columnDelimiter;
    }
    if (fileEncoding != null) {
      output["fileEncoding"] = fileEncoding;
    }
    if (quotingMode != null) {
      output["quotingMode"] = quotingMode;
    }

    return output;
  }

  /** Return String representation of DatafeedFormat */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedStatus {

  /** The ID of the feed for which the status is reported. */
  core.String datafeedId;

  /** The list of errors occurring in the feed. */
  core.List<DatafeedStatusError> errors;

  /** The number of items in the feed that were processed. */
  core.String itemsTotal;

  /** The number of items in the feed that were valid. */
  core.String itemsValid;

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeedStatus". */
  core.String kind;

  /** The processing status of the feed. */
  core.String processingStatus;

  /** The list of errors occurring in the feed. */
  core.List<DatafeedStatusError> warnings;

  /** Create new DatafeedStatus from JSON data */
  DatafeedStatus.fromJson(core.Map json) {
    if (json.containsKey("datafeedId")) {
      datafeedId = json["datafeedId"];
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new DatafeedStatusError.fromJson(errorsItem)).toList();
    }
    if (json.containsKey("itemsTotal")) {
      itemsTotal = json["itemsTotal"];
    }
    if (json.containsKey("itemsValid")) {
      itemsValid = json["itemsValid"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new DatafeedStatusError.fromJson(warningsItem)).toList();
    }
  }

  /** Create JSON Object for DatafeedStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (datafeedId != null) {
      output["datafeedId"] = datafeedId;
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }
    if (itemsTotal != null) {
      output["itemsTotal"] = itemsTotal;
    }
    if (itemsValid != null) {
      output["itemsValid"] = itemsValid;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DatafeedStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** An error occurring in the feed, like "invalid price". */
class DatafeedStatusError {

  /** The code of the error, e.g., "validation/invalid_value". */
  core.String code;

  /** The number of occurrences of the error in the feed. */
  core.String count;

  /** A list of example occurrences of the error, grouped by product. */
  core.List<DatafeedStatusExample> examples;

  /** The error message, e.g., "Invalid price". */
  core.String message;

  /** Create new DatafeedStatusError from JSON data */
  DatafeedStatusError.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("examples")) {
      examples = json["examples"].map((examplesItem) => new DatafeedStatusExample.fromJson(examplesItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for DatafeedStatusError */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (count != null) {
      output["count"] = count;
    }
    if (examples != null) {
      output["examples"] = examples.map((examplesItem) => examplesItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of DatafeedStatusError */
  core.String toString() => JSON.encode(this.toJson());

}

/** An example occurrence for a particular error. */
class DatafeedStatusExample {

  /** The ID of the example item. */
  core.String itemId;

  /** Line number in the data feed where the example is found. */
  core.String lineNumber;

  /** The problematic value. */
  core.String value;

  /** Create new DatafeedStatusExample from JSON data */
  DatafeedStatusExample.fromJson(core.Map json) {
    if (json.containsKey("itemId")) {
      itemId = json["itemId"];
    }
    if (json.containsKey("lineNumber")) {
      lineNumber = json["lineNumber"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DatafeedStatusExample */
  core.Map toJson() {
    var output = new core.Map();

    if (itemId != null) {
      output["itemId"] = itemId;
    }
    if (lineNumber != null) {
      output["lineNumber"] = lineNumber;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DatafeedStatusExample */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedsCustomBatchRequest {

  core.List<DatafeedsCustomBatchRequestEntry> entries;

  /** Create new DatafeedsCustomBatchRequest from JSON data */
  DatafeedsCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new DatafeedsCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for DatafeedsCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DatafeedsCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the datafeeds service of the Content API for Shopping. */
class DatafeedsCustomBatchRequestEntry {

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The data feed to insert. */
  Datafeed datafeed;

  /** The ID of the data feed to get or delete. */
  core.String datafeedId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get, insert, update, or delete). */
  core.String method;

  /** Create new DatafeedsCustomBatchRequestEntry from JSON data */
  DatafeedsCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("datafeed")) {
      datafeed = new Datafeed.fromJson(json["datafeed"]);
    }
    if (json.containsKey("datafeedId")) {
      datafeedId = json["datafeedId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
  }

  /** Create JSON Object for DatafeedsCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (datafeed != null) {
      output["datafeed"] = datafeed.toJson();
    }
    if (datafeedId != null) {
      output["datafeedId"] = datafeedId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }

    return output;
  }

  /** Return String representation of DatafeedsCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedsCustomBatchResponse {

  core.List<DatafeedsCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeedsCustomBatchResponse". */
  core.String kind;

  /** Create new DatafeedsCustomBatchResponse from JSON data */
  DatafeedsCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new DatafeedsCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DatafeedsCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DatafeedsCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the datafeeds service of the Content API for Shopping. */
class DatafeedsCustomBatchResponseEntry {

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** The requested data feed. Defined if and only if the request was successful. */
  Datafeed datafeed;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Create new DatafeedsCustomBatchResponseEntry from JSON data */
  DatafeedsCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("datafeed")) {
      datafeed = new Datafeed.fromJson(json["datafeed"]);
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
  }

  /** Create JSON Object for DatafeedsCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (datafeed != null) {
      output["datafeed"] = datafeed.toJson();
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }

    return output;
  }

  /** Return String representation of DatafeedsCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedsListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeedsListResponse". */
  core.String kind;

  core.List<Datafeed> resources;

  /** Create new DatafeedsListResponse from JSON data */
  DatafeedsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new Datafeed.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for DatafeedsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DatafeedsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedstatusesCustomBatchRequest {

  core.List<DatafeedstatusesCustomBatchRequestEntry> entries;

  /** Create new DatafeedstatusesCustomBatchRequest from JSON data */
  DatafeedstatusesCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new DatafeedstatusesCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for DatafeedstatusesCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DatafeedstatusesCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the datafeedstatuses service of the Content API for Shopping. */
class DatafeedstatusesCustomBatchRequestEntry {

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the data feed to get or delete. */
  core.String datafeedId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get). */
  core.String method;

  /** Create new DatafeedstatusesCustomBatchRequestEntry from JSON data */
  DatafeedstatusesCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("datafeedId")) {
      datafeedId = json["datafeedId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
  }

  /** Create JSON Object for DatafeedstatusesCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (datafeedId != null) {
      output["datafeedId"] = datafeedId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }

    return output;
  }

  /** Return String representation of DatafeedstatusesCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedstatusesCustomBatchResponse {

  core.List<DatafeedstatusesCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeedstatusesCustomBatchResponse". */
  core.String kind;

  /** Create new DatafeedstatusesCustomBatchResponse from JSON data */
  DatafeedstatusesCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new DatafeedstatusesCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DatafeedstatusesCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DatafeedstatusesCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the datafeedstatuses service of the Content API for Shopping. */
class DatafeedstatusesCustomBatchResponseEntry {

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** The requested data feed status. Defined if and only if the request was successful. */
  DatafeedStatus datafeedStatus;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Create new DatafeedstatusesCustomBatchResponseEntry from JSON data */
  DatafeedstatusesCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("datafeedStatus")) {
      datafeedStatus = new DatafeedStatus.fromJson(json["datafeedStatus"]);
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
  }

  /** Create JSON Object for DatafeedstatusesCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (datafeedStatus != null) {
      output["datafeedStatus"] = datafeedStatus.toJson();
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }

    return output;
  }

  /** Return String representation of DatafeedstatusesCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class DatafeedstatusesListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#datafeedstatusesListResponse". */
  core.String kind;

  core.List<DatafeedStatus> resources;

  /** Create new DatafeedstatusesListResponse from JSON data */
  DatafeedstatusesListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new DatafeedStatus.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for DatafeedstatusesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DatafeedstatusesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** An error returned by the API. */
class Error {

  /** The domain of the error. */
  core.String domain;

  /** A description of the error. */
  core.String message;

  /** The error code. */
  core.String reason;

  /** Create new Error from JSON data */
  Error.fromJson(core.Map json) {
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for Error */
  core.Map toJson() {
    var output = new core.Map();

    if (domain != null) {
      output["domain"] = domain;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of Error */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of errors returned by a failed batch entry. */
class Errors {

  /** The HTTP status of the first error in errors. */
  core.int code;

  /** A list of errors. */
  core.List<Error> errors;

  /** The message of the first error in errors. */
  core.String message;

  /** Create new Errors from JSON data */
  Errors.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new Error.fromJson(errorsItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for Errors */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of Errors */
  core.String toString() => JSON.encode(this.toJson());

}

class Inventory {

  /** The availability of the product. */
  core.String availability;

  /** Identifies what kind of resource this is. Value: the fixed string "content#inventory". */
  core.String kind;

  /** The price of the product. */
  Price price;

  /** The quantity of the product. Must be equal to or greater than zero. Supported only for local products. */
  core.int quantity;

  /** The sale price of the product. Mandatory if sale_price_effective_date is defined. */
  Price salePrice;

  /** A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates might be specified as 'null' if undecided. */
  core.String salePriceEffectiveDate;

  /** Create new Inventory from JSON data */
  Inventory.fromJson(core.Map json) {
    if (json.containsKey("availability")) {
      availability = json["availability"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("price")) {
      price = new Price.fromJson(json["price"]);
    }
    if (json.containsKey("quantity")) {
      quantity = json["quantity"];
    }
    if (json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(json["salePrice"]);
    }
    if (json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = json["salePriceEffectiveDate"];
    }
  }

  /** Create JSON Object for Inventory */
  core.Map toJson() {
    var output = new core.Map();

    if (availability != null) {
      output["availability"] = availability;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (price != null) {
      output["price"] = price.toJson();
    }
    if (quantity != null) {
      output["quantity"] = quantity;
    }
    if (salePrice != null) {
      output["salePrice"] = salePrice.toJson();
    }
    if (salePriceEffectiveDate != null) {
      output["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }

    return output;
  }

  /** Return String representation of Inventory */
  core.String toString() => JSON.encode(this.toJson());

}

class InventoryCustomBatchRequest {

  core.List<InventoryCustomBatchRequestEntry> entries;

  /** Create new InventoryCustomBatchRequest from JSON data */
  InventoryCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new InventoryCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for InventoryCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of InventoryCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the inventory service of the Content API for Shopping. */
class InventoryCustomBatchRequestEntry {

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** Price and availability of the product. */
  Inventory inventory;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The ID of the product for which to update price and availability. */
  core.String productId;

  /** The code of the store for which to update price and availability. Use online to update price and availability of an online product. */
  core.String storeCode;

  /** Create new InventoryCustomBatchRequestEntry from JSON data */
  InventoryCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("inventory")) {
      inventory = new Inventory.fromJson(json["inventory"]);
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("productId")) {
      productId = json["productId"];
    }
    if (json.containsKey("storeCode")) {
      storeCode = json["storeCode"];
    }
  }

  /** Create JSON Object for InventoryCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (inventory != null) {
      output["inventory"] = inventory.toJson();
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (productId != null) {
      output["productId"] = productId;
    }
    if (storeCode != null) {
      output["storeCode"] = storeCode;
    }

    return output;
  }

  /** Return String representation of InventoryCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class InventoryCustomBatchResponse {

  core.List<InventoryCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#inventoryCustomBatchResponse". */
  core.String kind;

  /** Create new InventoryCustomBatchResponse from JSON data */
  InventoryCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new InventoryCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for InventoryCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of InventoryCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the inventory service of the Content API for Shopping. */
class InventoryCustomBatchResponseEntry {

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Identifies what kind of resource this is. Value: the fixed string "content#inventoryCustomBatchResponseEntry". */
  core.String kind;

  /** Create new InventoryCustomBatchResponseEntry from JSON data */
  InventoryCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for InventoryCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of InventoryCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class InventorySetRequest {

  /** The availability of the product. */
  core.String availability;

  /** The price of the product. */
  Price price;

  /** The quantity of the product. Must be equal to or greater than zero. Supported only for local products. */
  core.int quantity;

  /** The sale price of the product. Mandatory if sale_price_effective_date is defined. */
  Price salePrice;

  /** A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates might be specified as 'null' if undecided. */
  core.String salePriceEffectiveDate;

  /** Create new InventorySetRequest from JSON data */
  InventorySetRequest.fromJson(core.Map json) {
    if (json.containsKey("availability")) {
      availability = json["availability"];
    }
    if (json.containsKey("price")) {
      price = new Price.fromJson(json["price"]);
    }
    if (json.containsKey("quantity")) {
      quantity = json["quantity"];
    }
    if (json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(json["salePrice"]);
    }
    if (json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = json["salePriceEffectiveDate"];
    }
  }

  /** Create JSON Object for InventorySetRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (availability != null) {
      output["availability"] = availability;
    }
    if (price != null) {
      output["price"] = price.toJson();
    }
    if (quantity != null) {
      output["quantity"] = quantity;
    }
    if (salePrice != null) {
      output["salePrice"] = salePrice.toJson();
    }
    if (salePriceEffectiveDate != null) {
      output["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }

    return output;
  }

  /** Return String representation of InventorySetRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class InventorySetResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#inventorySetResponse". */
  core.String kind;

  /** Create new InventorySetResponse from JSON data */
  InventorySetResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for InventorySetResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of InventorySetResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class LoyaltyPoints {

  /** Name of loyalty points program. It is recommended to limit the name to 12 full-width characters or 24 Roman characters. */
  core.String name;

  /** The retailer's loyalty points in absolute value. */
  core.int pointsValue;

  /** The ratio of a point when converted to currency. Google assumes currency based on Merchant Center settings. If ratio is left out, it defaults to 1.0. */
  core.num ratio;

  /** Create new LoyaltyPoints from JSON data */
  LoyaltyPoints.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pointsValue")) {
      pointsValue = (json["pointsValue"] is core.String) ? core.int.parse(json["pointsValue"]) : json["pointsValue"];
    }
    if (json.containsKey("ratio")) {
      ratio = json["ratio"];
    }
  }

  /** Create JSON Object for LoyaltyPoints */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (pointsValue != null) {
      output["pointsValue"] = pointsValue;
    }
    if (ratio != null) {
      output["ratio"] = ratio;
    }

    return output;
  }

  /** Return String representation of LoyaltyPoints */
  core.String toString() => JSON.encode(this.toJson());

}

class Price {

  /** The currency of the price. */
  core.String currency;

  /** The price represented as a number. */
  core.String value;

  /** Create new Price from JSON data */
  Price.fromJson(core.Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Price */
  core.Map toJson() {
    var output = new core.Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Price */
  core.String toString() => JSON.encode(this.toJson());

}

/** Product data. */
class Product {

  /** Additional URLs of images of the item. */
  core.List<core.String> additionalImageLinks;

  /** Set to true if the item is targeted towards adults. */
  core.bool adult;

  /** Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise. */
  core.String adwordsGrouping;

  /** Similar to adwords_grouping, but only works on CPC. */
  core.List<core.String> adwordsLabels;

  /** Allows advertisers to override the item URL when the product is shown within the context of Product Ads. */
  core.String adwordsRedirect;

  /** Target age group of the item. */
  core.String ageGroup;

  /** Availability status of the item. */
  core.String availability;

  /** The day a pre-ordered product becomes available for delivery. */
  core.String availabilityDate;

  /** Brand of the item. */
  core.String brand;

  /** The item's channel (online or local). */
  core.String channel;

  /** Color of the item. */
  core.String color;

  /** Condition or state of the item. */
  core.String condition;

  /** The two-letter ISO 639-1 language code for the item. */
  core.String contentLanguage;

  /** A list of custom (merchant-provided) attributes. */
  core.List<ProductCustomAttribute> customAttributes;

  /** A list of custom (merchant-provided) custom attribute groups. */
  core.List<ProductCustomGroup> customGroups;

  /** Custom label 0 for custom grouping of items in a Shopping campaign. */
  core.String customLabel0;

  /** Custom label 1 for custom grouping of items in a Shopping campaign. */
  core.String customLabel1;

  /** Custom label 2 for custom grouping of items in a Shopping campaign. */
  core.String customLabel2;

  /** Custom label 3 for custom grouping of items in a Shopping campaign. */
  core.String customLabel3;

  /** Custom label 4 for custom grouping of items in a Shopping campaign. */
  core.String customLabel4;

  /** Description of the item. */
  core.String description;

  /** Specifies the intended destinations for the product. */
  core.List<ProductDestination> destinations;

  /** The energy efficiency class as defined in EU directive 2010/30/EU. */
  core.String energyEfficiencyClass;

  /** Date that an item will expire. */
  core.String expirationDate;

  /** Target gender of the item. */
  core.String gender;

  /** Google's category of the item. */
  core.String googleProductCategory;

  /** Global Trade Item Number (GTIN) of the item. */
  core.String gtin;

  /** The REST id of the product. */
  core.String id;

  /** False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada. */
  core.bool identifierExists;

  /** URL of an image of the item. */
  core.String imageLink;

  /** Number and amount of installments to pay for an item. Brazil only. */
  ProductInstallment installment;

  /** Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price. */
  core.bool isBundle;

  /** Shared identifier for all variants of the same product. */
  core.String itemGroupId;

  /** Identifies what kind of resource this is. Value: the fixed string "content#product". */
  core.String kind;

  /** URL directly linking to your item's page on your website. */
  core.String link;

  /** Loyalty points that users receive after purchasing the item. Japan only. */
  LoyaltyPoints loyaltyPoints;

  /** The material of which the item is made. */
  core.String material;

  /** Link to a mobile-optimized version of the landing page. */
  core.String mobileLink;

  /** Manufacturer Part Number (MPN) of the item. */
  core.String mpn;

  /** The number of identical products in a merchant-defined multipack. */
  core.int multipack;

  /** An identifier of the item. */
  core.String offerId;

  /** Whether an item is available for purchase only online. */
  core.bool onlineOnly;

  /** The item's pattern (e.g. polka dots). */
  core.String pattern;

  /** Price of the item. */
  Price price;

  /** Your category of the item. */
  core.String productType;

  /** Advertised sale price of the item. */
  Price salePrice;

  /** Date range during which the item is on sale. */
  core.String salePriceEffectiveDate;

  /** Shipping rules. */
  core.List<ProductShipping> shipping;

  /** The shipping label of the product, used to group product in account-level shipping rules. */
  core.String shippingLabel;

  /** Weight of the item for shipping. */
  ProductShippingWeight shippingWeight;

  /** System in which the size is specified. Recommended for apparel items. */
  core.String sizeSystem;

  /** The cut of the item. Recommended for apparel items. */
  core.String sizeType;

  /** Size of the item. */
  core.List<core.String> sizes;

  /** The two-letter ISO 3166 country code for the item. */
  core.String targetCountry;

  /** Tax information. */
  core.List<ProductTax> taxes;

  /** Title of the item. */
  core.String title;

  /** The preference of the denominator of the unit price. */
  ProductUnitPricingBaseMeasure unitPricingBaseMeasure;

  /** The measure and dimension of an item. */
  ProductUnitPricingMeasure unitPricingMeasure;

  /** The read-only list of intended destinations which passed validation. */
  core.List<core.String> validatedDestinations;

  /** Read-only warnings. */
  core.List<Error> warnings;

  /** Create new Product from JSON data */
  Product.fromJson(core.Map json) {
    if (json.containsKey("additionalImageLinks")) {
      additionalImageLinks = json["additionalImageLinks"].toList();
    }
    if (json.containsKey("adult")) {
      adult = json["adult"];
    }
    if (json.containsKey("adwordsGrouping")) {
      adwordsGrouping = json["adwordsGrouping"];
    }
    if (json.containsKey("adwordsLabels")) {
      adwordsLabels = json["adwordsLabels"].toList();
    }
    if (json.containsKey("adwordsRedirect")) {
      adwordsRedirect = json["adwordsRedirect"];
    }
    if (json.containsKey("ageGroup")) {
      ageGroup = json["ageGroup"];
    }
    if (json.containsKey("availability")) {
      availability = json["availability"];
    }
    if (json.containsKey("availabilityDate")) {
      availabilityDate = json["availabilityDate"];
    }
    if (json.containsKey("brand")) {
      brand = json["brand"];
    }
    if (json.containsKey("channel")) {
      channel = json["channel"];
    }
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("condition")) {
      condition = json["condition"];
    }
    if (json.containsKey("contentLanguage")) {
      contentLanguage = json["contentLanguage"];
    }
    if (json.containsKey("customAttributes")) {
      customAttributes = json["customAttributes"].map((customAttributesItem) => new ProductCustomAttribute.fromJson(customAttributesItem)).toList();
    }
    if (json.containsKey("customGroups")) {
      customGroups = json["customGroups"].map((customGroupsItem) => new ProductCustomGroup.fromJson(customGroupsItem)).toList();
    }
    if (json.containsKey("customLabel0")) {
      customLabel0 = json["customLabel0"];
    }
    if (json.containsKey("customLabel1")) {
      customLabel1 = json["customLabel1"];
    }
    if (json.containsKey("customLabel2")) {
      customLabel2 = json["customLabel2"];
    }
    if (json.containsKey("customLabel3")) {
      customLabel3 = json["customLabel3"];
    }
    if (json.containsKey("customLabel4")) {
      customLabel4 = json["customLabel4"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("destinations")) {
      destinations = json["destinations"].map((destinationsItem) => new ProductDestination.fromJson(destinationsItem)).toList();
    }
    if (json.containsKey("energyEfficiencyClass")) {
      energyEfficiencyClass = json["energyEfficiencyClass"];
    }
    if (json.containsKey("expirationDate")) {
      expirationDate = json["expirationDate"];
    }
    if (json.containsKey("gender")) {
      gender = json["gender"];
    }
    if (json.containsKey("googleProductCategory")) {
      googleProductCategory = json["googleProductCategory"];
    }
    if (json.containsKey("gtin")) {
      gtin = json["gtin"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("identifierExists")) {
      identifierExists = json["identifierExists"];
    }
    if (json.containsKey("imageLink")) {
      imageLink = json["imageLink"];
    }
    if (json.containsKey("installment")) {
      installment = new ProductInstallment.fromJson(json["installment"]);
    }
    if (json.containsKey("isBundle")) {
      isBundle = json["isBundle"];
    }
    if (json.containsKey("itemGroupId")) {
      itemGroupId = json["itemGroupId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("loyaltyPoints")) {
      loyaltyPoints = new LoyaltyPoints.fromJson(json["loyaltyPoints"]);
    }
    if (json.containsKey("material")) {
      material = json["material"];
    }
    if (json.containsKey("mobileLink")) {
      mobileLink = json["mobileLink"];
    }
    if (json.containsKey("mpn")) {
      mpn = json["mpn"];
    }
    if (json.containsKey("multipack")) {
      multipack = (json["multipack"] is core.String) ? core.int.parse(json["multipack"]) : json["multipack"];
    }
    if (json.containsKey("offerId")) {
      offerId = json["offerId"];
    }
    if (json.containsKey("onlineOnly")) {
      onlineOnly = json["onlineOnly"];
    }
    if (json.containsKey("pattern")) {
      pattern = json["pattern"];
    }
    if (json.containsKey("price")) {
      price = new Price.fromJson(json["price"]);
    }
    if (json.containsKey("productType")) {
      productType = json["productType"];
    }
    if (json.containsKey("salePrice")) {
      salePrice = new Price.fromJson(json["salePrice"]);
    }
    if (json.containsKey("salePriceEffectiveDate")) {
      salePriceEffectiveDate = json["salePriceEffectiveDate"];
    }
    if (json.containsKey("shipping")) {
      shipping = json["shipping"].map((shippingItem) => new ProductShipping.fromJson(shippingItem)).toList();
    }
    if (json.containsKey("shippingLabel")) {
      shippingLabel = json["shippingLabel"];
    }
    if (json.containsKey("shippingWeight")) {
      shippingWeight = new ProductShippingWeight.fromJson(json["shippingWeight"]);
    }
    if (json.containsKey("sizeSystem")) {
      sizeSystem = json["sizeSystem"];
    }
    if (json.containsKey("sizeType")) {
      sizeType = json["sizeType"];
    }
    if (json.containsKey("sizes")) {
      sizes = json["sizes"].toList();
    }
    if (json.containsKey("targetCountry")) {
      targetCountry = json["targetCountry"];
    }
    if (json.containsKey("taxes")) {
      taxes = json["taxes"].map((taxesItem) => new ProductTax.fromJson(taxesItem)).toList();
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("unitPricingBaseMeasure")) {
      unitPricingBaseMeasure = new ProductUnitPricingBaseMeasure.fromJson(json["unitPricingBaseMeasure"]);
    }
    if (json.containsKey("unitPricingMeasure")) {
      unitPricingMeasure = new ProductUnitPricingMeasure.fromJson(json["unitPricingMeasure"]);
    }
    if (json.containsKey("validatedDestinations")) {
      validatedDestinations = json["validatedDestinations"].toList();
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new Error.fromJson(warningsItem)).toList();
    }
  }

  /** Create JSON Object for Product */
  core.Map toJson() {
    var output = new core.Map();

    if (additionalImageLinks != null) {
      output["additionalImageLinks"] = additionalImageLinks.toList();
    }
    if (adult != null) {
      output["adult"] = adult;
    }
    if (adwordsGrouping != null) {
      output["adwordsGrouping"] = adwordsGrouping;
    }
    if (adwordsLabels != null) {
      output["adwordsLabels"] = adwordsLabels.toList();
    }
    if (adwordsRedirect != null) {
      output["adwordsRedirect"] = adwordsRedirect;
    }
    if (ageGroup != null) {
      output["ageGroup"] = ageGroup;
    }
    if (availability != null) {
      output["availability"] = availability;
    }
    if (availabilityDate != null) {
      output["availabilityDate"] = availabilityDate;
    }
    if (brand != null) {
      output["brand"] = brand;
    }
    if (channel != null) {
      output["channel"] = channel;
    }
    if (color != null) {
      output["color"] = color;
    }
    if (condition != null) {
      output["condition"] = condition;
    }
    if (contentLanguage != null) {
      output["contentLanguage"] = contentLanguage;
    }
    if (customAttributes != null) {
      output["customAttributes"] = customAttributes.map((customAttributesItem) => customAttributesItem.toJson()).toList();
    }
    if (customGroups != null) {
      output["customGroups"] = customGroups.map((customGroupsItem) => customGroupsItem.toJson()).toList();
    }
    if (customLabel0 != null) {
      output["customLabel0"] = customLabel0;
    }
    if (customLabel1 != null) {
      output["customLabel1"] = customLabel1;
    }
    if (customLabel2 != null) {
      output["customLabel2"] = customLabel2;
    }
    if (customLabel3 != null) {
      output["customLabel3"] = customLabel3;
    }
    if (customLabel4 != null) {
      output["customLabel4"] = customLabel4;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (destinations != null) {
      output["destinations"] = destinations.map((destinationsItem) => destinationsItem.toJson()).toList();
    }
    if (energyEfficiencyClass != null) {
      output["energyEfficiencyClass"] = energyEfficiencyClass;
    }
    if (expirationDate != null) {
      output["expirationDate"] = expirationDate;
    }
    if (gender != null) {
      output["gender"] = gender;
    }
    if (googleProductCategory != null) {
      output["googleProductCategory"] = googleProductCategory;
    }
    if (gtin != null) {
      output["gtin"] = gtin;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (identifierExists != null) {
      output["identifierExists"] = identifierExists;
    }
    if (imageLink != null) {
      output["imageLink"] = imageLink;
    }
    if (installment != null) {
      output["installment"] = installment.toJson();
    }
    if (isBundle != null) {
      output["isBundle"] = isBundle;
    }
    if (itemGroupId != null) {
      output["itemGroupId"] = itemGroupId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (loyaltyPoints != null) {
      output["loyaltyPoints"] = loyaltyPoints.toJson();
    }
    if (material != null) {
      output["material"] = material;
    }
    if (mobileLink != null) {
      output["mobileLink"] = mobileLink;
    }
    if (mpn != null) {
      output["mpn"] = mpn;
    }
    if (multipack != null) {
      output["multipack"] = multipack;
    }
    if (offerId != null) {
      output["offerId"] = offerId;
    }
    if (onlineOnly != null) {
      output["onlineOnly"] = onlineOnly;
    }
    if (pattern != null) {
      output["pattern"] = pattern;
    }
    if (price != null) {
      output["price"] = price.toJson();
    }
    if (productType != null) {
      output["productType"] = productType;
    }
    if (salePrice != null) {
      output["salePrice"] = salePrice.toJson();
    }
    if (salePriceEffectiveDate != null) {
      output["salePriceEffectiveDate"] = salePriceEffectiveDate;
    }
    if (shipping != null) {
      output["shipping"] = shipping.map((shippingItem) => shippingItem.toJson()).toList();
    }
    if (shippingLabel != null) {
      output["shippingLabel"] = shippingLabel;
    }
    if (shippingWeight != null) {
      output["shippingWeight"] = shippingWeight.toJson();
    }
    if (sizeSystem != null) {
      output["sizeSystem"] = sizeSystem;
    }
    if (sizeType != null) {
      output["sizeType"] = sizeType;
    }
    if (sizes != null) {
      output["sizes"] = sizes.toList();
    }
    if (targetCountry != null) {
      output["targetCountry"] = targetCountry;
    }
    if (taxes != null) {
      output["taxes"] = taxes.map((taxesItem) => taxesItem.toJson()).toList();
    }
    if (title != null) {
      output["title"] = title;
    }
    if (unitPricingBaseMeasure != null) {
      output["unitPricingBaseMeasure"] = unitPricingBaseMeasure.toJson();
    }
    if (unitPricingMeasure != null) {
      output["unitPricingMeasure"] = unitPricingMeasure.toJson();
    }
    if (validatedDestinations != null) {
      output["validatedDestinations"] = validatedDestinations.toList();
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Product */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductCustomAttribute {

  /** The name of the attribute. */
  core.String name;

  /** The type of the attribute. */
  core.String type;

  /** Free-form unit of the attribute. Unit can only be used for values of type INT or FLOAT. */
  core.String unit;

  /** The value of the attribute. */
  core.String value;

  /** Create new ProductCustomAttribute from JSON data */
  ProductCustomAttribute.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductCustomAttribute */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (unit != null) {
      output["unit"] = unit;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductCustomAttribute */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductCustomGroup {

  /** The sub-attributes. */
  core.List<ProductCustomAttribute> attributes;

  /** The name of the group. */
  core.String name;

  /** Create new ProductCustomGroup from JSON data */
  ProductCustomGroup.fromJson(core.Map json) {
    if (json.containsKey("attributes")) {
      attributes = json["attributes"].map((attributesItem) => new ProductCustomAttribute.fromJson(attributesItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ProductCustomGroup */
  core.Map toJson() {
    var output = new core.Map();

    if (attributes != null) {
      output["attributes"] = attributes.map((attributesItem) => attributesItem.toJson()).toList();
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ProductCustomGroup */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductDestination {

  /** The name of the destination. */
  core.String destinationName;

  /** Whether the destination is required, excluded or should be validated. */
  core.String intention;

  /** Create new ProductDestination from JSON data */
  ProductDestination.fromJson(core.Map json) {
    if (json.containsKey("destinationName")) {
      destinationName = json["destinationName"];
    }
    if (json.containsKey("intention")) {
      intention = json["intention"];
    }
  }

  /** Create JSON Object for ProductDestination */
  core.Map toJson() {
    var output = new core.Map();

    if (destinationName != null) {
      output["destinationName"] = destinationName;
    }
    if (intention != null) {
      output["intention"] = intention;
    }

    return output;
  }

  /** Return String representation of ProductDestination */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductInstallment {

  /** The amount the buyer has to pay per month. */
  Price amount;

  /** The number of installments the buyer has to pay. */
  core.int months;

  /** Create new ProductInstallment from JSON data */
  ProductInstallment.fromJson(core.Map json) {
    if (json.containsKey("amount")) {
      amount = new Price.fromJson(json["amount"]);
    }
    if (json.containsKey("months")) {
      months = (json["months"] is core.String) ? core.int.parse(json["months"]) : json["months"];
    }
  }

  /** Create JSON Object for ProductInstallment */
  core.Map toJson() {
    var output = new core.Map();

    if (amount != null) {
      output["amount"] = amount.toJson();
    }
    if (months != null) {
      output["months"] = months;
    }

    return output;
  }

  /** Return String representation of ProductInstallment */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductShipping {

  /** The two-letter ISO 3166 country code for the country to which an item will ship. */
  core.String country;

  /** The location where the shipping is applicable, represented by a location group name. */
  core.String locationGroupName;

  /** The numeric id of a location that the shipping rate applies to as defined in the AdWords API. */
  core.int locationId;

  /** The postal code range that the shipping rate applies to, represented by a postal code, a postal code prefix using * wildcard, a range between two postal codes or two postal code prefixes of equal length. */
  core.String postalCode;

  /** Fixed shipping price, represented as a number. */
  Price price;

  /** The geographic region to which a shipping rate applies (e.g. zip code). */
  core.String region;

  /** A free-form description of the service class or delivery speed. */
  core.String service;

  /** Create new ProductShipping from JSON data */
  ProductShipping.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("locationGroupName")) {
      locationGroupName = json["locationGroupName"];
    }
    if (json.containsKey("locationId")) {
      locationId = (json["locationId"] is core.String) ? core.int.parse(json["locationId"]) : json["locationId"];
    }
    if (json.containsKey("postalCode")) {
      postalCode = json["postalCode"];
    }
    if (json.containsKey("price")) {
      price = new Price.fromJson(json["price"]);
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("service")) {
      service = json["service"];
    }
  }

  /** Create JSON Object for ProductShipping */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (locationGroupName != null) {
      output["locationGroupName"] = locationGroupName;
    }
    if (locationId != null) {
      output["locationId"] = locationId;
    }
    if (postalCode != null) {
      output["postalCode"] = postalCode;
    }
    if (price != null) {
      output["price"] = price.toJson();
    }
    if (region != null) {
      output["region"] = region;
    }
    if (service != null) {
      output["service"] = service;
    }

    return output;
  }

  /** Return String representation of ProductShipping */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductShippingWeight {

  /** The unit of value. */
  core.String unit;

  /** The weight of the product used to calculate the shipping cost of the item. */
  core.num value;

  /** Create new ProductShippingWeight from JSON data */
  ProductShippingWeight.fromJson(core.Map json) {
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductShippingWeight */
  core.Map toJson() {
    var output = new core.Map();

    if (unit != null) {
      output["unit"] = unit;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductShippingWeight */
  core.String toString() => JSON.encode(this.toJson());

}

/** The status of a product, i.e., information about a product computed asynchronously by the data quality analysis. */
class ProductStatus {

  /** A list of data quality issues associated with the product. */
  core.List<ProductStatusDataQualityIssue> dataQualityIssues;

  /** The intended destinations for the product. */
  core.List<ProductStatusDestinationStatus> destinationStatuses;

  /** Identifies what kind of resource this is. Value: the fixed string "content#productStatus". */
  core.String kind;

  /** The link to the product. */
  core.String link;

  /** The id of the product for which status is reported. */
  core.String productId;

  /** The title of the product. */
  core.String title;

  /** Create new ProductStatus from JSON data */
  ProductStatus.fromJson(core.Map json) {
    if (json.containsKey("dataQualityIssues")) {
      dataQualityIssues = json["dataQualityIssues"].map((dataQualityIssuesItem) => new ProductStatusDataQualityIssue.fromJson(dataQualityIssuesItem)).toList();
    }
    if (json.containsKey("destinationStatuses")) {
      destinationStatuses = json["destinationStatuses"].map((destinationStatusesItem) => new ProductStatusDestinationStatus.fromJson(destinationStatusesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("productId")) {
      productId = json["productId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ProductStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (dataQualityIssues != null) {
      output["dataQualityIssues"] = dataQualityIssues.map((dataQualityIssuesItem) => dataQualityIssuesItem.toJson()).toList();
    }
    if (destinationStatuses != null) {
      output["destinationStatuses"] = destinationStatuses.map((destinationStatusesItem) => destinationStatusesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (productId != null) {
      output["productId"] = productId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ProductStatus */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductStatusDataQualityIssue {

  /** A more detailed error string. */
  core.String detail;

  /** The fetch status for landing_page_errors. */
  core.String fetchStatus;

  /** The id of the data quality issue. */
  core.String id;

  /** The attribute name that is relevant for the issue. */
  core.String location;

  /** The time stamp of the data quality issue. */
  core.String timestamp;

  /** The value of that attribute that was found on the landing page */
  core.String valueOnLandingPage;

  /** The value the attribute had at time of evaluation. */
  core.String valueProvided;

  /** Create new ProductStatusDataQualityIssue from JSON data */
  ProductStatusDataQualityIssue.fromJson(core.Map json) {
    if (json.containsKey("detail")) {
      detail = json["detail"];
    }
    if (json.containsKey("fetchStatus")) {
      fetchStatus = json["fetchStatus"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
    if (json.containsKey("valueOnLandingPage")) {
      valueOnLandingPage = json["valueOnLandingPage"];
    }
    if (json.containsKey("valueProvided")) {
      valueProvided = json["valueProvided"];
    }
  }

  /** Create JSON Object for ProductStatusDataQualityIssue */
  core.Map toJson() {
    var output = new core.Map();

    if (detail != null) {
      output["detail"] = detail;
    }
    if (fetchStatus != null) {
      output["fetchStatus"] = fetchStatus;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }
    if (valueOnLandingPage != null) {
      output["valueOnLandingPage"] = valueOnLandingPage;
    }
    if (valueProvided != null) {
      output["valueProvided"] = valueProvided;
    }

    return output;
  }

  /** Return String representation of ProductStatusDataQualityIssue */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductStatusDestinationStatus {

  /** The destination's approval status. */
  core.String approvalStatus;

  /** The name of the destination */
  core.String destination;

  /** Whether the destination is required, excluded, selected by default or should be validated. */
  core.String intention;

  /** Create new ProductStatusDestinationStatus from JSON data */
  ProductStatusDestinationStatus.fromJson(core.Map json) {
    if (json.containsKey("approvalStatus")) {
      approvalStatus = json["approvalStatus"];
    }
    if (json.containsKey("destination")) {
      destination = json["destination"];
    }
    if (json.containsKey("intention")) {
      intention = json["intention"];
    }
  }

  /** Create JSON Object for ProductStatusDestinationStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (approvalStatus != null) {
      output["approvalStatus"] = approvalStatus;
    }
    if (destination != null) {
      output["destination"] = destination;
    }
    if (intention != null) {
      output["intention"] = intention;
    }

    return output;
  }

  /** Return String representation of ProductStatusDestinationStatus */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductTax {

  /** The country within which the item is taxed, specified with a two-letter ISO 3166 country code. */
  core.String country;

  /** The numeric id of a location that the tax rate applies to as defined in the Adwords API (https://developers.google.com/adwords/api/docs/appendix/geotargeting). */
  core.int locationId;

  /** The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*. */
  core.String postalCode;

  /** The percentage of tax rate that applies to the item price. */
  core.num rate;

  /** The geographic region to which the tax rate applies. */
  core.String region;

  /** Set to true if tax is charged on shipping. */
  core.bool taxShip;

  /** Create new ProductTax from JSON data */
  ProductTax.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("locationId")) {
      locationId = (json["locationId"] is core.String) ? core.int.parse(json["locationId"]) : json["locationId"];
    }
    if (json.containsKey("postalCode")) {
      postalCode = json["postalCode"];
    }
    if (json.containsKey("rate")) {
      rate = json["rate"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("taxShip")) {
      taxShip = json["taxShip"];
    }
  }

  /** Create JSON Object for ProductTax */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (locationId != null) {
      output["locationId"] = locationId;
    }
    if (postalCode != null) {
      output["postalCode"] = postalCode;
    }
    if (rate != null) {
      output["rate"] = rate;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (taxShip != null) {
      output["taxShip"] = taxShip;
    }

    return output;
  }

  /** Return String representation of ProductTax */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductUnitPricingBaseMeasure {

  /** The unit of the denominator. */
  core.String unit;

  /** The denominator of the unit price. */
  core.int value;

  /** Create new ProductUnitPricingBaseMeasure from JSON data */
  ProductUnitPricingBaseMeasure.fromJson(core.Map json) {
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
    if (json.containsKey("value")) {
      value = (json["value"] is core.String) ? core.int.parse(json["value"]) : json["value"];
    }
  }

  /** Create JSON Object for ProductUnitPricingBaseMeasure */
  core.Map toJson() {
    var output = new core.Map();

    if (unit != null) {
      output["unit"] = unit;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductUnitPricingBaseMeasure */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductUnitPricingMeasure {

  /** The unit of the measure. */
  core.String unit;

  /** The measure of an item. */
  core.num value;

  /** Create new ProductUnitPricingMeasure from JSON data */
  ProductUnitPricingMeasure.fromJson(core.Map json) {
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductUnitPricingMeasure */
  core.Map toJson() {
    var output = new core.Map();

    if (unit != null) {
      output["unit"] = unit;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductUnitPricingMeasure */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsCustomBatchRequest {

  core.List<ProductsCustomBatchRequestEntry> entries;

  /** Create new ProductsCustomBatchRequest from JSON data */
  ProductsCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new ProductsCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for ProductsCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProductsCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the products service of the Content API for Shopping. */
class ProductsCustomBatchRequestEntry {

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get, insert or delete). */
  core.String method;

  /** The product to insert. Only required if the method is insert. */
  Product product;

  /** The ID of the product to get or delete. Only defined if the method is get or delete. */
  core.String productId;

  /** Create new ProductsCustomBatchRequestEntry from JSON data */
  ProductsCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("product")) {
      product = new Product.fromJson(json["product"]);
    }
    if (json.containsKey("productId")) {
      productId = json["productId"];
    }
  }

  /** Create JSON Object for ProductsCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }
    if (product != null) {
      output["product"] = product.toJson();
    }
    if (productId != null) {
      output["productId"] = productId;
    }

    return output;
  }

  /** Return String representation of ProductsCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsCustomBatchResponse {

  core.List<ProductsCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#productsCustomBatchResponse". */
  core.String kind;

  /** Create new ProductsCustomBatchResponse from JSON data */
  ProductsCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new ProductsCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ProductsCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ProductsCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the products service of the Content API for Shopping. */
class ProductsCustomBatchResponseEntry {

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors defined if and only if the request failed. */
  Errors errors;

  /** Identifies what kind of resource this is. Value: the fixed string "content#productsCustomBatchResponseEntry". */
  core.String kind;

  /** The inserted product. Only defined if the method is insert and if the request was successful. */
  Product product;

  /** Create new ProductsCustomBatchResponseEntry from JSON data */
  ProductsCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("product")) {
      product = new Product.fromJson(json["product"]);
    }
  }

  /** Create JSON Object for ProductsCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (product != null) {
      output["product"] = product.toJson();
    }

    return output;
  }

  /** Return String representation of ProductsCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#productsListResponse". */
  core.String kind;

  core.String nextPageToken;

  core.List<Product> resources;

  /** Create new ProductsListResponse from JSON data */
  ProductsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new Product.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for ProductsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProductsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductstatusesCustomBatchRequest {

  core.List<ProductstatusesCustomBatchRequestEntry> entries;

  /** Create new ProductstatusesCustomBatchRequest from JSON data */
  ProductstatusesCustomBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new ProductstatusesCustomBatchRequestEntry.fromJson(entriesItem)).toList();
    }
  }

  /** Create JSON Object for ProductstatusesCustomBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProductstatusesCustomBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch request to the productstatuses service of the Content API for Shopping. */
class ProductstatusesCustomBatchRequestEntry {

  /** An entry ID, unique within the batch request. */
  core.int batchId;

  /** The ID of the managing account. */
  core.String merchantId;

  /** The method (get). */
  core.String method;

  /** The ID of the product whose status to get. */
  core.String productId;

  /** Create new ProductstatusesCustomBatchRequestEntry from JSON data */
  ProductstatusesCustomBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("merchantId")) {
      merchantId = json["merchantId"];
    }
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("productId")) {
      productId = json["productId"];
    }
  }

  /** Create JSON Object for ProductstatusesCustomBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (merchantId != null) {
      output["merchantId"] = merchantId;
    }
    if (method != null) {
      output["method"] = method;
    }
    if (productId != null) {
      output["productId"] = productId;
    }

    return output;
  }

  /** Return String representation of ProductstatusesCustomBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductstatusesCustomBatchResponse {

  core.List<ProductstatusesCustomBatchResponseEntry> entries;

  /** Identifies what kind of resource this is. Value: the fixed string "content#productstatusesCustomBatchResponse". */
  core.String kind;

  /** Create new ProductstatusesCustomBatchResponse from JSON data */
  ProductstatusesCustomBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new ProductstatusesCustomBatchResponseEntry.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ProductstatusesCustomBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ProductstatusesCustomBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A batch entry encoding a single non-batch response from the productstatuses service of the Content API for Shopping. */
class ProductstatusesCustomBatchResponseEntry {

  /** The ID of the request entry this entry responds to. */
  core.int batchId;

  /** A list of errors, if the request failed. */
  Errors errors;

  /** Identifies what kind of resource this is. Value: the fixed string "content#productstatusesCustomBatchResponseEntry". */
  core.String kind;

  /** The requested product status. Only defined if the request was successful. */
  ProductStatus productStatus;

  /** Create new ProductstatusesCustomBatchResponseEntry from JSON data */
  ProductstatusesCustomBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("errors")) {
      errors = new Errors.fromJson(json["errors"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productStatus")) {
      productStatus = new ProductStatus.fromJson(json["productStatus"]);
    }
  }

  /** Create JSON Object for ProductstatusesCustomBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (errors != null) {
      output["errors"] = errors.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productStatus != null) {
      output["productStatus"] = productStatus.toJson();
    }

    return output;
  }

  /** Return String representation of ProductstatusesCustomBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductstatusesListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "content#productstatusesListResponse". */
  core.String kind;

  core.String nextPageToken;

  core.List<ProductStatus> resources;

  /** Create new ProductstatusesListResponse from JSON data */
  ProductstatusesListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("resources")) {
      resources = json["resources"].map((resourcesItem) => new ProductStatus.fromJson(resourcesItem)).toList();
    }
  }

  /** Create JSON Object for ProductstatusesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (resources != null) {
      output["resources"] = resources.map((resourcesItem) => resourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProductstatusesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
