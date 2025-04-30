namespace :admin do
  desc "Create admin user"
  task create: :environment do
    begin
      admin = AdminUser.find_or_create_by!(email: 'admin@fake.com') do |user|
        user.password = 'password123'
        user.password_confirmation = 'password123'
      end
      puts "Admin user created successfully!"
      puts "Email: #{admin.email}"
    rescue => e
      puts "Error creating admin user: #{e.message}"
    end
  end
end 