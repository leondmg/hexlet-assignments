# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  v1_major, v1_minor = version1.split('.').map(&:to_i)
  v2_major, v2_minor = version2.split('.').map(&:to_i)
  result = v1_major <=> v2_major
  result.zero? ? v1_minor <=> v2_minor : result
end
# END
