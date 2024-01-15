Rails.application.config.after_initialize do |app|
  app.config.active_record.yaml_column_permitted_classes  ||= []
  ActiveRecord.yaml_column_permitted_classes =
    app.config.active_record.yaml_column_permitted_classes += [
      Symbol,
      Date,
      Time,
      ActiveModel::Attribute.const_get(:FromDatabase, false),
      ActiveModel::Attribute.const_get(:WithCastValue, false),
      ActiveSupport::HashWithIndifferentAccess,
      ActiveSupport::TimeWithZone,
      ActiveSupport::TimeZone,
    ]
end
