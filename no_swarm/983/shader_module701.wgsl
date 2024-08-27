struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -48743i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = Struct_1(!(61634u <= ~u_input.b.x), arg_0, _wgslsmith_mult_i32(-select(-1i, u_input.a, false), i32(-1i) * -10579i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a << (49812u % 32u), _wgslsmith_div_i32(0i, -2147483647i), u_input.a, ~2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 7729i, 31253i) << (u_input.b % vec4<u32>(32u)))), -abs(min(-vec2<i32>(2147483647i, 12664i), vec2<i32>(u_input.a, -31416i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, 2136f, 1118f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -220f)))))));
    var var_2 = Struct_1(any(!select(vec2<bool>(false, var_0.a), select(vec2<bool>(true, true), vec2<bool>(true, var_0.a), vec2<bool>(false, true)), !vec2<bool>(true, var_0.a))), _wgslsmith_f_op_f32(trunc(200f)), -firstLeadingBit(-1i), _wgslsmith_mult_vec2_i32(~abs(var_0.d), vec2<i32>(u_input.a, var_0.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, arg_0, 537f))))));
    var var_3 = u_input.b.ww;
    let var_4 = arg_1;
    return -1i;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<i32> {
    global0 = countOneBits(arg_3.c);
    global0 = _wgslsmith_dot_vec4_i32(arg_0, ~arg_0);
    let var_0 = Struct_1(false | any(select(arg_2.zz, arg_2.yz, vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1522f + _wgslsmith_f_op_f32(f32(-1f) * -289f))))), _wgslsmith_sub_i32(-abs(-arg_3.c), firstLeadingBit(_wgslsmith_div_i32(1i, -2147483647i))), _wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.a, 92609i)), vec2<i32>(-10720i, -43757i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, _wgslsmith_f_op_f32(f32(-1f) * -262f), arg_3.e.x)));
    var var_1 = arg_3;
    var var_2 = ~(u_input.b.yw & vec2<u32>(u_input.b.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_1, arg_1))));
    return abs(min(vec2<i32>(select(i32(-1i) * -1i, -var_0.d.x, true), -(0i >> (arg_1.x % 32u))), vec2<i32>(var_1.c, ~arg_0.x)));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<f32> {
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-38092i, u_input.a, arg_0 & (u_input.a >> (arg_1 % 32u)), arg_0), vec4<i32>(-1i) * -vec4<i32>(select(arg_0, 0i, true), u_input.a & -4234i, u_input.a, _wgslsmith_clamp_i32(u_input.a, -46612i, 0i)));
    var var_0 = ~u_input.b.x;
    var var_1 = Struct_1(false, 240f, _wgslsmith_add_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) - _wgslsmith_div_f32(2452f, 892f)), arg_1), abs(-1i)), func_3(vec4<i32>(_wgslsmith_sub_i32(-75399i, _wgslsmith_sub_i32(arg_0, u_input.a)), arg_0, arg_0, -2147483647i), vec4<u32>(~14118u, ~14902u, _wgslsmith_sub_u32(u_input.b.x, arg_1) ^ u_input.b.x, min(1u, u_input.b.x)), vec3<bool>(true, false, false), Struct_1(_wgslsmith_f_op_f32(abs(363f)) > _wgslsmith_f_op_f32(step(1381f, 1261f)), _wgslsmith_f_op_f32(f32(-1f) * -265f), u_input.a, select(vec2<i32>(-4453i, 2147483647i), vec2<i32>(-1i, u_input.a), vec2<bool>(true, true)) ^ ~vec2<i32>(1i, -39970i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1000f, 626f))) + vec3<f32>(-412f, 2680f, -304f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -188f), 757f, -1000f)));
    var_0 = _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~(60650u ^ u_input.b.x), max(abs(arg_1), 0u), u_input.b.x, 0u) ^ ~u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-405f * var_1.e.x)))), -847f, _wgslsmith_f_op_f32(f32(-1f) * -855f)) + _wgslsmith_f_op_vec3_f32(var_1.e - var_1.e));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f * var_1.e.x))))), -114f, var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    global0 = u_input.a;
    var var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-345f, _wgslsmith_f_op_f32(round(1201f)), -1i < arg_2.c)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1228f - _wgslsmith_f_op_f32(trunc(-386f))), -1128f))), func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-34747i, u_input.a), 1i, _wgslsmith_mult_i32(arg_2.c, arg_0.c), _wgslsmith_div_i32(1i, arg_2.c)), -max(vec4<i32>(arg_2.d.x, 1i, u_input.a, arg_2.c), vec4<i32>(-25091i, arg_0.d.x, u_input.a, -1i))), _wgslsmith_add_vec4_u32(u_input.b, u_input.b), select(select(!vec3<bool>(arg_0.a, arg_2.a, arg_2.a), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_0.a, true, false)), !vec3<bool>(arg_2.a, arg_2.a, arg_0.a)), select(!vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, arg_2.a | true)), Struct_1(true, -552f, -1i, reverseBits(select(vec2<i32>(1i, -2147483647i), arg_0.d, arg_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-477f, arg_1.x, arg_1.x), arg_1, !vec3<bool>(true, arg_2.a, true))))).x, _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(25553i, u_input.a)), vec2<i32>(_wgslsmith_mult_i32(~arg_0.c, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), abs(arg_0.d))), (-vec2<i32>(arg_0.d.x, -6208i) | func_3(vec4<i32>(arg_2.c, arg_0.d.x, 2147483647i, 2147483647i), u_input.b, vec3<bool>(arg_0.a, true, arg_2.a), Struct_1(true, 159f, arg_2.c, arg_2.d, vec3<f32>(arg_2.e.x, arg_0.b, arg_2.b)))) >> (u_input.b.yw % vec2<u32>(32u))), vec3<f32>(-400f, 455f, -884f));
    var var_1 = arg_2.e;
    let var_2 = Struct_1(abs(1u) <= u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(2012f - -1632f))))), 1i, _wgslsmith_clamp_vec2_i32(arg_0.d ^ -vec2<i32>(arg_2.d.x, arg_0.c), arg_2.d, vec2<i32>(arg_2.c, firstLeadingBit(abs(-30272i)))), vec3<f32>(_wgslsmith_f_op_f32(-2000f - 461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(trunc(237f))))), 1000f));
    return ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, arg_0.c), 57734i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(-7075i, 1i);
    let var_0 = true;
    global0 = -func_4(Struct_1(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-445f)))), -47289i, min(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(1122f - 591f), _wgslsmith_f_op_f32(round(171f)), 1921f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1555f, 472f, 517f)) - vec3<f32>(1532f, _wgslsmith_f_op_f32(ceil(427f)), _wgslsmith_div_f32(1082f, -613f))), Struct_1(select(false, true, any(vec2<bool>(var_0, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), 2147483647i, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 2147483647i), false), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(1i, 31172u)))));
    let var_1 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(355f)) - _wgslsmith_f_op_f32(f32(-1f) * -458f))), 0i, ~(-firstLeadingBit(vec2<i32>(u_input.a, 1i))), vec3<f32>(_wgslsmith_f_op_f32(-316f - _wgslsmith_div_f32(1000f, -504f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f * -427f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1398f + 201f), _wgslsmith_f_op_vec3_f32(func_1(u_input.a, 0u)).x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f)))));
    let var_2 = 2286u;
    let var_3 = Struct_1(any(vec4<bool>(any(vec4<bool>(var_0, false, var_0, var_0)), true, var_1.a, all(vec3<bool>(false, var_0, false)))) != true, _wgslsmith_f_op_f32(sign(var_1.b)), 1i, ~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_1.d, max(vec2<i32>(-44367i, 2147483647i), var_1.d)), _wgslsmith_add_vec2_i32(var_1.d, ~vec2<i32>(u_input.a, var_1.c)), var_1.d), vec3<f32>(var_1.e.x, _wgslsmith_f_op_vec3_f32(func_1(-2147483647i, 36229u)).x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1978f))))));
    global0 = 30446i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.e.x, _wgslsmith_f_op_f32(364f - var_3.b)))), var_3.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, var_3.e.x)), _wgslsmith_f_op_f32(sign(var_1.e.x)), var_0))), -1097f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_3.b, var_1.b)))), var_3.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 2765u) ^ u_input.b.xx, vec2<u32>(94485u, u_input.b.x & var_2)), ~1u), var_1.c);
}

