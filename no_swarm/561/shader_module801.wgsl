struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a))), arg_1.a)));
    global2 = array<vec2<f32>, 29>();
    let var_1 = select(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b, 14956u, 1u)), firstTrailingBit(vec4<u32>(arg_2, 4294967295u, 1u, arg_2))), ~1u), !(any(vec4<bool>(false, arg_0, arg_0, arg_0)) | (1000f != var_0.x))) >= ~u_input.a;
    global3 = -1i;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -860f)))))), arg_1.a));
    return _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-349f))));
}

fn func_3() -> u32 {
    var var_0 = ~(~(~abs(~vec2<u32>(4288u, u_input.b))));
    var_0 = vec2<u32>(~(~(~var_0.x)), var_0.x << (25107u % 32u));
    let var_1 = Struct_3(all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, false), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true))), vec3<bool>(all(vec3<bool>(true, true, true)), true, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1148f, -1033f)), _wgslsmith_f_op_f32(f32(-1f) * -108f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(210f - 1588f), global0.x > u_input.c)), _wgslsmith_f_op_f32(func_1(all(vec2<bool>(true, true)), Struct_2(1000f), u_input.a)), _wgslsmith_f_op_f32(-1446f - 320f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(366f, 611f, 449f, -1063f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, 565f, -813f, -1845f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-697f, -1000f, -258f, -337f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-930f, -589f, -796f, 1119f))))), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-785f, 795f)) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-503f)) + -491f))), _wgslsmith_div_f32(1452f, 111f));
    global0 = min(select(vec3<i32>(~global0.x, u_input.c << (u_input.a % 32u), -u_input.c), ~vec3<i32>(1i, 1i, 5179i) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, 1i, 2147483647i)), var_1.b), firstLeadingBit(select(vec3<i32>(-4652i, 1i, -35330i) | vec3<i32>(-3263i, -1i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -25922i, -2147483647i), vec3<i32>(1i, global0.x, u_input.c)), var_1.a))) << (vec3<u32>(54598u, ~(_wgslsmith_sub_u32(56220u, 17971u) >> (select(0u, u_input.a, var_1.b.x) % 32u)), 0u) % vec3<u32>(32u));
    global2 = array<vec2<f32>, 29>();
    return var_0.x << (u_input.b % 32u);
}

fn func_2() -> vec4<u32> {
    var var_0 = ~max(vec3<u32>(_wgslsmith_div_u32(u_input.b, 1u), 4294967295u, u_input.a), vec3<u32>(func_3(), max(0u << (u_input.b % 32u), ~u_input.a), ~1u));
    let var_1 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, min(u_input.c, global0.x) >= _wgslsmith_div_i32(u_input.c, -17308i), select(true, u_input.c > global0.x, false), true), !vec4<bool>(true, any(vec2<bool>(false, true)), true, any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), false, true, -1i < u_input.c))), true);
    let var_2 = vec3<i32>(u_input.c, abs(-select(-11133i, u_input.c, var_1.x) & -2147483647i), -(~1i));
    var var_3 = u_input.b;
    let var_4 = ~(~abs(vec4<u32>(var_0.x, ~1u, ~var_0.x, 1u)));
    return vec4<u32>(~(~4294967295u), ~select(var_4.x, abs(46736u), all(var_1)), 0u, var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(146f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(false, Struct_2(462f), 50135u)), _wgslsmith_f_op_f32(f32(-1f) * -468f)))), -1767f, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1159f, -774f, var_0.a)))))))));
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1006f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + 1856f), _wgslsmith_div_f32(var_1.x, -964f)))))));
    let var_3 = _wgslsmith_mod_vec4_u32(~func_2(), ~(~vec4<u32>(5151u, min(u_input.a, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.b)), 21591u)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -377f);
    let x = u_input.a;
    s_output = StorageBuffer(global0.xz);
}

