struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-899f, 948f, 2250f), vec3<f32>(-293f, -145f, -806f), vec3<f32>(115f, -627f, -384f), vec3<f32>(-958f, -397f, -107f), vec3<f32>(1010f, 275f, -1664f), vec3<f32>(598f, -1632f, -1080f), vec3<f32>(-815f, 112f, 382f), vec3<f32>(-1504f, 1011f, 115f), vec3<f32>(-508f, -706f, 1242f), vec3<f32>(-1192f, 1000f, 1000f), vec3<f32>(253f, -685f, -2458f), vec3<f32>(-914f, -269f, 451f), vec3<f32>(1397f, -1050f, 1062f), vec3<f32>(-1294f, -1000f, 538f), vec3<f32>(-2080f, -103f, 333f), vec3<f32>(-1561f, -1000f, 631f), vec3<f32>(-350f, -685f, -1509f), vec3<f32>(1823f, 954f, -908f), vec3<f32>(269f, -477f, -692f), vec3<f32>(1218f, -977f, 1150f), vec3<f32>(719f, -393f, -465f), vec3<f32>(-279f, 1514f, 309f), vec3<f32>(799f, 431f, -767f), vec3<f32>(1429f, -365f, 456f), vec3<f32>(1397f, 1000f, -630f), vec3<f32>(-177f, -1000f, 387f), vec3<f32>(-345f, -1293f, -311f), vec3<f32>(329f, 1000f, 370f), vec3<f32>(-795f, -1162f, 403f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = ~(_wgslsmith_mod_u32(0u, select(~0u, abs(30904u), false)) >> (_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(1u, 0u)), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(141948u, 2245u, 4294967295u, 17327u), vec4<u32>(4294967295u, 0u, 1u, 44022u)))) % 32u));
    global0 = array<vec2<u32>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_div_f32(arg_0.c.x, -832f)), !(!vec4<bool>(false, false, false, arg_0.b))))), all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)))), arg_0.c, arg_0.d);
    var var_2 = -6127i;
    return reverseBits(~var_0);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    global0 = array<vec2<u32>, 7>();
    global1 = array<vec3<f32>, 29>();
    global0 = array<vec2<u32>, 7>();
    var var_0 = vec3<u32>(min(~1u, 1u), reverseBits(firstLeadingBit(countOneBits(3752u))), 0u);
    var var_1 = vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(0i, 35647i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 43568i, arg_1.d.x), vec4<i32>(-4608i, 22540i, 41906i, arg_1.d.x))), _wgslsmith_div_i32(18967i, -1i) ^ abs(u_input.a.x)), -arg_1.d), abs(arg_1.d.x), u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 2901u), var_0.yx) % 32u));
    return countOneBits(~func_2(arg_1, ~(-2147483647i)) ^ var_0.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -574f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f + arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, -582f, 204f, arg_0.x)), vec4<f32>(arg_0.x, -1089f, arg_0.x, arg_0.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(366f, 192f))) > arg_0.x)), true, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1441f, _wgslsmith_f_op_f32(arg_0.x + -1823f)))), vec3<i32>(arg_1.x, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(~arg_1, firstTrailingBit(vec3<i32>(-37520i, 1i, -7371i)))), -2147483647i));
    global1 = array<vec3<f32>, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.yy + var_0.c.yz);
    global0 = array<vec2<u32>, 7>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, _wgslsmith_f_op_f32(step(693f, _wgslsmith_f_op_f32(step(var_0.c.x, var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x)), all(select(select(!vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.b, false, var_0.b), !vec3<bool>(var_0.b, false, false)), vec3<bool>(any(vec3<bool>(var_0.b, var_0.b, var_0.b)), all(vec3<bool>(var_0.b, true, false)), false), !vec3<bool>(true, var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(round(var_0.c)), _wgslsmith_mod_vec3_i32(~((vec3<i32>(3569i, u_input.a.x, arg_1.x) | var_0.d) << (~vec3<u32>(arg_2.x, arg_2.x, 26538u) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(var_0.d, min(var_0.d, vec3<i32>(arg_1.x, u_input.a.x, -46248i)))));
    return 1166f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f - 477f)) - _wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(min(-1150f, 625f)))), -484f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~(~27674u), 29u)], select(vec3<i32>(-8088i, u_input.a.x, u_input.a.x) | vec3<i32>(1i, -1i, u_input.a.x), -vec3<i32>(1i, u_input.a.x, u_input.a.x), all(vec4<bool>(true, true, true, false))), vec4<u32>(_wgslsmith_mult_u32(5094u, 69775u), 1u, ~4294967295u, func_1(vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(637f, 1214f, 729f, 861f), false, vec4<f32>(2669f, 1526f, 518f, 127f), vec3<i32>(u_input.a.x, u_input.a.x, 18330i)), global1[_wgslsmith_index_u32(0u, 29u)], -758f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<f32>(115f, -242f, -765f), vec3<bool>(false, false, true))), select(vec3<i32>(2437i, -1i, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, false, true)), select(vec4<u32>(34236u, 1u, 1u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, false, true, false)))))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, 409f, -2437f, -1372f)) + vec4<f32>(1611f, 196f, -212f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, 554f, 277f, -641f) * vec4<f32>(1419f, 114f, -1585f, -639f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-213f, -791f, 591f, 1601f) * vec4<f32>(1102f, -2231f, 1240f, -397f)))) - vec4<f32>(-962f, -1077f, _wgslsmith_f_op_f32(sign(571f)), _wgslsmith_f_op_f32(select(930f, -177f, false)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 2147483647i)), ~27406i, _wgslsmith_mult_i32(-1i, -2147483647i)), 0i, 1i)));
    global0 = array<vec2<u32>, 7>();
    global1 = array<vec3<f32>, 29>();
    let var_1 = !var_0.b;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-var_0.a)))), all(vec2<bool>(var_0.b && var_1, !var_0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f)), _wgslsmith_f_op_f32(f32(-1f) * -976f), var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a))), -vec3<i32>(~u_input.a.x, var_0.d.x & abs(-1i), u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.a.x));
    global1 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, var_2.d.x, 2147483647i), vec4<i32>(var_0.d.x, -1i, -30651i, u_input.a.x)), vec4<i32>(var_2.d.x, u_input.a.x, -10362i, 1i)) << (abs(4294967295u) % 32u)));
}

