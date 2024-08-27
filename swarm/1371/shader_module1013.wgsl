struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = 2147483647i;
    let var_1 = u_input.b.wy;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 311f, -615f, -3353f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, -272f, arg_0, -476f) * vec4<f32>(arg_0, arg_0, arg_0, 925f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 1077f, -1755f), vec4<f32>(-286f, 303f, 104f, -1493f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1000f, arg_0) - vec4<f32>(-1507f, -630f, 1250f, 886f)), false)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_f32(-1367f * arg_0)), ~1u);
    let var_3 = vec2<i32>(var_0, select(_wgslsmith_sub_i32(firstTrailingBit(0i), ~_wgslsmith_add_i32(var_0, var_0)), var_0, any(vec3<bool>(true, true, true))));
    let var_4 = (_wgslsmith_sub_i32(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(8460i, var_3.x), vec2<i32>(var_3.x, 0i)) & min(7838i, 2147483647i)) <= var_3.x) && false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -1594f), _wgslsmith_f_op_f32(var_2.b + 1075f), _wgslsmith_f_op_f32(-1788f * var_2.b), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(var_2.b, -796f, arg_0, 1042f))))))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = ~(~u_input.b.wx);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-1568f - -1163f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(264f)) * -595f), 1000f, true)), arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1429f, -2488f, 487f, -719f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-705f, -401f, -1354f, -1194f) - vec4<f32>(1098f, -1165f, -1113f, 1237f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, -848f, 1281f, 1140f)))), 1045f, u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(558f, 186f, 201f, -456f), vec4<f32>(1772f, 1000f, 357f, 1323f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(272f)), _wgslsmith_f_op_f32(trunc(-715f))), ~(~var_0.x)), ~select(u_input.b.xw, _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 66279u), min(vec2<u32>(u_input.b.x, arg_0), vec2<u32>(var_0.x, 49838u))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, var_0.x, 0u), select(arg_0, 1u, false))), vec3<u32>(_wgslsmith_div_u32(25339u, abs(arg_0)), min(1u, ~u_input.a), arg_0), ~(vec3<u32>(u_input.b.x, 16369u, var_0.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, var_0.x), u_input.b.yyx, vec3<u32>(24588u, var_0.x, var_0.x)) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, -319f) - vec2<f32>(var_1.a.a.x, var_1.a.b)), vec2<f32>(var_1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -322f)))) * var_1.c.a.zw), var_1.c.a.zz, select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(var_1.b.a.x > -367f, true, any(vec4<bool>(true, false, true, false)))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true))));
    var var_3 = var_1.d;
    var var_4 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(32917i, -61675i, 15807i, 1i) << (vec4<u32>(var_1.d.x, 1u, u_input.b.x, 0u) % vec4<u32>(32u)), vec4<i32>(1i, 2147483647i, -33848i, 7249i), -vec4<i32>(-22794i, 44978i, -2147483647i, 2147483647i)), countOneBits(vec4<i32>(_wgslsmith_mod_i32(46669i, -2147483647i), _wgslsmith_sub_i32(2147483647i, 57539i), 1i, reverseBits(-2147483647i)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, firstTrailingBit(firstLeadingBit(var_3.x)), ~(~var_3.x)), ~u_input.b) % vec4<u32>(32u));
    return true || any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-300f * -429f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(142f))))));
    var_0 = all(vec2<bool>(arg_0, false));
    var_0 = all(vec3<bool>(true, !all(!vec4<bool>(arg_0, arg_0, arg_0, true)), false));
    var_0 = true;
    var var_1 = Struct_3(~select(vec3<u32>(min(u_input.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(u_input.b.x, 0u, u_input.a)), u_input.b.x), abs(~u_input.b.wyx), !(!vec3<bool>(arg_0, arg_0, true))), ~_wgslsmith_div_vec3_u32(~(~u_input.b.xwy), ~firstLeadingBit(u_input.b.xzy)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, 515f, 1073f, 354f) * vec4<f32>(864f, 526f, -476f, -1761f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1912f, -1602f, 1548f, -1000f) - vec4<f32>(-274f, -1000f, 706f, 2167f))))) + vec4<f32>(1149f, -1881f, 1507f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(717f + -1090f), 558f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(-1264f)).x)), ~select(u_input.a, var_1.b.x, any(!vec3<bool>(true, false, arg_0))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = firstTrailingBit(~(~(~4294967295u)));
    var var_1 = func_4(func_2(~u_input.a));
    let var_2 = var_1.a.x;
    let var_3 = vec2<f32>(-277f, arg_0.x);
    var_0 = _wgslsmith_sub_u32(u_input.a, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(var_1.c, var_1.c, true), 1u), 41441u, 17593u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, 554f, 985f, -178f)))))), -622f, ~(~u_input.b.x));
    var var_1 = any(vec2<bool>(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a.x)), vec2<f32>(1077f, -588f)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(-20221i, 2147483647i, -3032i, -24888i)))), select(true, true, ~u_input.b.x < _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.a), vec2<u32>(68663u, 0u)))));
    var_1 = true;
    var_1 = !func_2(~var_0.c);
    var_1 = !(!(!all(vec2<bool>(true, true))));
    var_1 = select(true, true, abs(u_input.a) != 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(min(~countOneBits(vec2<i32>(1i, 0i)), reverseBits(vec2<i32>(-2147483647i, -25981i))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1588i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(63841i, 37526i), vec2<i32>(2147483647i, 642i))), abs(86053i >> (0u % 32u)))));
}

