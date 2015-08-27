module VideoStreamer
  class ProcessVideoJob < Struct.new(:video_id)
    def enqueue(job)
      check_and_update_status

      job.delayed_reference_id   = video_id
      job.delayed_reference_type = 'VideoStreamer::Video'
      job.save!
    end

    def success(job)
      update_status('success')
    end

    def error(job, exception)
      update_status('temp_error')
      # Send email notification / alert / alarm
    end

    def failure(job)
      update_status('failure')
      # Send email notification / alert / alarm / SMS / call ... whatever
    end

    def perform
      video = VideoSteamer::Video.find video_id
      raise StandardError.new("Failed to process video with id: #{video.id}") unless video.process?
    end

    private
    def update_status(status)
      video = VideoStreamer::Video.find video_id
      video.status = status
      video.save!
    end

    def check_and_update_status
      video = VideoStreamer::Video.find video_id
      raise StandardError.new("Video: #{video.id} is not on status 'new' (status: #{video.status}") unless video.status == 'new'
      video.status = 'processing'
      video.save!
    end
  end
end