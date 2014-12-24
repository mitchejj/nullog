workers Integer(ENV['PUMA_WORKERS'] || 4)          ## heroku run cat /proc/cpuinfo
threads Integer(ENV['MIN_THREADS']  || 1), Integer(ENV['MAX_THREADS'] || 16)

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000