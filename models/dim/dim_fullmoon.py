import holidays

def is_holiday(date_col):
    german_holidays = holidays.Germany()
    return date_col in german_holidays

def model(dbt, session):

    dbt.config(
        materialized="table",
        packages=["holidays"],
        enabled=False
    )

    order_df = dbt.ref("seed_full_moon_dates")

    rows = order_df.collect()

    result = []

    for row in rows:
        full_moon_date = row["FULL_MOON_DATE"]
        holiday = is_holiday(full_moon_date)

        result.append({
            "FULL_MOON_DATE": full_moon_date,
            "IS_HOLIDAY": holiday
        })

    return session.create_dataframe(result)