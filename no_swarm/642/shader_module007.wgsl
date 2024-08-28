struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1680f - _wgslsmith_f_op_f32(-293f + -1875f)), arg_1.a.a), -905f)), firstTrailingBit(i32(-1i) * -arg_1.a.c) >> (1434u % 32u), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-800f + var_0.b), arg_1.a.b, _wgslsmith_f_op_f32(-arg_1.a.a))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_1.a.b))), 470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)), var_0.b));
    let var_2 = 1u;
    var var_3 = -101f;
    var_3 = _wgslsmith_f_op_f32(1144f + _wgslsmith_f_op_f32(sign(-1406f)));
    return ~(~(6569u ^ select(1u, ~var_2, true)));
}

fn func_2() -> u32 {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_i32(min(select(~u_input.a.xy, ~(-u_input.a.xy), true), vec2<i32>(~_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 22871i), -47013i)), u_input.a.yx);
    var_0 = u_input.a.x << (~func_3(true, Struct_2(Struct_1(-735f, -1000f, u_input.a.x, true))) % 32u);
    let var_1 = 1u;
    var_0 = u_input.a.x;
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(~var_1, ~(~(~var_1))), min(var_1, 26267u));
}

fn func_1() -> Struct_2 {
    let var_0 = !vec4<bool>(true, any(vec2<bool>(true, false)) | true, !all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), any(vec3<bool>(true, true, false)) && (u_input.a.x <= u_input.a.x));
    let var_1 = u_input.a.yz;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, 1219f, -162f, -1370f) - vec4<f32>(468f, 133f, -1351f, 711f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 444f, -570f, 1274f)) - vec4<f32>(1625f, 1359f, -411f, 729f)), var_0))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-618f, -1478f))) * _wgslsmith_f_op_f32(-2289f + -1000f)), -845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f) + _wgslsmith_f_op_f32(select(-1142f, 631f, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-547f * -163f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(699f - -307f)))))));
    let var_3 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(select(24311u, 40024u, true), _wgslsmith_mult_u32(0u, 4294967295u), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(32354u, 4294967295u, 10264u), vec3<u32>(4294967295u, 0u, 0u))), ~vec4<u32>(26576u, 59562u, 1u, 0u)), 1u, reverseBits(4294967295u));
    var var_4 = Struct_3(select(!var_0.ww, select(vec2<bool>(var_0.x | var_0.x, false), vec2<bool>(true, true), !vec2<bool>(var_0.x, var_0.x)), !var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yx) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(max(255f, 335f)), var_2.x), var_0.xx))), var_2.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c, 176f) * -595f)), _wgslsmith_f_op_f32(949f * _wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(step(993f, var_2.x)))), abs(-8939i), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2425f + _wgslsmith_f_op_f32(-545f * -705f)), 2785f, _wgslsmith_f_op_f32(max(-521f, _wgslsmith_f_op_f32(f32(-1f) * -989f))), _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1200f, -215f, -709f, -505f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(344f, -991f)), _wgslsmith_f_op_f32(-370f * 602f), _wgslsmith_f_op_f32(1000f - -965f), -1616f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(550f, -1352f, -1000f, 906f)))));
    let var_1 = _wgslsmith_div_f32(-174f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1654f)), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -380f);
    var var_3 = func_1();
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b - 333f) - _wgslsmith_f_op_f32(1050f - _wgslsmith_f_op_f32(select(1916f, var_3.a.a, ~0u <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 23435u))))));
    var var_4 = Struct_4(Struct_2(func_1().a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i) | -_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_4.a.a.c, -8377i), var_4.a.a.c), u_input.a.yz, _wgslsmith_f_op_vec3_f32(max(var_0.xxz, vec3<f32>(1299f, _wgslsmith_f_op_f32(exp2(var_1)), var_4.a.a.b))));
}

