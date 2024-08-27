struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(21245u, 1u, 1u), vec3<u32>(25269u, 0u, 0u), vec3<u32>(58690u, 91134u, 51944u), vec3<u32>(12186u, 4294967295u, 22208u), vec3<u32>(1u, 48390u, 1u), vec3<u32>(4294967295u, 6671u, 0u), vec3<u32>(44584u, 51077u, 4294967295u), vec3<u32>(80971u, 100019u, 0u), vec3<u32>(4294967295u, 1u, 34003u), vec3<u32>(17678u, 4294967295u, 52003u), vec3<u32>(129187u, 36741u, 1u), vec3<u32>(1u, 1000u, 25423u), vec3<u32>(1u, 0u, 139187u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(1210f, 1110f, false))), _wgslsmith_div_vec3_f32(vec3<f32>(2095f, arg_1.x, arg_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(1253f, arg_1.x, arg_1.x), vec3<f32>(-973f, 1548f, 802f)))))) - vec3<f32>(1882f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * arg_0.b), _wgslsmith_div_f32(arg_1.x, 3169f)))));
    let var_1 = Struct_1(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1644f, var_1.b, -1551f), vec3<f32>(var_0.x, -170f, arg_0.b)) * vec3<f32>(var_1.b, 280f, arg_0.b)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-992f + 106f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-171f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1833f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))), arg_1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, 2583f, var_0.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1461f, 337f, -1890f), vec3<f32>(381f, arg_1.x, arg_1.x))))))));
    global0 = array<vec3<u32>, 13>();
    return -2078f;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(370f, 700f)), _wgslsmith_f_op_f32(abs(1518f)), -1110f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1435f, 429f, 1385f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, 816f, 1272f)))), vec3<f32>(_wgslsmith_f_op_f32(-1213f + -1319f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !vec3<bool>(true, select(arg_0, true, true), arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1228f))), 811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(func_3(Struct_1(0i, -2162f), vec2<f32>(-484f, _wgslsmith_f_op_f32(floor(-806f)))))));
    var var_1 = Struct_1(1i >> (~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21216u, u_input.a), vec2<u32>(1u, 4294967295u)), u_input.a, 4294967295u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1660f - 1640f) - _wgslsmith_div_f32(var_0.x, var_0.x))));
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(1i, -23821i), _wgslsmith_sub_i32(var_1.a & -2246i, -2147483647i)) & -31940i, firstTrailingBit(25129i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = func_2(!(any(arg_1.a.a) | ((u_input.a | 1u) == ~u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.a.c);
    var var_2 = _wgslsmith_f_op_f32(round(arg_1.a.c));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.c - arg_1.a.c)) - var_1), -1316f, var_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1272f, arg_2.a.c, var_1, -416f) * vec4<f32>(var_1, 1870f, 1000f, arg_1.a.c))))));
    let var_4 = _wgslsmith_f_op_f32(ceil(-1000f));
    return abs(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_sub_i32(-42928i, -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -2147483647i >> (1u % 32u), max(40712i, -13421i)), ~(-29732i)));
    var_0 = min(-(~(func_1(Struct_3(Struct_2(vec3<bool>(false, false, false), Struct_1(12276i, 1000f), -1000f, false)), Struct_3(Struct_2(vec3<bool>(false, false, true), Struct_1(-2147483647i, 310f), -940f, false)), Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(1i, 900f), 874f, false))) & ~0i)), 0i);
    let var_1 = 23061i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_1, var_1, -32640i)), abs(vec3<i32>(var_1 | var_1, var_1, -2147483647i))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1233f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1190f, 1856f) * vec2<f32>(847f, -402f))) - vec2<f32>(383f, -1711f)))));
}

