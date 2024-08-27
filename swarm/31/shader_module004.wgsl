struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(71199u, 92682u), vec2<u32>(41383u, 1u), vec2<u32>(43186u, 4294967295u), vec2<u32>(20125u, 23606u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = -u_input.b.yy;
    var var_1 = all(!select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)));
    global0 = array<vec2<u32>, 4>();
    var_0 = ~(-vec2<i32>(_wgslsmith_clamp_i32(-1i << (u_input.a % 32u), arg_1.b.x, firstLeadingBit(-2147483647i)), -1i));
    let var_2 = select(!vec2<bool>(all(vec2<bool>(true, true)), 1u < ~u_input.a), !vec2<bool>(true, !(1000f > arg_0.x)), !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), -arg_1.a < _wgslsmith_clamp_i32(0i, -4994i, 25101i)));
    return ~select(select(vec4<u32>(u_input.a, arg_1.d.x, arg_1.d.x, 5686u), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, arg_1.c), var_2.x && var_2.x) & select(vec4<u32>(arg_1.c, 35242u, 37574u, arg_1.d.x) | vec4<u32>(4294967295u, u_input.a, arg_1.c, 0u), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, arg_1.d.x)), all(vec3<bool>(var_2.x, false, var_2.x))), ~(~max(vec4<u32>(u_input.a, 4294967295u, arg_1.c, 9568u), vec4<u32>(u_input.c.x, u_input.a, 15443u, u_input.c.x))), true);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_1(~firstTrailingBit(u_input.e.x), countOneBits(-_wgslsmith_div_vec3_i32(u_input.b.xyy, u_input.b.yxx) & vec3<i32>(u_input.e.x, -41069i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), u_input.a, select(firstTrailingBit(vec3<u32>(17300u, abs(1u), ~arg_0)), u_input.c, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1021f)) - 1870f));
    global0 = array<vec2<u32>, 4>();
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~2147483647i, select(19924i, u_input.e.x, false)), u_input.b.x) & countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-9271i, -2958i, 36110i), vec3<i32>(-2147483647i, var_0.a, var_0.b.x))), u_input.b.wxw, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.d.x, 4294967295u, var_0.c, u_input.a)), vec4<u32>(0u, ~47838u, abs(1u), ~u_input.a)), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0, 1u, arg_0), vec4<u32>(3462u, var_0.d.x, var_0.d.x, var_0.d.x)), func_3(vec4<f32>(var_0.e, var_0.e, var_0.e, 1000f), var_0))), _wgslsmith_add_vec3_u32(var_0.d, vec3<u32>(arg_0, min(arg_0, 1u), u_input.c.x)), -1194f);
    let var_2 = Struct_1(abs(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.b.x, var_0.a, -1i, 1i)), ~vec4<i32>(u_input.d, 16169i, u_input.b.x, 20754i))), vec3<i32>(-var_1.b.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(31335i, var_1.b.x, -1i, u_input.e.x)), -u_input.b ^ u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(var_1.b.x, var_0.a), var_0.b.yx), vec2<i32>(15091i, 0i), _wgslsmith_clamp_vec2_i32(var_0.b.yy, vec2<i32>(var_0.b.x, 1i), vec2<i32>(41197i, -1i))), vec2<i32>(-2147483647i, -828i) >> ((u_input.c.yz | vec2<u32>(0u, var_1.c)) % vec2<u32>(32u)))), _wgslsmith_mod_u32(min(u_input.c.x, min(select(u_input.a, u_input.a, true), select(4294967295u, var_1.d.x, true))), 0u), ~(~abs(vec3<u32>(41327u, 17716u, arg_0)) ^ vec3<u32>(arg_0, ~u_input.c.x, var_0.c)), 495f);
    var var_3 = vec4<i32>(1i, select(u_input.d, var_2.a, true), var_2.b.x, _wgslsmith_add_i32(-21080i, ~var_1.b.x));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.e + -1342f), _wgslsmith_f_op_f32(-var_2.e), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))), _wgslsmith_f_op_f32(sign(var_1.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(341f, 988f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.e)), _wgslsmith_f_op_f32(round(var_0.e)))))), true)), var_1.e);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(countOneBits(62073u))));
    return Struct_1(u_input.e.x, _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, -29644i, 1179i) | u_input.b.zww, -vec3<i32>(3201i, var_0.x, u_input.d), ~u_input.b.xwz), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, u_input.d, var_0.x), u_input.b.wyz)), 4294967295u, reverseBits(vec3<u32>(select(u_input.c.x, ~u_input.a, all(arg_0)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1092f, 446f, -427f, var_1.x), var_1, false)), Struct_1(var_0.x, u_input.b.zwx, u_input.c.x, u_input.c, 429f)).x, u_input.c.x)), _wgslsmith_f_op_f32(-1062f * 1148f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 4>();
    var var_0 = func_1(!vec4<bool>(~u_input.a != 77550u, all(vec2<bool>(true, true)), (u_input.a < u_input.c.x) == any(vec2<bool>(false, true)), true));
    global0 = array<vec2<u32>, 4>();
    var var_1 = func_1(vec4<bool>(any(vec2<bool>(false, true)) & !all(vec2<bool>(false, false)), !select(true, 5350u < var_0.d.x, false), false, true));
    var_1 = Struct_1(select(2147483647i, func_1(vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true)).b.x, (var_0.b.x >= var_0.b.x) || all(vec4<bool>(false, false, true, false))), countOneBits(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(-1i, var_0.a, 0i) << (var_0.d % vec3<u32>(32u))), countOneBits(var_1.b), var_1.b)), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9310u, 4925u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.d.x, var_1.c, var_1.d.x), vec4<u32>(40829u, 1u, 0u, 0u))), var_0.c), 4294967295u), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.e))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-900f, -1000f, var_0.e, -1873f), vec4<f32>(var_0.e, var_0.e, var_0.e, var_1.e)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b, max(vec4<u32>(var_1.d.x, ~var_0.c, 2144u, 13910u), ~(~(~vec4<u32>(1u, u_input.c.x, 0u, 55190u)))));
}

