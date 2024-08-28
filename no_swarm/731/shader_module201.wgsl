struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    var var_0 = ~_wgslsmith_sub_u32(arg_0, 32333u);
    var var_1 = false;
    var_0 = ~76392u;
    let var_2 = 1u;
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x) ^ vec2<i32>(1i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), ~(~(vec2<i32>(u_input.b, u_input.a.x) << (vec2<u32>(1u, arg_0) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(-u_input.c.zz, _wgslsmith_clamp_vec2_i32(u_input.c.ww, u_input.c.zz, u_input.a.yw))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-189f, 273f)), -638f)) - _wgslsmith_f_op_f32(abs(-530f)))), -902f, false));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, _wgslsmith_sub_u32(4294967295u, min(6499u, 1u))) | arg_1);
    var_0 = arg_1;
    var_0 = _wgslsmith_mod_vec3_u32(arg_1 << (arg_1 % vec3<u32>(32u)), ~countOneBits(arg_1));
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1152f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-115f, arg_2.x)) - 372f);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> vec2<bool> {
    let var_0 = -2400f;
    var var_1 = abs(_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 4294967295u, 1u))));
    var_1 = ~0u;
    var var_2 = _wgslsmith_f_op_f32(var_0 * var_0);
    let var_3 = Struct_2(Struct_1(vec2<bool>(true, true), vec4<f32>(-243f, _wgslsmith_f_op_f32(floor(-1038f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(951f, var_0))), var_0)), vec3<f32>(_wgslsmith_f_op_f32(round(-1237f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, arg_1, arg_2), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2, 13891i, arg_2), u_input.a.yzx)), vec3<u32>(1u, 1u, 1u), vec3<f32>(_wgslsmith_f_op_f32(func_3(9988u, vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, var_0))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_i32(u_input.a.wzz, u_input.a.xxz), abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 74679u, 4294967295u), vec3<u32>(50233u, 26048u, 1u))), _wgslsmith_div_vec3_f32(vec3<f32>(314f, var_0, var_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-277f, var_0, -737f))))))), _wgslsmith_clamp_u32(~0u, 1u, firstTrailingBit(1u)), Struct_1(vec2<bool>(true, arg_1 <= -2147483647i), vec4<f32>(-450f, 911f, var_0, -162f)), Struct_1(select(select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, arg_0)), arg_0), vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))));
    return select(vec2<bool>(var_3.e.a.x, all(var_3.d.a) && any(select(vec4<bool>(true, true, false, var_3.e.a.x), vec4<bool>(false, var_3.d.a.x, arg_0, true), vec4<bool>(true, arg_0, true, false)))), var_3.a.a, arg_0);
}

fn func_1() -> vec3<f32> {
    var var_0 = -_wgslsmith_div_i32(reverseBits(u_input.c.x), -13476i);
    var_0 = -(u_input.a.x & ~(-(~u_input.b)));
    var_0 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, -u_input.c.x), select(_wgslsmith_add_i32(u_input.a.x, 2147483647i), ~_wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(u_input.a.x, u_input.b)), true));
    var var_1 = vec3<bool>(all(!func_2(true, abs(u_input.b), -u_input.a.x)), all(vec3<bool>(true, u_input.c.x < -59148i, any(vec2<bool>(false, false)))) | any(vec2<bool>(false, true)), true);
    var var_2 = _wgslsmith_clamp_vec2_u32(min(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 10434u), min(vec2<u32>(65469u, 0u), vec2<u32>(1u, 18632u))), abs(~(~vec2<u32>(6127u, 70966u)))), max(countOneBits(vec2<u32>(53301u, 8074u) << (select(vec2<u32>(40622u, 0u), vec2<u32>(4294967295u, 23678u), true) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), firstTrailingBit(120664u)), firstLeadingBit(abs(vec2<u32>(29696u, 47362u))))), ~vec2<u32>(1u, 1u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(478f, 258f, -669f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1924f, -1000f, -852f) * vec3<f32>(-526f, 1000f, 742f))))))));
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(select(vec2<bool>(true, true), arg_0.a.a, !vec2<bool>(arg_0.d.a.x, u_input.c.x <= u_input.b)), arg_0.d.b);
    var_0 = arg_0.e;
    var var_1 = all(select(!select(select(vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(true, arg_0.d.a.x, true, true), vec4<bool>(arg_0.e.a.x, false, false, arg_0.e.a.x)), select(vec4<bool>(true, arg_0.a.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, arg_0.d.a.x, arg_0.d.a.x, true), var_0.a.x), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.a.a.x, var_0.a.x, var_0.a.x, arg_0.e.a.x), vec4<bool>(false, false, true, var_0.a.x))), select(!(!vec4<bool>(arg_0.a.a.x, var_0.a.x, true, true)), select(vec4<bool>(true, arg_0.e.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, arg_0.a.a.x, arg_0.e.a.x, true), true), arg_0.d.a.x), select(!vec4<bool>(var_0.a.x, arg_0.e.a.x, false, false), select(select(vec4<bool>(true, var_0.a.x, false, arg_0.d.a.x), vec4<bool>(arg_0.a.a.x, var_0.a.x, arg_0.d.a.x, true), false), !vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, var_0.a.x), vec4<bool>(arg_0.a.a.x, false, var_0.a.x, false)), true)));
    var_1 = true;
    var var_2 = (-vec3<i32>(~u_input.b, 41400i, u_input.c.x) ^ u_input.c.xyy) << (~countOneBits(~vec3<u32>(arg_0.c, arg_0.c, arg_0.c) << (vec3<u32>(72839u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.b.yyz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -934f, arg_0.e.b.x))), vec3<f32>(arg_0.e.b.x, -277f, 1180f)), !(var_0.a.x && arg_0.a.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.b.x - 1052f), _wgslsmith_div_f32(var_0.b.x, 150f), var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = _wgslsmith_sub_u32(56692u, 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1102f, 1255f, 171f, -129f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(Struct_2(Struct_1(vec2<bool>(true, true), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(func_1()), 0u, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -659f), 1653f, _wgslsmith_div_f32(381f, -517f), var_1.x)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(max(-887f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x))))));
    let var_3 = vec3<bool>(true, true, all(vec2<bool>(true, true)));
    let var_4 = reverseBits(abs(-2147483647i)) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.ww)), vec2<i32>(-2147483647i, ~(-18183i))), abs(-u_input.a.yz & u_input.a.xy));
    let var_5 = var_3.x;
    var var_6 = _wgslsmith_f_op_f32(var_2.x * -1000f);
    let var_7 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1208f, 1376f, var_2.x)), var_1), var_1, var_3.x)), _wgslsmith_f_op_vec4_f32(trunc(var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(7426i, -1i, 0i, u_input.b)), u_input.c)), _wgslsmith_div_i32(u_input.b, -30268i << (1u % 32u)) | -(i32(-1i) * -1i)), ~_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 17533u), ~63710u)), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 60582u, 68368u), vec4<u32>(4294967295u, 4294967295u, 27076u, 36647u)), min(vec4<u32>(19581u, 11378u, 3432u, 0u), vec4<u32>(20444u, 0u, 56690u, 7984u)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 59937u, 33491u), vec4<u32>(5954u, 0u, 1u, 1u))), 1138u), 0u));
}

