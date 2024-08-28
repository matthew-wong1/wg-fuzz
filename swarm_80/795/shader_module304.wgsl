struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = -2147483647i;
    var var_1 = 2147483647i | _wgslsmith_mult_i32(-1i, abs(u_input.d));
    var_0 = -52322i;
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-491f, -465f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) - -1308f))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = vec4<f32>(-255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(636f, 1317f) - _wgslsmith_f_op_f32(round(590f))) + 1125f) * -1075f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(761f, 121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-1802f - -490f)))), _wgslsmith_f_op_f32(246f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(f32(-1f) * -263f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), -828f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))), -1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f * -691f)), var_0.x));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-156f + var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1314f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(512f)), var_0.x));
    let var_1 = any(vec4<bool>(!(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -8244i, 2147483647i), vec3<i32>(-28453i, 41696i, u_input.d)) == u_input.a), !(var_0.x < var_0.x), all(vec3<bool>(!arg_0.b.x, all(vec2<bool>(arg_0.b.x, arg_0.b.x)), !arg_0.b.x)), any(select(!arg_0.b.wzy, !vec3<bool>(false, true, arg_0.b.x), true))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(256i, -2147483647i, -2147483647i, firstTrailingBit(u_input.d)), ~abs(vec4<i32>(7433i, -2147483647i, -1i, u_input.a))) | (u_input.a ^ (_wgslsmith_sub_i32(22628i, u_input.a) & abs(u_input.a))), vec4<f32>(-1000f, 189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1374f) - var_0.x)), _wgslsmith_f_op_f32(-792f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(997f)))), !all(!arg_0.b) && arg_0.b.x, var_0.x);
    return select(vec4<bool>(true, var_1, var_1, var_1), arg_0.b, arg_0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = ~(-vec4<i32>(-23174i, _wgslsmith_mod_i32(abs(u_input.d), u_input.a), _wgslsmith_mod_i32(-u_input.a, u_input.d), 8387i & -u_input.a));
    var var_1 = Struct_2(u_input.c.x, !func_2(Struct_2(u_input.c.x, vec4<bool>(false, true, true, true))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 16u)];
    var_2 = var_1.b.yyx;
    let var_3 = Struct_2(var_1.a, vec4<bool>(!(!var_2.x & true), true, false, !var_1.b.x));
    return Struct_1(1i, vec4<f32>(-348f, _wgslsmith_f_op_f32(686f + _wgslsmith_div_f32(299f, -221f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-200f)) * 1f)), _wgslsmith_f_op_f32(1429f + -482f)), -1152f, var_3.a <= _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.a, var_1.a), max(u_input.c, u_input.c)), 11272u), _wgslsmith_f_op_f32(f32(-1f) * -1908f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(~(~abs(2147483647i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, 826f, arg_0.c, arg_0.b.x) - arg_1.b)))), arg_2.e, !((arg_1.d || false) && arg_2.d), _wgslsmith_f_op_f32(720f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * arg_1.b.x)))));
    var var_1 = 1609f;
    var var_2 = Struct_2(32933u, !vec4<bool>(all(!vec2<bool>(arg_0.d, arg_2.d)), !(!var_0.d), all(func_2(Struct_2(u_input.c.x, vec4<bool>(false, arg_1.d, arg_2.d, false))).yyx), func_1().d));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(394f * _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f), 560f))), arg_2.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - _wgslsmith_f_op_f32(-arg_0.e)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(-arg_1.c))))));
    let var_4 = func_1();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_mult_u32(31467u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<u32>(49136u, 1u, u_input.b), ~vec3<u32>(u_input.b, u_input.c.x, u_input.b), var_0)) | u_input.b);
    var var_2 = !((all(vec4<bool>(var_0, var_0, var_0, false)) || true) != all(select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), var_0 && false)));
    global0 = array<vec3<bool>, 16>();
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), func_1(), func_1())) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1252f)), 1f))), 1248f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f) - -692f), _wgslsmith_div_f32(949f, _wgslsmith_f_op_f32(-402f - 1000f)), !var_0)), 153f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2629f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1320f, 835f, var_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(max(-665f, -676f))))), -116f, -320f)));
    global0 = array<vec3<bool>, 16>();
    var var_4 = func_1();
    var var_5 = select(select(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, ~var_1), 16u)], select(vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 16u)]), all(vec4<bool>(true, var_0, false, var_4.d)), true), vec3<bool>(var_4.d && var_0, var_0, all(vec2<bool>(false, var_0))), vec3<bool>(!var_0, select(var_4.d, var_4.d, var_4.d), true)), u_input.c.x < var_1), func_2(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 24726u, var_1, var_1), vec4<u32>(u_input.c.x, var_1, 88687u, u_input.b)), ~vec4<u32>(u_input.c.x, u_input.b, var_1, 94594u)), !vec4<bool>(true, true, var_4.d, var_0))).zzx, func_1().d);
    var var_6 = vec4<i32>(-2147483647i, -1i, -31282i, var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c & _wgslsmith_sub_vec3_u32(~vec3<u32>(var_1, 0u, var_1), countOneBits(u_input.c))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 91682u, 4294967295u, var_1), vec4<u32>(u_input.b, u_input.b, u_input.c.x, 7533u)) ^ var_1, ~1u), firstLeadingBit(~u_input.b)), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(-20028i, 0i)), _wgslsmith_mult_i32(-7387i, u_input.d), max(4407i, ~(-1i))) ^ firstLeadingBit(0i), var_4.b);
}

