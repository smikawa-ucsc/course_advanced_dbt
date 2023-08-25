WITH

events AS (
    SELECT
        user_id,
        DATE(created_at) AS created_date,
        event_id AS login_id
    FROM
        {{ ref('stg_bingeflix_events') }}
    WHERE
        event_name = 'User Logged In'
),

date_spine AS (
    SELECT
        calendar_date,
        date_week
    FROM
        {{ ref('dim_dates') }}
),

final AS (
    SELECT
        --MD5(date_week || user_id) AS surrogate_key,
        {{ dbt_utils.generate_surrogate_key(['date_week', 'user_id']) }} AS surrogate_key,
        date_week,
        user_id,
        COUNT(DISTINCT login_id) AS login_count
    FROM
        date_spine
        LEFT JOIN events ON date_spine.calendar_date = events.created_date
    GROUP BY 1, 2, 3
)

SELECT * FROM final
