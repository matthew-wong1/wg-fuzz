struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: i32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.a.x, 385f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1271f, 1475f, arg_1.a.x) + vec3<f32>(956f, 691f, arg_1.b)))))));
    let var_1 = !select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!any(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)) & false));
    global0 = all(vec2<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, true))), var_1.x));
    global0 = (var_1.x == !any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, var_1.x, false), var_1.x))) || (u_input.e == ~(~9426u));
    var var_2 = Struct_2(vec2<u32>(16428u, 4294967295u), !(!select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_1.x, var_1.x)), !var_1.x)));
    return reverseBits(~(~vec4<u32>(4294967295u << (var_2.a.x % 32u), _wgslsmith_mult_u32(arg_0.x, arg_0.x), ~23152u, ~50376u)));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    return ~(func_3(u_input.d, Struct_5(vec2<f32>(131f, -2149f), _wgslsmith_div_f32(1417f, -1593f)), firstLeadingBit(-3485i)) | ~(~vec4<u32>(1u, 4294967295u, arg_0.a.x, 6589u) << (func_3(u_input.d, Struct_5(vec2<f32>(766f, -1906f), -2661f), u_input.a) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(arg_1, false);
    var_0 = vec2<bool>((firstTrailingBit(func_2(Struct_2(vec2<u32>(1u, 3738u), vec4<bool>(arg_1, true, var_0.x, var_0.x))).x) ^ 17692u) < 92399u, !all(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, var_0.x), vec4<bool>(arg_1, arg_1, false, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_2.a.x)) - _wgslsmith_f_op_f32(-961f * _wgslsmith_f_op_f32(796f - 880f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.x)))), _wgslsmith_f_op_f32(-1f)));
    global0 = ~firstLeadingBit(1u) <= ~_wgslsmith_div_u32(~arg_0.x & func_2(Struct_2(u_input.d.xz, vec4<bool>(arg_1, var_0.x, false, false))).x, arg_0.x);
    let var_2 = var_0.x;
    return Struct_2(arg_0.xy, !vec4<bool>(true, !var_0.x, ~(-14698i) <= _wgslsmith_div_i32(u_input.a, 30596i), _wgslsmith_f_op_f32(floor(-142f)) > var_1.x));
}

fn func_1() -> Struct_1 {
    global0 = all(vec2<bool>(true, false));
    let var_0 = abs(~u_input.d);
    let var_1 = func_4(firstLeadingBit(~func_2(Struct_2(vec2<u32>(u_input.b, 1u), vec4<bool>(false, false, true, true)))), false, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-893f * 1277f), _wgslsmith_div_f32(-939f, 993f), _wgslsmith_f_op_f32(trunc(-1275f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1217f, -1041f, -1000f)))));
    let var_2 = true;
    global0 = var_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) - -1434f), -2778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f + 832f) - _wgslsmith_f_op_f32(f32(-1f) * -940f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = abs(abs(vec4<u32>(_wgslsmith_mult_u32(func_3(u_input.d, Struct_5(var_0.a.zz, -1000f), u_input.a).x, ~796u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.d.x), countOneBits(vec4<u32>(u_input.b, u_input.e, 38240u, 0u))), ~(u_input.e | 11878u), ~u_input.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, 149f, 1054f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, 483f, -1000f, -1714f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1205f), var_0.a.x, _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(665f - -152f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(437f - var_0.a.x)))));
    var var_3 = u_input.d;
    var_3 = vec3<u32>(4294967295u, abs(u_input.d.x), u_input.e);
    var var_4 = var_1.xzx;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), 1606f)));
    var var_6 = vec4<i32>(u_input.a, firstTrailingBit(0i), 2147483647i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-14243i, u_input.c)), 1i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, -33904i, u_input.a, u_input.c), vec4<i32>(43059i, u_input.a, u_input.a, u_input.c), vec4<bool>(false, true, true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -1i, 1i, u_input.a), vec4<i32>(69838i, -36014i, 2147483647i, u_input.c), vec4<i32>(-2147483647i, u_input.a, u_input.c, -2147483647i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(850f + -1388f), -444f)), var_5.x, _wgslsmith_f_op_f32(-1579f - var_5.x))), var_4.xz, -4893i, u_input.e);
}

