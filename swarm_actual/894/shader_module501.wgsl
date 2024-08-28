struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(sign(547f)), any(arg_1.e.yw))), _wgslsmith_f_op_f32(348f * arg_1.b)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = ~4294967295u;
    global1 = _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(f32(-1f) * -156f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(626f, arg_1.d.x)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-462f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -1000f, 572f, arg_1.d.x) * vec4<f32>(arg_1.d.x, var_0.x, 1902f, var_1.a))))));
    return !vec2<bool>(arg_1.e.x, select(!arg_1.e.x && arg_1.e.x, !(true && arg_1.e.x), false));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, -1255f)), -258f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(499f)))))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1485f + 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(465f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-536f - 599f))), _wgslsmith_f_op_f32(f32(-1f) * -993f)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 51766u), min(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(42732u, 4294967295u), vec2<u32>(27340u, 34714u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(129f, 350f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 2042f) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-790f)) - _wgslsmith_f_op_f32(f32(-1f) * -193f)))), vec4<bool>(all(vec2<bool>(true, true)), (u_input.b >= select(1i, 1i, true)) || true, any(select(func_3(vec3<i32>(-2147483647i, -16778i, u_input.b), Struct_3(157f, 377f, vec2<u32>(4294967295u, 1u), vec3<f32>(133f, 1250f, 805f), vec4<bool>(false, false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true))), !all(vec3<bool>(false, true, true))));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(476f))))), -878f));
    var var_1 = 2147483647i;
    global0 = u_input.a;
    return -491f;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = -u_input.b;
    let var_1 = ~firstTrailingBit(abs(vec3<i32>(1i, -var_0, 59652i)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(625f - -2058f));
    global0 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, arg_3.c.x), ~vec3<u32>(arg_2.c.x, arg_3.c.x, u_input.a)), 72163u)) >> (~38461u % 32u);
    global0 = arg_3.c.x;
    return 1u;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_u32(u_input.a, func_4(u_input.b, Struct_4(arg_1.a), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1470f - 447f) + _wgslsmith_f_op_f32(486f - -744f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 866f), abs(vec2<u32>(1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-694f)), -319f, -283f), arg_1.a.a), Struct_3(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -656f), vec2<u32>(33935u, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(677f, 1104f, 204f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-281f, -1430f, -984f)))), vec4<bool>(true, !arg_0, true, true))));
    let var_1 = vec2<u32>(1u, u_input.a);
    global1 = -1000f;
    var var_2 = 40852u;
    let var_3 = vec2<u32>(min(4294967295u, 4294967295u), ~1u ^ u_input.a) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 0u), vec2<u32>(_wgslsmith_mult_u32(var_1.x, 1u), var_1.x)) % vec2<u32>(32u));
    return min(vec3<i32>(-1i) * -select(-vec3<i32>(2147483647i, 27115i, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, 26588i), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, -19910i, -47420i)), arg_1.a.a.x && true), firstTrailingBit(vec3<i32>(u_input.b, _wgslsmith_sub_i32(1i, select(u_input.b, 1i, arg_1.a.a.x)), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-73081i, u_input.b), vec2<i32>(u_input.b, -32945i)), u_input.b, u_input.b)), ~(~func_1(var_0.a.x, Struct_4(Struct_1(var_0.a)))), select(select(!var_0.a.xyz, !vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(var_0.a.x, false, var_0.a.x)), !(!vec3<bool>(false, true, var_0.a.x)), !any(var_0.a.zzz))), vec4<i32>(45902i, abs(abs(0i)) | func_1(true, Struct_4(Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)))).x, -(~0i), u_input.b), 10819i, -165f);
}

