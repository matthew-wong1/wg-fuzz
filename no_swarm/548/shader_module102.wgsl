struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec2<f32>(1409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), -2353f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, arg_0)))))));
    global0 = array<vec3<i32>, 23>();
    let var_1 = vec2<i32>(-41094i, -2147483647i);
    let var_2 = vec3<bool>(!select(true, true, false), true, false);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0);
    return reverseBits(_wgslsmith_clamp_u32(firstLeadingBit(0u) ^ u_input.a, ~42784u & u_input.a, ~49069u));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec3<i32>, 23>();
    var var_0 = ~((arg_1.a.x << (func_3(_wgslsmith_f_op_f32(-610f + -519f)) % 32u)) & (func_3(_wgslsmith_f_op_f32(f32(-1f) * -290f)) ^ abs(~u_input.a)));
    var var_1 = Struct_2(vec3<u32>(firstTrailingBit(max(53900u, u_input.a) & _wgslsmith_clamp_u32(u_input.a, 32093u, u_input.a)), arg_1.a.x, _wgslsmith_add_u32(select(firstTrailingBit(u_input.a), 1u, true), 84200u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(340f, 1000f), false)), 142f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-984f, -222f), vec2<f32>(375f, -875f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1919f, 1007f) + vec2<f32>(173f, -550f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-850f, 832f), vec2<f32>(972f, 1120f))) - vec2<f32>(-426f, 100f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1577f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(759f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1649f)))));
    var var_3 = _wgslsmith_dot_vec4_u32(abs(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, 1u, 4294967295u, 31557u), vec4<u32>(var_1.a.x, u_input.a, u_input.a, var_1.a.x)))), ~(~abs(~vec4<u32>(u_input.a, 1u, var_1.a.x, 89392u))));
    return Struct_2(abs(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, var_1.a.x, u_input.a), var_1.a))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32) -> vec2<bool> {
    var var_0 = u_input.a;
    var_0 = 19034u;
    var var_1 = func_2(u_input.b.x, Struct_1(_wgslsmith_div_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(1u, abs(arg_2))), -u_input.c));
    var_1 = func_2(1i, Struct_1(var_1.a.yx, u_input.c));
    let var_2 = Struct_2(var_1.a);
    return vec2<bool>(all(vec3<bool>(arg_0.x, any(arg_0), true)), !(!arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    let var_0 = !select(select(!func_1(vec2<bool>(false, false), vec3<f32>(800f, -1506f, -811f), u_input.a), func_1(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_div_vec3_f32(vec3<f32>(-504f, -1067f, 193f), vec3<f32>(-845f, -263f, -1071f)), min(61426u, u_input.a)), true), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-62497i, u_input.c, 9497i), vec3<i32>(u_input.c, -6778i, u_input.b.x)) != (2147483647i >> (1u % 32u)), false), vec2<bool>(true, true));
    global0 = array<vec3<i32>, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, 2282f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, -805f, 1010f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(390f, 2482f, 1115f) + vec3<f32>(1277f, 1092f, 1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1586f, -467f, 1224f) * vec3<f32>(535f, 170f, -705f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(306f, -1223f, 200f), vec3<f32>(1075f, 429f, 1016f)))))))));
    var var_2 = func_2(-16819i, Struct_1(abs(abs(vec2<u32>(u_input.a, 67767u))) ^ vec2<u32>(u_input.a, 1u), u_input.b.x >> (1u % 32u)));
    var_2 = Struct_2(~(~(~(vec3<u32>(37806u, 1u, 0u) | vec3<u32>(u_input.a, u_input.a, var_2.a.x)))));
    var var_3 = 63862i;
    var var_4 = Struct_1(~(~(~(var_2.a.yy << (vec2<u32>(0u, 82315u) % vec2<u32>(32u))))), min(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 0i), global0[_wgslsmith_index_u32(var_2.a.x, 23u)] >> (var_2.a % vec3<u32>(32u))), -70396i));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, 329f), vec3<f32>(var_1.x, var_1.x, -1122f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-867f, var_1.x, 395f) + vec3<f32>(var_1.x, -1079f, 188f)))), !vec3<bool>(var_0.x, true, var_0.x))))) + vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(sign(1361f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_4.b), select(vec2<i32>(var_4.b, var_4.b), vec2<i32>(u_input.c, -1i), var_0)), _wgslsmith_add_i32(u_input.c, 0i)) << (~(~(~0u)) % 32u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 766f, 1006f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, var_1.x, var_1.x)))))));
}

