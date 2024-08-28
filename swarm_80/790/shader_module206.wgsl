struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = Struct_4(-2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * arg_0.a) + vec2<f32>(2367f, arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<f32>(-297f, arg_0.a.x))), true)))), vec2<bool>(arg_0.b.c, all(arg_0.b.d.xyw)), Struct_3(max(2147483647i << (u_input.d.x % 32u), u_input.b.x) << (max(_wgslsmith_add_u32(4294967295u, u_input.d.x), u_input.c >> (u_input.d.x % 32u)) % 32u)));
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-var_0.b.x), true, arg_0.b.d, _wgslsmith_f_op_f32(round(652f)));
    var var_2 = (var_1.c | (any(!arg_0.b.d) & var_0.c.x)) & false;
    let var_3 = _wgslsmith_f_op_f32(sign(-1134f));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.e >> (vec3<u32>(1u, u_input.d.x, ~u_input.d.x) % vec3<u32>(32u)), u_input.a ^ vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(var_0.d.a, -2147483647i, 1i), var_0.a)), -_wgslsmith_clamp_i32(~1i, arg_0.b.a, ~(var_1.a & -1i)), ~arg_0.b.a, arg_0.b.a);
    return _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~countOneBits(u_input.d), vec4<u32>(16635u, u_input.c, _wgslsmith_div_u32(25527u, u_input.d.x), 1u)), vec4<u32>(0u >> (abs(min(6167u, u_input.d.x)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x << (8265u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 7484u), vec3<u32>(u_input.c, 1u, 109170u)), u_input.d.x ^ 1u), ~vec3<u32>(64945u, u_input.c, 4294967295u)), select(~u_input.c, u_input.d.x, select(var_1.c || var_1.d.x, true, !var_1.c)), u_input.d.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = (_wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(-1f)) | false;
    var var_1 = firstTrailingBit(u_input.e.x >> (31159u % 32u));
    var var_2 = true;
    var var_3 = reverseBits(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.e.x), -_wgslsmith_div_i32(u_input.b.x, u_input.a.x), ~(i32(-1i) * -16955i), u_input.a.x) << (((func_3(Struct_2(vec2<f32>(arg_1.x, 774f), Struct_1(u_input.a.x, 472f, true, vec4<bool>(arg_0.x, true, true, false), 275f))) | ~u_input.d) ^ countOneBits(vec4<u32>(2396u, u_input.c, u_input.d.x, 1u))) % vec4<u32>(32u)));
    var_1 = var_3.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1202f, 1264f) - vec3<f32>(264f, -531f, 250f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-713f, arg_1.x, arg_1.x))))) * vec3<f32>(-915f, arg_1.x, _wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(trunc(-685f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(332f, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_1.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.yx;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_3.b.b))), 1387f, arg_0.x) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2(!vec2<bool>(arg_3.b.d.x, true), var_0)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -428f)), arg_0.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(arg_3.b.d.yz, _wgslsmith_div_vec2_f32(vec2<f32>(860f, -790f), arg_0.xx))).zy)))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(690f - _wgslsmith_f_op_f32(max(arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1439f)))), select(any(!arg_3.b.d.yzx), all(select(vec2<bool>(false, arg_3.b.c), arg_3.b.d.zw, vec2<bool>(arg_3.b.c, false))), !(!arg_3.b.c)), select(select(arg_3.b.d, !vec4<bool>(arg_3.b.c, arg_3.b.c, true, arg_3.b.d.x), select(vec4<bool>(arg_3.b.d.x, true, true, arg_3.b.d.x), vec4<bool>(arg_3.b.d.x, arg_3.b.d.x, arg_3.b.c, false), false)), vec4<bool>(true, arg_3.b.a < u_input.a.x, var_0.x != 1431f, true), arg_3.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -2100f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(abs(arg_0.x))))));
    var var_3 = true;
    let var_4 = 4294967295u;
    return vec2<bool>(select(!arg_3.b.d.x, arg_3.b.d.x, var_2.b.d.x), arg_3.b.c);
}

fn func_1() -> vec2<bool> {
    let var_0 = -u_input.a;
    return select(!vec2<bool>(any(vec3<bool>(false, true, true)), true), select(!vec2<bool>(true, all(vec4<bool>(false, false, false, false))), func_4(_wgslsmith_f_op_vec3_f32(func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-741f, 1000f), vec2<f32>(-566f, 121f), false)))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(12506i, 24764i, u_input.b.x), vec3<i32>(-32865i, 0i, 62873i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1090f - 163f), -651f), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, -1051f)), Struct_1(var_0.x, 893f, true, vec4<bool>(false, false, true, true), -633f))), vec2<bool>(true, true)), !((_wgslsmith_sub_i32(var_0.x, u_input.a.x) << (u_input.d.x % 32u)) <= -(1i & u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(-13967i <= max(u_input.e.x, 9825i), true), func_1(), true), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, 2147483647i > u_input.a.x, true)), !any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-612f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1477f + 1123f)) - -377f), 509f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1880f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1249f + var_1.x)) + vec3<f32>(526f, _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(select(var_1.x, -465f, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - 1792f)))) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(1019f, 532f))), -1452f));
    var var_2 = var_1.xx;
    var var_3 = ~firstLeadingBit(~func_3(Struct_2(vec2<f32>(102f, -1094f), Struct_1(0i, var_2.x, false, vec4<bool>(false, var_0.x, var_0.x, false), 1028f))).x);
    var_0 = !vec2<bool>(all(!select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, false), true)), var_0.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_1.x, !var_0.x)))) + 514f));
    var_3 = _wgslsmith_div_u32(max(56170u, 0u), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)))));
}

