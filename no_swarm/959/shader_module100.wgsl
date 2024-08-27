struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> u32 {
    return u_input.c;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = abs(~vec3<u32>(func_2(u_input.a, _wgslsmith_f_op_f32(round(arg_0.b.x)), u_input.e), ~(~u_input.c), ~50288u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2114f);
    let var_2 = any(!vec2<bool>(~var_0.x < var_0.x, false));
    var_0 = ~_wgslsmith_mult_vec3_u32(~firstLeadingBit(~u_input.b), reverseBits(u_input.b));
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(u_input.e, reverseBits(u_input.d)), 0i, 1i);
    return 1u;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1171f - -1144f), _wgslsmith_f_op_f32(442f * 2107f), _wgslsmith_f_op_f32(f32(-1f) * -137f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-298f, -933f, 487f), vec3<f32>(1124f, 110f, 1694f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1591f, -676f, -2163f) * vec3<f32>(493f, -177f, -686f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1189f, var_0.x, -1904f)))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -974f))), _wgslsmith_f_op_f32(1467f + 1093f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.zy))))), vec2<f32>(_wgslsmith_f_op_f32(-624f * 543f), -804f));
    var var_3 = ~firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(44535u, u_input.c), vec2<u32>(36399u, 113090u)) ^ ~vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.b.x, u_input.b.x))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~func_1(Struct_1(vec2<f32>(563f, 728f), vec2<f32>(-576f, 132f))) << (u_input.c % 32u), ~u_input.b.x, u_input.b.x, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, u_input.c, 38510u), 1u)), vec4<u32>(func_3(), _wgslsmith_mod_u32(0u, u_input.b.x), ~u_input.c, u_input.b.x));
    var_0 = ~(~vec4<u32>(func_2(~u_input.a, 1f, -u_input.d), ~57427u, reverseBits(~var_0.x), 4294967295u | var_0.x));
    var var_1 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(func_3(), var_0.x, u_input.c)), ~(_wgslsmith_mult_vec3_u32(var_0.wxx, reverseBits(vec3<u32>(var_0.x, 1u, 4294967295u))) >> (u_input.b % vec3<u32>(32u))));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -12967i, u_input.d, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, -41928i, 1i), vec4<i32>(u_input.e, u_input.a.x, u_input.d, -2147483647i))), -23423i, select(~u_input.a.x, u_input.a.x, true)), 2147483647i, _wgslsmith_mod_i32(1i, ~_wgslsmith_mod_i32(0i, u_input.e))), 5412i, u_input.e, reverseBits(~u_input.d));
    let var_3 = 444f;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(var_1.x, 20413u), vec2<u32>(1u, var_1.x)), var_1.zx), var_1.xx), vec2<u32>((var_0.x << (var_1.x % 32u)) & 55424u, 4294967295u), any(vec2<bool>(true, true))), vec2<u32>(u_input.b.x, abs(~(~7950u))));
}

