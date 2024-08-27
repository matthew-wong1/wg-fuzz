struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec3<u32> {
    var var_0 = ~_wgslsmith_sub_i32(0i, 1i);
    var_0 = u_input.c.x;
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-119f, -1079f), arg_0)));
    var var_3 = var_2;
    return vec3<u32>(var_1, ~firstLeadingBit(var_1), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, var_1, countOneBits(var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 11482u, 6721u), vec3<u32>(0u, 31174u, var_1))), vec4<u32>(~23026u, ~42085u, var_1 << (var_1 % 32u), _wgslsmith_add_u32(var_1, 0u))), 10460u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_2(func_3(vec2<f32>(1f, 1f), arg_0.x));
    var var_1 = 221f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(914f * -1216f), _wgslsmith_f_op_f32(978f + -862f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(187f)) - _wgslsmith_f_op_f32(486f * -1079f))), _wgslsmith_mult_i32(u_input.c.x, 1i) > countOneBits(u_input.a))));
    var_2 = 218f;
    var var_3 = _wgslsmith_f_op_f32(round(637f));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, 1000f) + vec2<f32>(-481f, 1945f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-321f, 1563f), vec2<f32>(981f, 829f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(599f, 1595f) - vec2<f32>(312f, 1058f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(897f, 1373f))))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    var var_0 = arg_1.x >= arg_1.x;
    var_0 = all(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    let var_1 = Struct_1(~vec3<i32>(u_input.c.x, countOneBits(u_input.d.x) & 0i, u_input.d.x), arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var_0 = !(!all(vec3<bool>(true, false, false)) & all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))) & any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, true))));
    return any(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(-145f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) * 1816f), all(vec2<bool>(-709f > arg_0.a.x, any(vec2<bool>(true, true)))), false));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    var var_0 = func_4(func_2(vec2<bool>(true, arg_2.x)), vec3<u32>(~arg_0, ~(~arg_0 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(13913u, 69864u, 0u), arg_1.a)), arg_0));
    var_0 = arg_2.x || ((select(true, u_input.a > u_input.a, false) && true) | true);
    var var_1 = -548f;
    let var_2 = arg_1.a.x;
    let var_3 = arg_1;
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 51520u), ~u_input.b.x), arg_1.x, _wgslsmith_mult_u32(0u, u_input.b.x >> (arg_1.x % 32u)));
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_add_vec3_u32(arg_1, ~vec3<u32>(37619u, 1u, 4294967295u))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.wz - vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + -1000f), 2032f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(921f * _wgslsmith_f_op_f32(min(-761f, arg_0.x))))));
    var var_3 = firstTrailingBit(~u_input.c);
    let var_4 = var_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1142f, -2011f))) * var_2.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(950f, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-139f - var_4.a.x), -1213f), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(vec4<f32>(1905f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-472f)), _wgslsmith_f_op_f32(283f + 236f))), _wgslsmith_f_op_f32(abs(-220f)))), _wgslsmith_f_op_f32(step(-1700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1042f * 740f), _wgslsmith_f_op_f32(min(-1219f, -491f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(trunc(-123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1936f)))), vec3<u32>(~(~54181u), func_1(u_input.b.x, Struct_2(vec3<u32>(54434u, 0u, u_input.b.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), any(vec4<bool>(true, false, false, true)))), ~u_input.b.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, 1107f) * vec2<f32>(-191f, 160f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(339f, var_0.x), vec2<f32>(var_0.x, 1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-727f, var_0.x) * vec2<f32>(537f, -187f))))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f - -670f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))));
    var var_1 = 1721f;
    var var_2 = func_2(vec2<bool>(false && all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true));
    var_0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.d.x, select(_wgslsmith_dot_vec3_i32(u_input.d.xzy, u_input.d.xww), u_input.c.x, u_input.a < u_input.c.x)), min(abs(~u_input.d), vec4<i32>(min(u_input.c.x, u_input.a), -u_input.a, _wgslsmith_add_i32(1i, -5911i), i32(-1i) * -2147483647i))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), (u_input.b | vec2<u32>(u_input.b.x, 24767u)) >> (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, abs(4294967295u))));
}

