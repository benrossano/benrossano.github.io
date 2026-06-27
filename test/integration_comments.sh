#!/usr/bin/env bash
set -euo pipefail

tmp_dir="$(mktemp -d)"
giscus_override="${tmp_dir}/comments-giscus-override.yml"
giscus_site="${tmp_dir}/site-giscus"
disqus_override="${tmp_dir}/comments-disqus-override.yml"
disqus_site="${tmp_dir}/site-disqus"

cleanup() {
  rm -rf "${tmp_dir}"
}
trap cleanup EXIT

cat >"${giscus_override}" <<'YAML'
giscus:
  repo: alshedivat/al-folio
  repo_id: R_kgDOExample
  category: Comments
  category_id: DIC_kwDOExample
external_sources: []
defaults:
  - scope:
      path: ""
    values:
      giscus_comments: true
YAML

bundle exec jekyll build --config "_config.yml,${giscus_override}" -d "${giscus_site}" >/dev/null

grep -R -q --include='*.html' 'https://giscus.app/client.js' "${giscus_site}"
if grep -R -q --include='*.html' 'giscus comments misconfigured' "${giscus_site}"; then
  echo "unexpected giscus misconfiguration warning in generated output" >&2
  exit 1
fi

cat >"${disqus_override}" <<'YAML'
external_sources: []
defaults:
  - scope:
      path: ""
    values:
      disqus_comments: true
YAML

bundle exec jekyll build --config "_config.yml,${disqus_override}" -d "${disqus_site}" >/dev/null

grep -R -q --include='*.html' 'id="disqus_thread"' "${disqus_site}"
grep -R -q --include='*.html' '.disqus.com/embed.js' "${disqus_site}"

echo "comments integration checks passed"
