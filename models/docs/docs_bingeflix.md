# Bingeflix Docs
This file contains docs blocks for Bingeflix sources

# This section contains documentation from the Bingeflix Users table.

## Events
{% docs table_events %}
This table contains information about the behavioral events of users while they interact with the Bingeflix platform.
{% enddocs %}

{% docs bingeflix_events_session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}

{% docs bingeflix_events_created_at %}
When the event was logged.
{% enddocs %}

{% docs bingeflix_events_event_name %}
The name of the event.
{% enddocs %}

{%docs bingeflix_event_id %}
The unique identifier of the event.
{% enddocs %}

## Subscription Plans
{%docs table_subscription_plans %}
This table contains information about various subscription plans available on Bingeflix.
{% enddocs %}

{%docs bingeflix_subscription_plans_subscription_plan_id %}
The unique identifier of the subscription plan.
{% enddocs %}

{%docs bingeflix_subscription_plans_plan_name %}
The name of the subscription plan.
{% enddocs %}

{%docs bingeflix_subscription_plans_pricing %}
The price of the subscription.
{% enddocs %}

{%docs bingeflix_subscription_plans_payment_period %}
The recurring payment period for the subscription.
{% enddocs %}

## Subscriptions
{% docs table_subscriptions%}
This model contains information about Bingeflix subscriptions.
{% enddocs %}

{%docs bingeflix_subscriptions_subscription_id%}
The unique identifier for the subscription.
{% enddocs %}

{%docs bingeflix_subscriptions_subscription_plan_id %}
The subscription identifier.
{% enddocs %}

{%docs bingeflix_subscriptions_starts_at %}
When the subscription started.
{% enddocs %}

{%docs bingeflix_subscriptions_ends_at %}
When the subscription ends. This value is NULL if the subscription is active.
{% enddocs %}

## Users
{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user. 
{% enddocs %}

{%docs table_users %}
This is table contains information about Bingeflix users.
{% enddocs %}

{%docs bingeflix_users_created_at %}
When the user was created.
{% enddocs %}

{%docs bingeflix_users_phone_number %}
The user's phone number.
{% enddocs %}

{%docs bingeflix_users_deleted_at %}
When the user's account was deleted. The value is NULL if the account has not been deleted.
{% enddocs %}

{%docs bingeflix_users_username %}
The username for login to Bingeflix.
{% enddocs %}

{%docs bingeflix_users_name %}
The name of the user.
{% enddocs %}

{%docs bingeflix_users_sex %}
The user's sex at birth.
{% enddocs %}

{%docs bingeflix_users_email %}
 The user's email address.
{% enddocs %}

{%docs bingeflix_users_birthdate %}
The user's birthdate.
{% enddocs %}

{%docs bingeflix_users_region %}
Where the user resides (i.e. the state or province).
{% enddocs %}

{%docs bingeflix_users_country %}
Where the user resides.
{% enddocs %}