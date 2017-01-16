


docker run -d -p 3000:3000 us.gcr.io/livhub-give/livhub-v0.0.1

docker tag livhub-give us.gcr.io/livhub-give/livhub-v0.0.0

gcloud docker -- push us.gcr.io/livhub-give/livhub-v0.0.0

kubectl run livhub-give --image=us.gcr.io/livhub-give/livhub-v0.0.0 --port=3000 --replicas=3 --labels=app=give

kubectl rolling-update livhub-give-rc --filename rc.json