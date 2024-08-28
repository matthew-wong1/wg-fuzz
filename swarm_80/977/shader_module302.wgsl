struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    global0 = !select(!all(vec4<bool>(false, arg_0, arg_0, arg_0)), !select(all(vec4<bool>(arg_0, false, false, false)), false, arg_0), !arg_0);
    global0 = false;
    let var_0 = Struct_4(select(!select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, true, arg_0, arg_0), true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, false, false)), !select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, true)), vec4<bool>(false, arg_0, false, true), !vec4<bool>(true, false, false, arg_0)), true), arg_1);
    global0 = true;
    global0 = all(select(select(select(select(vec2<bool>(false, true), var_0.a.xy, vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, true), var_0.a.zy, false), true), select(var_0.a.yw, var_0.a.xx, !arg_0), arg_0), select(!(!var_0.a.yy), var_0.a.zy, true), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1425f, -931f, 803f, 589f)) + vec4<f32>(148f, 409f, 140f, 1429f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1157f, 477f, -408f, 1000f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, -931f, 251f, -1000f)), vec4<f32>(-390f, -390f, -1000f, 1279f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1635f, -345f, -579f, -432f) + vec4<f32>(1346f, 198f, -1000f, 1072f)))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(195f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2360f, _wgslsmith_f_op_f32(select(425f, -174f, var_0.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1883f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, Struct_1(select(vec3<u32>(4294967295u, 0u, 61612u), arg_1.xxx, false), arg_0.x, arg_0.x, -u_input.a.zww)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(any(vec4<bool>(true, false, false, false)), Struct_1(arg_1.wzw, -2147483647i, 0i, vec3<i32>(-34093i, u_input.a.x, arg_0.x)))))), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)) && true));
    global0 = any(select(vec3<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), u_input.b != u_input.a.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)) | any(vec2<bool>(false, true)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))));
    var var_1 = all(vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-314f, var_0.x, var_0.x, 384f), vec4<f32>(169f, -1524f, var_0.x, 214f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, -1339f, -203f, 682f))))), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, 518f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1284f + var_0.x) - -2275f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1469f - var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(1000f, 813f))), -2052f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1157f)), _wgslsmith_f_op_f32(-var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, var_0.x, 412f, -297f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-826f, 224f, -992f, 1190f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -689f, var_0.x, var_0.x), true))))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1000f, var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))))), -691f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(235f))))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(all(vec4<bool>(false, all(vec4<bool>(true, true, true, false)), true, false)), Struct_1(_wgslsmith_mult_vec3_u32(~arg_1.zxw, _wgslsmith_div_vec3_u32(arg_1.xxz, vec3<u32>(60331u, arg_1.x, arg_1.x))), u_input.a.x, (arg_0.x & -34347i) << (~arg_1.x % 32u), vec3<i32>(1i, _wgslsmith_mod_i32(arg_0.x, -16048i), 1i)))).wyw));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(u_input.a.wzw, vec4<u32>(35474u, 114629u, 1u, 1u))), vec3<f32>(586f, arg_0, arg_0), true)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(all(vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 1u, 1u), -37802i, u_input.a.x, reverseBits(u_input.a.yyw)))).wxx + vec3<f32>(1000f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f) + arg_0))));
    var var_2 = var_0;
    let var_3 = Struct_2(false, Struct_1(~vec3<u32>(75570u, 35610u, 4294967295u) & _wgslsmith_mult_vec3_u32(select(vec3<u32>(88395u, 40851u, 1u), vec3<u32>(4294967295u, 65781u, 44998u), vec3<bool>(false, true, false)), abs(vec3<u32>(5754u, 0u, 1u))), 1i, u_input.b, vec3<i32>(-2147483647i, u_input.a.x, min(u_input.a.x, u_input.b))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_4 = Struct_4(!(!(!vec4<bool>(var_3.a, false, var_3.a, true))), Struct_1(vec3<u32>(49379u, _wgslsmith_sub_u32(~4358u, 22087u), 0u), max(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, -1i, u_input.a.x, var_3.b.c)), 3309i), countOneBits(_wgslsmith_mult_i32(1i, 2147483647i))), u_input.a.x, -(~var_3.b.d)));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-517f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1339f + -1913f)))) + _wgslsmith_f_op_f32(-1f)));
    var var_1 = ~u_input.a.wy;
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32((var_0.a >> (vec3<u32>(var_0.a.x, var_0.a.x, 14976u) % vec3<u32>(32u))) & ~vec3<u32>(47093u, var_0.a.x, 12917u), ~vec3<u32>(var_0.a.x, 4294967295u, 1u)), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 17876u), vec3<u32>(var_0.a.x, 23219u, var_0.a.x)), ~var_0.a << (vec3<u32>(0u, var_0.a.x, var_0.a.x) % vec3<u32>(32u)), true)), var_0.b, -2147483647i, vec3<i32>(-_wgslsmith_mod_i32(firstTrailingBit(var_0.d.x), ~26477i), 1i, ~u_input.a.x));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(-202f - -843f), 1158f) - vec3<f32>(1f, 1f, 1f))));
    var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(-980f, -1000f, true)), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + 1565f))))));
    var var_4 = ~((~var_0.a.x | _wgslsmith_sub_u32(var_2.a.x, max(13326u, 0u))) << (1u % 32u));
    var var_5 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.a.x)), -1424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -265f) - -253f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-808f, var_3.a.x), _wgslsmith_add_u32(57493u, ~max(var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(var_2.a.x, var_2.a.x, var_2.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_5.a.x)) * _wgslsmith_f_op_f32(trunc(-672f))));
}

