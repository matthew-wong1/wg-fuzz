struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = vec4<i32>(-1i) * -(~vec4<i32>(arg_2.b << (41624u % 32u), -20970i, _wgslsmith_add_i32(arg_2.b, -44586i), firstLeadingBit(arg_2.b)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1428f * -121f), -1785f))));
    var_1 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f + arg_2.a.x))));
    var var_2 = var_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, arg_3) + arg_2.a)))), ~u_input.b, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) * 187f))), true);
    return -_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(-var_0.xy, vec2<i32>(-57546i, var_3.b))), ~_wgslsmith_mult_i32(firstLeadingBit(-4280i), _wgslsmith_dot_vec3_i32(var_0.wxz, vec3<i32>(var_3.b, 54529i, var_0.x))));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f * -1000f));
    let var_0 = 102030u;
    var var_1 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(53134i, func_3(-2040f, 670f, Struct_1(vec2<f32>(-1407f, 1291f), u_input.c, 2354f, false), -1000f)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.c), firstLeadingBit(vec2<i32>(1i, u_input.b))), u_input.b), vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, u_input.c), vec4<i32>(2147483647i, 2147483647i, 41934i, u_input.b)) >> (13160u % 32u), i32(-1i) * -u_input.b)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f - -2638f) * 1331f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(263f, 790f) + _wgslsmith_f_op_f32(round(-2822f))), _wgslsmith_f_op_f32(f32(-1f) * -408f))), 913f, _wgslsmith_f_op_f32(-1590f * 1000f))));
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(max(-206f, _wgslsmith_f_op_f32(step(-1288f, 464f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -386f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f), 1f)), arg_1.x < 10743u)));
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-773f))))), 8044i, -850f, true);
    global0 = _wgslsmith_f_op_f32(floor(1000f));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-770f)), _wgslsmith_f_op_f32(-var_0.c)), var_0.c, var_0.c))));
    return _wgslsmith_f_op_f32(f32(-1f) * -229f);
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(~u_input.d.yzy), ~u_input.d.ww, -func_2() >> (u_input.d.x % 32u))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-425f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f + 452f) * 611f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1784f)), _wgslsmith_f_op_f32(f32(-1f) * -550f))) - 1000f))));
    global0 = _wgslsmith_div_f32(677f, _wgslsmith_f_op_f32(651f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(467f)), 431f), -1621f))));
    let var_0 = Struct_2(~u_input.e.zzw >> (select(u_input.a, ~max(u_input.d.xyx, u_input.d.xyw), true) % vec3<u32>(32u)));
    global0 = 1053f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * 680f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, vec2<u32>(u_input.a.x, 4294967295u), 59895i)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1202f, -784f)), _wgslsmith_f_op_f32(func_4(var_0, u_input.d.yx, -2147483647i)))))));
    return !any(vec4<bool>(!all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(1000f)) < _wgslsmith_f_op_f32(919f * -227f), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true == func_1(), !any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true))));
    var var_1 = true;
    let var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.b, -17053i, -2147483647i), -vec4<i32>(u_input.c, u_input.b, 7696i, u_input.c), vec4<i32>(-12928i, -1i, u_input.b, u_input.b)) >> (vec4<u32>(~1u, ~3185u >> (u_input.a.x % 32u), firstLeadingBit(_wgslsmith_add_u32(0u, u_input.d.x)), u_input.e.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-6418i, abs(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(5879i, u_input.c, u_input.c), vec3<i32>(1i, 2147483647i, u_input.c)), u_input.b)), ~vec4<i32>(~(-2147483647i), func_2(), _wgslsmith_mult_i32(-34273i, u_input.c), 3310i)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1233f))));
    let var_3 = 860f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(826f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(var_3 + -422f)))) + _wgslsmith_f_op_f32(-var_3))));
    var var_4 = !select(var_0.x, true, ~_wgslsmith_sub_u32(u_input.a.x, 1u) >= _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zy));
    var_4 = !(!func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(func_3(453f, 1117f, Struct_1(vec2<f32>(var_3, var_3), 6668i, var_3, true), var_3), _wgslsmith_div_i32(var_2, var_2)), vec2<i32>(i32(-1i) * -842i, -1i & var_2)), ~vec2<i32>(func_3(-1910f, 430f, Struct_1(vec2<f32>(var_3, var_3), u_input.b, 710f, false), var_3), -u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f * var_3))), 24310u, countOneBits(~(min(vec3<i32>(18272i, u_input.c, 2147483647i), vec3<i32>(58574i, -2147483647i, 0i)) | -vec3<i32>(46143i, 5664i, var_2))));
}

