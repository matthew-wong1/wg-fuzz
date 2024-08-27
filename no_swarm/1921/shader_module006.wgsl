struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = array<Struct_3, 9>();
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - -470f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -517f, true)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-724f, 744f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 915f) * vec2<f32>(-1377f, var_1.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1075f, -1161f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(687f, var_1.x)))))));
    return -abs(1i);
}

fn func_2() -> i32 {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    var var_0 = Struct_2(Struct_1(false, vec4<i32>(_wgslsmith_add_i32(abs(-15700i), _wgslsmith_mod_i32(0i, -12037i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(7134i, 0i, -8304i), func_3()), -1i, i32(-1i) * -1i), 4294967295u));
    let var_1 = _wgslsmith_clamp_u32(u_input.d, var_0.a.c, countOneBits(firstLeadingBit(0u)));
    let var_2 = 2147483647i;
    return min(_wgslsmith_add_i32(-6329i, 0i), _wgslsmith_sub_i32(func_3(), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_2, var_0.a.b.x), vec2<i32>(var_2, -23970i)), var_0.a.b.yw)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = vec4<i32>(~arg_0, max(i32(-1i) * -select(arg_0, -1670i, true), arg_0), ~select(arg_0, -17574i, true), func_2());
    var var_1 = all(select(select(vec4<bool>(u_input.c <= 4294967295u, select(false, true, false), false, true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(!any(vec4<bool>(false, true, false, false)), true, false, true)));
    var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(760f, -112f, false))), _wgslsmith_f_op_f32(ceil(-412f))))) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1602f, 263f)))), -512f, (true || (arg_0 >= -18592i)) | true));
    global0 = array<Struct_3, 9>();
    let var_2 = 1f;
    return Struct_4(-(~(-max(vec4<i32>(30457i, -1i, var_0.x, -2147483647i), vec4<i32>(-5514i, arg_0, 0i, arg_0)))), ~(~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_i32(-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(9753i, 1i))), 19166i));
    let var_1 = Struct_3(-vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, i32(-1i) * -var_0.a.x), -_wgslsmith_add_i32(var_0.a.x, -var_0.a.x & -8119i));
    var_0 = Struct_4(var_0.a, var_0.b);
    let var_2 = !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), !(_wgslsmith_div_u32(var_0.b, 10814u) > 25647u));
    global0 = array<Struct_3, 9>();
    let var_3 = var_0.a.x;
    let var_4 = all(vec4<bool>(true, var_2.x, all(!vec4<bool>(var_2.x, false, false, var_2.x)) || true, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-425f, -1176f))), -359f, _wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_div_f32(-1098f, -674f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(885f, 631f), -601f, _wgslsmith_div_f32(-2593f, -354f), _wgslsmith_f_op_f32(trunc(-1191f))))), 1u);
}

