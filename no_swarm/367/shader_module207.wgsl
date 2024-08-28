struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(1i, 1i), vec2<u32>(1u, 63917u)), Struct_2(vec2<i32>(i32(-2147483648), 17459i), vec2<u32>(0u, 77630u)), Struct_2(vec2<i32>(-37301i, 1244i), vec2<u32>(69790u, 0u)), Struct_2(vec2<i32>(0i, 0i), vec2<u32>(47687u, 1u)), Struct_2(vec2<i32>(0i, -1i), vec2<u32>(24741u, 73029u)), Struct_2(vec2<i32>(2147483647i, 1i), vec2<u32>(37130u, 2678u)), Struct_2(vec2<i32>(78460i, -1i), vec2<u32>(17747u, 48391u)));

var<private> global1: i32 = 8799i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = u_input.b.x;
    let var_0 = max(~(~vec2<u32>(1u, 1u)), vec2<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(18897u, 4294967295u))), 1u));
    global1 = ~(51359i ^ ~_wgslsmith_div_i32(u_input.a.x, min(u_input.a.x, 2147483647i)));
    global0 = array<Struct_2, 7>();
    var var_1 = Struct_3(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec2<bool>(true, false)))), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), any(vec2<bool>(true, false)))), true), u_input.a.x, firstTrailingBit(vec2<u32>(24334u, _wgslsmith_sub_u32(52058u, var_0.x))) ^ var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-341f, -674f) + 254f), _wgslsmith_f_op_f32(step(arg_0, arg_0))));
    return _wgslsmith_f_op_f32(-var_1.e);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-108f - -1000f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f - 517f));
    var var_2 = vec2<u32>(min(~4294967295u, ~(~39759u)) << (0u % 32u), ~1u >> (_wgslsmith_add_u32(1u, 1u) % 32u));
    global1 = 27493i;
    let var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 27324u)), firstLeadingBit(vec2<u32>(var_2.x, 37873u))), 0u, ~(~4294967295u));
    return select(!vec2<bool>(!any(vec3<bool>(true, arg_0, arg_0)), !arg_0 || false), vec2<bool>(arg_0, true), select(!vec2<bool>(true, select(arg_0, true, false)), select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(false, false, arg_0)), arg_0), !select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, true))), arg_0));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = select(func_2(u_input.a.x <= arg_2.e), !vec2<bool>(true, !arg_2.c), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -1836f) + _wgslsmith_f_op_f32(-261f - arg_1))), -2276f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-599f, arg_2.b.x, -577f, arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(843f, -237f, -460f, arg_1) - vec4<f32>(-641f, arg_1, -1000f, 299f))))))));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_1);
    var_0 = vec2<bool>(true || (_wgslsmith_f_op_f32(-1703f * _wgslsmith_f_op_f32(-1113f + arg_2.a)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_div_f32(-995f, arg_1)))), all(select(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, arg_0.x), arg_2.d), !select(vec3<bool>(true, arg_0.x, var_0.x), vec3<bool>(arg_0.x, false, var_0.x), false), select(!vec3<bool>(arg_0.x, arg_2.c, false), !vec3<bool>(arg_0.x, false, var_0.x), vec3<bool>(var_0.x, arg_2.c, arg_0.x)))));
    return vec2<u32>(1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(all(vec3<bool>(true, u_input.a.x <= -26362i, false)), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true))));
    let var_1 = vec4<u32>(0u, ~_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(8794u, 10906u), vec2<u32>(302u, 59360u))), 58145u), 1u, abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(27873u, 25020u, 61469u, 38752u), vec4<u32>(4294967295u, 1u, 1u, 17425u)))));
    let var_2 = reverseBits(vec2<u32>(var_1.x, ~_wgslsmith_mod_u32(17175u, ~var_1.x)));
    let var_3 = Struct_2(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.b.x, -34562i)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(select(var_1.yz | var_1.zz, select(vec2<u32>(var_2.x, var_1.x), var_1.xw, vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), func_1(vec2<bool>(true, true), -617f, Struct_1(551f, vec3<f32>(735f, -1930f, 791f), true, false, u_input.a.x)) ^ vec2<u32>(77812u, var_1.x)), vec2<u32>(~11889u, select(~var_2.x, var_2.x | var_2.x, any(vec2<bool>(true, false)))), vec2<u32>(~(var_1.x ^ 64866u), max(func_1(vec2<bool>(false, true), 1000f, Struct_1(-1000f, vec3<f32>(583f, 889f, 231f), false, true, u_input.b.x)).x, abs(var_1.x)))));
    var var_4 = ~var_3.a.x;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1132f, -1072f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(270f)), -1000f))))), _wgslsmith_div_f32(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1081f)))), 416f);
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-456f, 107f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.x, 309f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f - var_5.x)))))));
    global1 = 25298i;
    let var_7 = ~firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x << ((~51949u << (var_2.x % 32u)) % 32u), -265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_6.x)) - var_6.x))), ~(u_input.a.x << (~6839u % 32u)));
}

