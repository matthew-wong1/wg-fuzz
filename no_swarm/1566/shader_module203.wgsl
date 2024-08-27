struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(2147483647i, 0i, -8115i, 16068i), vec4<i32>(25284i, i32(-2147483648), -932i, 1i), vec4<i32>(-167i, i32(-2147483648), 1i, 14093i), vec4<i32>(-4512i, -14840i, 2147483647i, 1i), vec4<i32>(-26737i, -39661i, 1i, 29452i), vec4<i32>(-24004i, 12528i, 0i, -24651i), vec4<i32>(-1i, 16987i, -13496i, 38980i), vec4<i32>(8915i, -21932i, -4927i, -32779i), vec4<i32>(0i, -1i, 1i, -7613i), vec4<i32>(-14851i, -1i, 0i, 2147483647i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec4<i32>, 10>();
    let var_0 = u_input.c.wy;
    let var_1 = vec2<i32>(reverseBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -12905i, u_input.a, -2147483647i), global0[_wgslsmith_index_u32(u_input.b, 10u)]) | _wgslsmith_div_i32(u_input.a, 2147483647i))), _wgslsmith_sub_i32(firstTrailingBit(u_input.a), i32(-1i) * -51023i));
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    return select(vec4<bool>(true, false, (true || (1u != var_0.x)) || true, any(vec3<bool>(true, true, true))), !vec4<bool>(true, true, all(vec2<bool>(true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    let var_0 = u_input.e;
    let var_1 = Struct_3(u_input.a, select(func_3(), vec4<bool>(!all(arg_0.b), select(arg_0.b.x, u_input.a > 6520i, all(arg_0.b.wz)), !arg_0.b.x, arg_0.b.x & false), vec4<bool>(all(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), true, !(!arg_0.b.x), true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-796f)), 1259f))), arg_0.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c + 797f), -434f))));
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = -12082i;
    global0 = array<vec4<i32>, 10>();
    let var_1 = Struct_1(min(-u_input.a, ~min(func_2(Struct_3(8522i, vec4<bool>(false, true, arg_2, arg_2), arg_0.a.x, -957f, vec2<f32>(419f, -1398f)), arg_0, 1716f), _wgslsmith_div_i32(u_input.a, 1i))), 300f, vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x))), !(0i > -_wgslsmith_sub_i32(u_input.a, 1i)));
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-776f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(round(arg_0.a.x))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1679f, 360f, var_1.d)), arg_0.a.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f), arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-896f + _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(round(1954f)))), 1f));
    var var_1 = ~_wgslsmith_sub_i32(~select(-13644i, 38227i, true), _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -8068i), vec4<i32>(0i, -23059i, u_input.a, u_input.a))), _wgslsmith_sub_i32(u_input.a, -2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1362f, 750f))), 1u, false)) * -530f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1106f, 421f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(-108f - -1060f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1038f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))))));
    var var_4 = var_3.a.x;
    var var_5 = Struct_3(max(10527i, ~(-1i)), select(vec4<bool>(true, u_input.e > u_input.c.x, true, true || any(vec3<bool>(true, true, false))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(343f + _wgslsmith_f_op_f32(var_3.a.x * var_3.a.x)), var_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2759f - _wgslsmith_f_op_f32(-105f + -320f)) + var_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.a, var_3.a, vec2<bool>(true, true)))))));
    var var_6 = ~_wgslsmith_sub_u32(~12052u, abs(_wgslsmith_sub_u32(31979u, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_5.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(922f, 1928f) * _wgslsmith_f_op_vec2_f32(-var_3.a)), func_3().zx))), _wgslsmith_mod_i32(0i, ~2147483647i));
}

