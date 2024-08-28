struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<u32>(reverseBits(arg_1.x ^ ~abs(arg_1.x)), ~(~_wgslsmith_add_u32(firstTrailingBit(6272u), abs(arg_1.x))), ~_wgslsmith_div_u32(~(~arg_1.x), min(~arg_1.x, arg_1.x)));
    var var_1 = firstLeadingBit(~u_input.a.x);
    var var_2 = arg_3.x;
    let var_3 = max(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(38716u, var_0.x, 4294967295u), vec3<u32>(arg_0, var_0.x, arg_0))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0, 0u), ~vec3<u32>(arg_0, 66934u, 4294967295u))), ~(~firstTrailingBit(vec3<u32>(arg_1.x, var_0.x, var_0.x) << (vec3<u32>(4294967295u, 45925u, 19050u) % vec3<u32>(32u)))));
    let var_4 = false;
    return ~reverseBits(_wgslsmith_clamp_vec2_u32(arg_1, var_0.zz, _wgslsmith_div_vec2_u32(~vec2<u32>(56978u, var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(17636u, var_3.x), arg_1))));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = abs(u_input.a.x);
    let var_1 = abs(_wgslsmith_dot_vec2_u32(func_3(~4328u, vec2<u32>(0u, 98175u), Struct_1(vec4<f32>(arg_0, arg_0, 999f, 966f), arg_0), vec4<f32>(arg_0, arg_0, -140f, arg_0)), vec2<u32>(8160u, ~48383u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 42088u, 15084u, 23416u), vec4<bool>(true, true, true, true))) % 32u));
    let var_2 = ~(~(var_1 ^ var_1) ^ ~(~1u)) << (min(7477u, var_1 & 44492u) % 32u);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-140f - 179f)), arg_0));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -682f), -612f), 1755f, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(var_3 * var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_3, -544f, arg_0)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-594f, -1080f, -1682f, arg_0), vec4<f32>(var_3, arg_0, var_3, var_3))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-212f, 675f, var_3, 3209f), vec4<f32>(-1373f, var_3, var_3, -357f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 480f, var_3, -1105f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, var_3, 304f, 1042f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))))));
    return -2147483647i;
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = min(_wgslsmith_mod_vec2_i32(abs(u_input.a.xx), vec2<i32>(0i, 2147483647i)), select(vec2<i32>(func_2(721f), (u_input.a.x & -2147483647i) >> (1u % 32u)), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-18592i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, -43771i)), arg_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(955f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f * -725f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f + -283f) - 872f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(657f, _wgslsmith_f_op_f32(619f + -1000f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 1000f), -578f))), 309f) + vec4<f32>(-583f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-820f, _wgslsmith_f_op_f32(f32(-1f) * -468f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1522f)), 1362f));
    return StorageBuffer(~(~47372i), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(30604u, 1u, 54008u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(~select(29229u, 87453u, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~max(1u, min(10108u, 4294967295u)));
    let var_1 = vec4<u32>(4294967295u, reverseBits(4294967295u), 1u, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), 114500u));
    var var_2 = var_1.yy;
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = func_1(vec2<bool>(false, any(vec2<bool>(true, false))));
}

