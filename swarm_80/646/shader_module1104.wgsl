struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(~(-44994i), firstLeadingBit(reverseBits(-564i)), 1i), reverseBits(vec3<i32>(1i, firstTrailingBit(58514i), ~(-5885i)))), ~0u, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, 2147483647i, -57978i), vec4<i32>(~56861i, 1i, -1i, -1i)) | (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-37457i, -12186i, 10148i)) << (0u % 32u)), _wgslsmith_add_i32(2147483647i ^ _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, 0i)), vec2<i32>(44667i, -2147483647i)), -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -12051i, 1i), vec4<i32>(24347i, -23919i, -39400i, -2147483647i)))), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(~71515i, firstLeadingBit(0i)), -(i32(-1i) * -21375i) & select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 14733i), vec2<i32>(23279i, -1i)), 15608i, false)));
}

