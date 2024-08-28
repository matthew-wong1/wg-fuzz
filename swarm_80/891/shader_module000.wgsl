struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> u32 {
    return ~(~abs(1u));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> vec3<f32> {
    var var_0 = !select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_1, arg_2), vec4<bool>(arg_1, true, arg_2, true)), vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_2, arg_1, true, arg_1))), !select(!vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, false, false, arg_1), true));
    var_0 = !(!select(!(!vec4<bool>(false, true, true, arg_1)), select(vec4<bool>(arg_2, var_0.x, false, true), !vec4<bool>(true, arg_2, arg_1, true), vec4<bool>(false, arg_1, false, true)), select(!vec4<bool>(arg_2, arg_1, true, arg_1), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(true, arg_1, true, arg_1), arg_1), !vec4<bool>(var_0.x, arg_2, arg_1, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-408f, -404f), _wgslsmith_f_op_f32(f32(-1f) * -2112f), -1280f))));
    var var_2 = Struct_1(vec4<bool>(true, true, arg_2, var_0.x), select(var_0.wx, select(select(select(vec2<bool>(true, true), var_0.yx, vec2<bool>(arg_2, arg_1)), !vec2<bool>(false, arg_2), var_0.x), var_0.yx, true), !var_0.zz));
    let var_3 = ~select(vec3<i32>(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a)), -u_input.b), u_input.b), ~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, 54080i, u_input.a), select(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(0i, 2147483647i, 17523i), var_2.b.x)), !(~arg_0 >= ~33214u));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 251f), var_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_1.x, -1402f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(vec3<f32>(261f, var_1.x, var_1.x) - var_1)) + _wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(var_1.x, var_1.x, var_1.x))), var_0.zzx))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mod_u32(34325u, func_2());
    var var_1 = arg_0.b;
    var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-827f, _wgslsmith_f_op_f32(1819f + 585f), _wgslsmith_f_op_f32(f32(-1f) * -654f))) - _wgslsmith_f_op_vec3_f32(func_3(~(~97702u), false, var_1.b.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(~0u, !var_1.a.x, true)).x, _wgslsmith_f_op_f32(-2315f - _wgslsmith_f_op_f32(-1096f - -2565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1762f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, 1379f, -1377f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2109f, 2681f, -212f), vec3<f32>(942f, -1065f, -442f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1643f, -1000f, 427f), vec3<f32>(-192f, -1191f, 619f))))), arg_0.b.b.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(abs(1i), Struct_1(vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, false))), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1737f)) - 2036f))), -167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(878f - 304f)));
    let var_2 = select(abs(vec2<u32>(36298u, ~1830u)) ^ vec2<u32>(1u, 1u << (func_2() % 32u)), vec2<u32>(~1u, min(~(18191u << (1u % 32u)), ~(~56264u))), ~_wgslsmith_mult_i32(-var_0.a, -30509i) > (i32(-1i) * -(~(-31361i))));
    var var_3 = Struct_1(var_0.b.a, vec2<bool>(!any(select(var_0.b.a, vec4<bool>(true, var_0.b.a.x, false, true), true)), (!var_0.b.a.x || var_0.b.a.x) || true));
    var var_4 = func_1(func_1(func_1(Struct_2(reverseBits(u_input.a), func_1(Struct_2(u_input.b, var_0.b)).b))));
    var var_5 = func_1(Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 40621i, -85463i), vec3<i32>(u_input.b, 17761i, var_4.a)), -vec3<i32>(0i, -77273i, -7599i)) >> (firstLeadingBit(69264u) % 32u), Struct_1(var_3.a, func_1(func_1(Struct_2(u_input.b, var_4.b))).b.a.wx))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.xx * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 150f), vec2<f32>(269f, -1000f)) * _wgslsmith_f_op_vec2_f32(var_1.wz + var_1.xw)))), firstTrailingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -29727i), vec2<i32>(var_4.a, var_4.a))) & select(abs(-vec2<i32>(1i, 4431i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.a, 2147483647i), vec2<i32>(var_4.a, var_4.a)), vec2<bool>(var_5.a.x, true)));
}

