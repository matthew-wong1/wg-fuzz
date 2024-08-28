struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<Struct_4, 19>;

var<private> global3: array<vec2<f32>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 906f))) - _wgslsmith_f_op_f32(f32(-1f) * -2231f))));
    let var_0 = false;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, -2589f, 650f, 783f) * vec4<f32>(arg_3, -892f, 365f, arg_0))) * vec4<f32>(_wgslsmith_div_f32(-1000f, arg_3), -733f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-429f * arg_3))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(377f)), -342f, _wgslsmith_f_op_f32(arg_3 - -160f), arg_0), vec4<f32>(_wgslsmith_f_op_f32(ceil(773f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_3), 1f), select(vec4<bool>(true, var_0, false, var_1.a.x), vec4<bool>(true, false, true, false), var_1.a.x))))));
    global3 = array<vec2<f32>, 31>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-474f)))))));
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_4, 19>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(528f))));
    global1 = var_0;
    let var_1 = abs(2147483647i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-364f, -1642f)), var_0))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(-810f)), var_1, Struct_1(vec2<bool>(true, true), ~1u), var_0)));
    return Struct_4(-456f, Struct_1(select(vec2<bool>(select(true, true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), ~(~_wgslsmith_mult_u32(1u, 4294967295u))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f * var_0)), Struct_2(Struct_1(vec2<bool>(true, true), 40684u)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    global2 = array<Struct_4, 19>();
    global1 = arg_0;
    global1 = arg_0;
    var var_0 = func_2();
    var var_1 = var_0.b;
    return min(firstTrailingBit(u_input.a.x), u_input.a.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> Struct_3 {
    global2 = array<Struct_4, 19>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f * _wgslsmith_f_op_f32(step(-480f, -648f)))), 2147483647i, Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), firstLeadingBit(4294967295u)), 631f)), func_2().b, ~1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-179f)), _wgslsmith_f_op_f32(f32(-1f) * -728f)))), func_2().e);
    global0 = 1185f;
    let var_1 = 33208i;
    global2 = array<Struct_4, 19>();
    return Struct_3(Struct_1(var_0.b.a, var_0.e.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(-var_0.d)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1707f * _wgslsmith_f_op_f32(var_0.a - -2187f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2441f, var_0.d)) - -1104f))), false, select(vec2<bool>(func_2().b.a.x, var_0.e.a.a.x), var_0.e.a.a, false), ~vec3<u32>(abs(1u), _wgslsmith_div_u32(~var_0.c, firstTrailingBit(var_0.b.b)), firstTrailingBit(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 31>();
    let var_0 = func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(func_1(-794f, vec2<bool>(true, true)), 1i), u_input.a.x, u_input.a.x), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -12213i), u_input.a.yw), u_input.a.x, select(firstTrailingBit(-5347i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 15993i, 50436i, -2147483647i), vec4<i32>(u_input.a.x, -18494i, u_input.a.x, -2147483647i)), true))), min(_wgslsmith_dot_vec2_i32(u_input.a.wz, ~(-u_input.a.xw)), u_input.a.x));
    let var_1 = func_2().b;
    let var_2 = -2147483647i;
    var var_3 = var_0.b;
    let var_4 = vec3<bool>(!(~abs(1u) >= ~(var_0.a.b >> (26421u % 32u))), !func_2().b.a.x, true);
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u | firstTrailingBit(~4294967295u)));
}

