part of content_v2_api;

class AccountsResource_ {

  final Client _client;

  AccountsResource_(Client client) :
      _client = client;

  /**
   * Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.
   *
   * [request] - AccountsCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountsCustomBatchResponse> custombatch(AccountsCustomBatchRequest request, {core.Map optParams}) {
    var url = "accounts/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a Merchant Center sub-account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String merchantId, core.String accountId, {core.Map optParams}) {
    var url = "{merchantId}/accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.String merchantId, core.String accountId, {core.Map optParams}) {
    var url = "{merchantId}/accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * Creates a Merchant Center sub-account.
   *
   * [request] - Account to send in this request
   *
   * [merchantId] - The ID of the managing account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> insert(Account request, core.String merchantId, {core.Map optParams}) {
    var url = "{merchantId}/accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * Lists the sub-accounts in your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of accounts to return in the response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountsListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{merchantId}/accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountsListResponse.fromJson(data));
  }

  /**
   * Updates a Merchant Center account. This method supports patch semantics.
   *
   * [request] - Account to send in this request
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> patch(Account request, core.String merchantId, core.String accountId, {core.Map optParams}) {
    var url = "{merchantId}/accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * Updates a Merchant Center account.
   *
   * [request] - Account to send in this request
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> update(Account request, core.String merchantId, core.String accountId, {core.Map optParams}) {
    var url = "{merchantId}/accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }
}

class AccountstatusesResource_ {

  final Client _client;

  AccountstatusesResource_(Client client) :
      _client = client;

  /**
   *
   * [request] - AccountstatusesCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountstatusesCustomBatchResponse> custombatch(AccountstatusesCustomBatchRequest request, {core.Map optParams}) {
    var url = "accountstatuses/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Retrieves the status of a Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [accountId] - The ID of the account.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountStatus> get(core.String merchantId, core.String accountId, {core.Map optParams}) {
    var url = "{merchantId}/accountstatuses/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the sub-accounts in your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of account statuses to return in the response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountstatusesListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{merchantId}/accountstatuses";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountstatusesListResponse.fromJson(data));
  }
}

class DatafeedsResource_ {

  final Client _client;

  DatafeedsResource_(Client client) :
      _client = client;

  /**
   *
   * [request] - DatafeedsCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatafeedsCustomBatchResponse> custombatch(DatafeedsCustomBatchRequest request, {core.Map optParams}) {
    var url = "datafeeds/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatafeedsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a datafeed from your Merchant Center account.
   *
   * [merchantId]
   *
   * [datafeedId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String merchantId, core.String datafeedId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds/{datafeedId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datafeedId == null) paramErrors.add("datafeedId is required");
    if (datafeedId != null) urlParams["datafeedId"] = datafeedId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a datafeed from your Merchant Center account.
   *
   * [merchantId]
   *
   * [datafeedId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Datafeed> get(core.String merchantId, core.String datafeedId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds/{datafeedId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datafeedId == null) paramErrors.add("datafeedId is required");
    if (datafeedId != null) urlParams["datafeedId"] = datafeedId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Registers a datafeed with your Merchant Center account.
   *
   * [request] - Datafeed to send in this request
   *
   * [merchantId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Datafeed> insert(Datafeed request, core.String merchantId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Lists the datafeeds in your Merchant Center account.
   *
   * [merchantId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatafeedsListResponse> list(core.String merchantId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatafeedsListResponse.fromJson(data));
  }

  /**
   * Updates a datafeed of your Merchant Center account. This method supports patch semantics.
   *
   * [request] - Datafeed to send in this request
   *
   * [merchantId]
   *
   * [datafeedId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Datafeed> patch(Datafeed request, core.String merchantId, core.String datafeedId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds/{datafeedId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datafeedId == null) paramErrors.add("datafeedId is required");
    if (datafeedId != null) urlParams["datafeedId"] = datafeedId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Datafeed.fromJson(data));
  }

  /**
   * Updates a datafeed of your Merchant Center account.
   *
   * [request] - Datafeed to send in this request
   *
   * [merchantId]
   *
   * [datafeedId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Datafeed> update(Datafeed request, core.String merchantId, core.String datafeedId, {core.Map optParams}) {
    var url = "{merchantId}/datafeeds/{datafeedId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datafeedId == null) paramErrors.add("datafeedId is required");
    if (datafeedId != null) urlParams["datafeedId"] = datafeedId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Datafeed.fromJson(data));
  }
}

class DatafeedstatusesResource_ {

  final Client _client;

  DatafeedstatusesResource_(Client client) :
      _client = client;

  /**
   *
   * [request] - DatafeedstatusesCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatafeedstatusesCustomBatchResponse> custombatch(DatafeedstatusesCustomBatchRequest request, {core.Map optParams}) {
    var url = "datafeedstatuses/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatafeedstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Retrieves the status of a datafeed from your Merchant Center account.
   *
   * [merchantId]
   *
   * [datafeedId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatafeedStatus> get(core.String merchantId, core.String datafeedId, {core.Map optParams}) {
    var url = "{merchantId}/datafeedstatuses/{datafeedId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datafeedId == null) paramErrors.add("datafeedId is required");
    if (datafeedId != null) urlParams["datafeedId"] = datafeedId;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatafeedStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the datafeeds in your Merchant Center account.
   *
   * [merchantId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatafeedstatusesListResponse> list(core.String merchantId, {core.Map optParams}) {
    var url = "{merchantId}/datafeedstatuses";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatafeedstatusesListResponse.fromJson(data));
  }
}

class InventoryResource_ {

  final Client _client;

  InventoryResource_(Client client) :
      _client = client;

  /**
   * Updates price and availability for multiple products or stores in a single request.
   *
   * [request] - InventoryCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InventoryCustomBatchResponse> custombatch(InventoryCustomBatchRequest request, {core.Map optParams}) {
    var url = "inventory/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InventoryCustomBatchResponse.fromJson(data));
  }

  /**
   * Updates price and availability of a product in your Merchant Center account.
   *
   * [request] - InventorySetRequest to send in this request
   *
   * [merchantId] - The ID of the managing account.
   *
   * [storeCode] - The code of the store for which to update price and availability. Use online to update price and availability of an online product.
   *
   * [productId] - The ID of the product for which to update price and availability.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InventorySetResponse> set(InventorySetRequest request, core.String merchantId, core.String storeCode, core.String productId, {core.Map optParams}) {
    var url = "{merchantId}/inventory/{storeCode}/products/{productId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (storeCode == null) paramErrors.add("storeCode is required");
    if (storeCode != null) urlParams["storeCode"] = storeCode;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InventorySetResponse.fromJson(data));
  }
}

class ProductsResource_ {

  final Client _client;

  ProductsResource_(Client client) :
      _client = client;

  /**
   * Retrieves, inserts, and deletes multiple products in a single request.
   *
   * [request] - ProductsCustomBatchRequest to send in this request
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductsCustomBatchResponse> custombatch(ProductsCustomBatchRequest request, {core.bool dryRun, core.Map optParams}) {
    var url = "products/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dryRun != null) queryParams["dryRun"] = dryRun;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductsCustomBatchResponse.fromJson(data));
  }

  /**
   * Deletes a product from your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String merchantId, core.String productId, {core.bool dryRun, core.Map optParams}) {
    var url = "{merchantId}/products/{productId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dryRun != null) queryParams["dryRun"] = dryRun;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a product from your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Product> get(core.String merchantId, core.String productId, {core.Map optParams}) {
    var url = "{merchantId}/products/{productId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Product.fromJson(data));
  }

  /**
   * Uploads a product to your Merchant Center account.
   *
   * [request] - Product to send in this request
   *
   * [merchantId] - The ID of the managing account.
   *
   * [dryRun] - Flag to run the request in dry-run mode.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Product> insert(Product request, core.String merchantId, {core.bool dryRun, core.Map optParams}) {
    var url = "{merchantId}/products";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dryRun != null) queryParams["dryRun"] = dryRun;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Product.fromJson(data));
  }

  /**
   * Lists the products in your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of products to return in the response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductsListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{merchantId}/products";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductsListResponse.fromJson(data));
  }
}

class ProductstatusesResource_ {

  final Client _client;

  ProductstatusesResource_(Client client) :
      _client = client;

  /**
   * Gets the statuses of multiple products in a single request.
   *
   * [request] - ProductstatusesCustomBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductstatusesCustomBatchResponse> custombatch(ProductstatusesCustomBatchRequest request, {core.Map optParams}) {
    var url = "productstatuses/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductstatusesCustomBatchResponse.fromJson(data));
  }

  /**
   * Gets the status of a product from your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [productId] - The ID of the product.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductStatus> get(core.String merchantId, core.String productId, {core.Map optParams}) {
    var url = "{merchantId}/productstatuses/{productId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductStatus.fromJson(data));
  }

  /**
   * Lists the statuses of the products in your Merchant Center account.
   *
   * [merchantId] - The ID of the managing account.
   *
   * [maxResults] - The maximum number of product statuses to return in the response, used for paging.
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductstatusesListResponse> list(core.String merchantId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{merchantId}/productstatuses";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (merchantId == null) paramErrors.add("merchantId is required");
    if (merchantId != null) urlParams["merchantId"] = merchantId;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductstatusesListResponse.fromJson(data));
  }
}

