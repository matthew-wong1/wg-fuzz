struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -185f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> i32 {
    global0 = _wgslsmith_f_op_f32(exp2(arg_1));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 1000f) - _wgslsmith_f_op_f32(-817f + -161f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -324f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1834f * 1306f))))));
    let var_0 = _wgslsmith_f_op_f32(min(910f, -1426f));
    let var_1 = ~max(vec4<u32>(u_input.a.x, ~u_input.d.x >> (1u % 32u), firstLeadingBit(~31185u), u_input.d.x), ~vec4<u32>(u_input.c, firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 4294967295u, 44406u), vec4<u32>(u_input.a.x, u_input.d.x, u_input.c, 7919u)), max(u_input.a.x, 20508u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1580f * _wgslsmith_div_f32(-838f, -1609f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(var_0, 1345f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), arg_1)))));
    return _wgslsmith_mod_i32(firstLeadingBit(58876i), arg_0);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global1 = 207f;
    let var_0 = select(vec3<bool>(~u_input.b.x >= func_3(u_input.b.x, arg_0.x, -1i), !any(vec2<bool>(true, true)), true), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), (703f <= arg_0.x) & true), select(!vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec3<bool>(~u_input.c != u_input.c, !any(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    global0 = 296f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), _wgslsmith_f_op_f32(round(136f)))));
    var var_1 = Struct_1(arg_0.zzw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1691f, arg_0.x, arg_0.x) - vec4<f32>(247f, arg_0.x, -294f, 978f)))), var_0.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, -493f)), arg_0.x));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_f32(abs(795f)));
    global0 = -372f;
    var var_0 = u_input.a;
    global1 = -1306f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(649f, -1521f, 1679f), vec3<f32>(-262f, -828f, 1021f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 770f, -1203f) - vec3<f32>(-452f, 1263f, -112f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -693f))), -123f, -1022f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1206f, 2044f, -803f, -651f), vec4<f32>(2765f, -1292f, 1252f, 283f)))), vec4<f32>(_wgslsmith_f_op_f32(-1517f * 610f), _wgslsmith_f_op_f32(select(-114f, -421f, false)), 336f, 1f), vec4<bool>(true, true, true, true)))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1());
    let var_0 = -min(u_input.b.xxx, ~u_input.b.ywx);
    let var_1 = vec2<i32>(~u_input.b.x | 9836i, abs(~_wgslsmith_div_i32(1444i, var_0.x << (0u % 32u))));
    global1 = _wgslsmith_f_op_f32(ceil(854f));
    var var_2 = i32(-1i) * -_wgslsmith_mult_i32(abs(var_0.x) | (i32(-1i) * -5179i), firstLeadingBit(var_1.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1834f))), _wgslsmith_f_op_f32(abs(-936f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-781f, -239f)) - _wgslsmith_f_op_f32(trunc(-264f))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))), 380f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-955f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(211f, -1722f, -1080f, 256f))))))), 2312f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1477f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(580f - _wgslsmith_div_f32(var_3.x, 326f))))), 1186f, _wgslsmith_f_op_vec2_f32(var_3.yy - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -324f) - var_3.xz), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), vec3<u32>(0u, select(~4584u, 0u, true) & ~52993u, abs(u_input.a.x)));
}

