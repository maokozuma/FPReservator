json.extract! reservable_schedule, :id, :fp_id, :starting_time, :ending_time, :date, :created_at, :updated_at
json.url reservable_schedule_url(reservable_schedule, format: :json)
