# Vonage Video Sample Application

This is a simple demo app that shows how you can use the Vonage-Ruby-SDK to create Sessions,
generate Tokens with those Sessions, and then pass these values to a JavaScript client that can
connect and conduct a group chat.

## Pre-requisites

To run the app you will need the following to be installed on your system:

- [Git](https://git-scm.com/)
- [Ruby](https://www.ruby-lang.org/en/) (note: the `Gemfile` specifies Ruby 3.0 but you can edit the file as neccessary for your local version or install additional versions if you are using a Ruby version manager)
- [Bundler](http://bundler.io)
- [Ngrok](https://ngrok.com/)

You will also need to sign up for a [Vonage Developer Account](https://developer.vonage.com/sign-up).

## Running the App from your terminal

1. Clone the repository
    ```
    git clone https://github.com/Vonage-Community/sample-video_api-sinatra-ruby_sdk.git
    ```

2. Navigate to newly cloned repository
    ```
    cd cd sample-video_api-sinatra-ruby_sdk/
    ```

3. Install the dependencies
    ```
    bundle install
    ```
4. Copy and/or rename the `.env.example` file to `.env`

5. Sign into the [Vonage Dashboard](https://dashboard.nexmo.com/), navigate to the [Applications page](https://dashboard.nexmo.com/applications), and complete the following steps:
  - Click on 'Create a new application'
  - Give the application a name
  - Click on 'Generate public and private key'
  - Save the generated `private.key` file to the root directory of your locally cloned repository
  - Under 'Capabilities' enable 'Video'
  - Click on 'Generate new application'
  - Copy the Application ID for the newly generated Vonage Application to the `.env` file created in step 4

6. Launch the app
   ```
   bundle exec rackup -p 4567
   ```

7. Navigate to <http://localhost:4567> in your browser

8. In a separate terminal tab, launch ngrok
   ```
   ngrok http 4567
   ```

9. On a separate device, navigate to the Forwarding url created by ngrok

10. Enjoy your two-way video call!
