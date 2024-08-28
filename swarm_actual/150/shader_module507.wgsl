struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_1(~countOneBits(vec2<u32>(1u, 1u)), u_input.a.x, 417f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(420f, -1393f, -1724f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(301f)), _wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(105f * -484f))), 1147f, ~select(~vec4<u32>(4294967295u, 0u, 5560u, 41405u), ~vec4<u32>(25599u, 108473u, 41986u, 1u), true)), Struct_1(vec2<u32>(1u, 1u), i32(-1i) * -22370i, _wgslsmith_f_op_f32(f32(-1f) * -188f)), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1114f, -1213f, 1295f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1847f * 324f) + -709f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - 1000f)))), min(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 69894u, 17697u), vec4<u32>(4294967295u, 0u, 0u, 23487u), vec4<u32>(0u, 0u, 1u, 20019u)), vec4<u32>(1u, 1u, 1u, 1u)), abs(vec4<u32>(1u, 1u, 1u, 1u)))));
    let var_2 = 33700u;
    let var_3 = var_1.e.a;
    var var_4 = 22u;
    return var_1.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_2;
    var_0 = 855f;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-986f - arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 131f, 385f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 1291f, 1595f), vec3<f32>(arg_2, 1000f, arg_2), false)))))));
    var_0 = arg_1.x;
    var var_2 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + var_2.c));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(602f, -856f, arg_3, arg_3) + vec4<f32>(985f, arg_3, -183f, 2619f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b, 1509f, -534f, arg_3)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, arg_3, -1873f, arg_3) * vec4<f32>(arg_3, arg_3, arg_2.e.a.x, arg_3)))))));
    let var_1 = Struct_1(~arg_2.a.a >> (countOneBits(vec2<u32>(4294967295u, _wgslsmith_mult_u32(66620u, 1u))) % vec2<u32>(32u)), 1i, var_0.x);
    let var_2 = Struct_2(var_0.ywx, 867f, arg_2.b.c);
    var var_3 = var_2.a.zy;
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2185f, var_2.b) - vec2<f32>(893f, var_1.c)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), -383f)), vec2<f32>(2413f, var_0.x), arg_2.d.xz)));
    return ~(~var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, 35140i, 0i, 0i), vec2<f32>(-383f, 1051f), 1113f, vec3<u32>(var_0, var_0, var_0))) + -313f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-646f + -508f))))))));
    var_1 = _wgslsmith_f_op_f32(1962f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(481f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2016f + -205f) + -394f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1034f, 2124f))))), select(select(vec4<u32>(46657u, var_0, 746u, 1u), vec4<u32>(56696u, var_0, var_0, 0u), true) ^ vec4<u32>(0u, 11545u, 9299u, 51800u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, var_0, 69118u, 0u), ~vec4<u32>(var_0, 11308u, 55828u, var_0)), true) << (vec4<u32>(85740u, _wgslsmith_add_u32(~4294967295u, ~var_0), ~var_0, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, -2147483647i, 26620i)), vec4<bool>(true, true, true, true), Struct_3(Struct_1(vec2<u32>(4294967295u, var_0), u_input.a.x, 560f), Struct_2(vec3<f32>(-1439f, -1253f, 260f), -960f, vec4<u32>(var_0, var_0, 1u, var_0)), Struct_1(vec2<u32>(var_0, var_0), u_input.a.x, 1286f), vec4<bool>(false, false, true, false), Struct_2(vec3<f32>(1000f, 425f, 1293f), 865f, vec4<u32>(1u, 4294967295u, var_0, var_0))), _wgslsmith_f_op_f32(156f * 2263f))) % vec4<u32>(32u)));
}

