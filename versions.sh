VERSIONS=(1.19)

for version in "${VERSIONS[@]}"; do
  if [[ ! -e "${version}" ]]; then
    mkdir -p "${version}"
  fi

  cp template.Dockerfile "./${version}/Dockerfile"
  sed -i '' 's/{{ NGINX_VERSION }}/'"${version}"'/' "${version}/Dockerfile"
done
