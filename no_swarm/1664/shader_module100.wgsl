struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = true;
    let var_1 = ~1i;
    global1 = arg_0.x <= arg_0.x;
    global1 = var_0;
    return -350f;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    global0 = all(vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)), any(vec2<bool>(false, false)))) | false;
    var var_0 = arg_0;
    var var_1 = u_input.b.x;
    var_0 = (vec3<u32>(~42774u >> ((u_input.c | arg_1.x) % 32u), 4294967295u, 53102u) ^ arg_0) | vec3<u32>(1u << (arg_1.x % 32u), 1u, ~_wgslsmith_mult_u32(reverseBits(arg_0.x), _wgslsmith_mult_u32(u_input.a, 1u)));
    let var_2 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), arg_2 <= 574f), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), true), vec3<bool>(true, true, true));
    return vec4<u32>(arg_1.x ^ ~(~firstTrailingBit(12456u)), arg_1.x ^ ~(~_wgslsmith_add_u32(arg_0.x, var_0.x)), (arg_1.x << (74655u % 32u)) << (min(~_wgslsmith_clamp_u32(69429u, 47909u, arg_0.x), ~arg_1.x ^ 0u) % 32u), 10749u);
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-420f, 235f, 750f) * vec3<f32>(-782f, 1078f, 2570f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(297f, -731f, 1113f) + vec3<f32>(-1180f, 400f, -503f))) + vec3<f32>(1f, 1f, 1f))));
    global1 = all(vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), (~arg_0.x >> (arg_0.x % 32u)) > 4294967295u, false));
    var var_1 = false;
    var var_2 = abs(-1i);
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 20896i), vec3<i32>(21556i, 1i, u_input.b.x)), vec3<i32>(1i, 1i, 1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~24788i, countOneBits(u_input.b.x), u_input.b.x), vec3<i32>(31450i, u_input.b.x ^ u_input.b.x, u_input.b.x)), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.b.x), countOneBits(-12444i | -u_input.b.x)), abs(abs(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 1u, 0u), arg_0.zyw) % vec3<u32>(32u))));
    return firstLeadingBit((1i ^ (~0i | _wgslsmith_div_i32(var_3.x, 20532i))) & _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-81208i, 21065i), vec2<i32>(-7661i, var_3.x)), ~u_input.b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f + -244f) - 136f)), _wgslsmith_f_op_f32(ceil(1f)), -119f), func_4(~func_3(vec3<u32>(arg_1.b, 4294967295u, 0u), _wgslsmith_div_vec3_u32(arg_1.d.xww, vec3<u32>(4294967295u, 54472u, u_input.a)), 668f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), -1720f, _wgslsmith_f_op_f32(sign(-824f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-272f, 1545f, 184f), vec3<f32>(-2221f, -604f, -1018f), vec3<bool>(arg_3.x, true, arg_3.x)))))))), false);
    let var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(33866u, arg_1.b, 8868u))) + _wgslsmith_f_op_f32(floor(var_0.c.x)))))));
    global1 = all(!vec3<bool>(arg_1.d.x < firstTrailingBit(1u), all(vec2<bool>(arg_1.c, false)), var_0.d));
    let var_2 = -27266i;
    let var_3 = -vec4<i32>(abs(u_input.b.x), i32(-1i) * -797i, 24965i, -select(2147483647i, -24494i, true) & -40269i);
    return -46605i;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.c.x), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_f32(f32(-1f) * -428f))) + _wgslsmith_f_op_f32(trunc(arg_2.a.x))), -1570f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x)))));
    var var_1 = ~_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, -21710i, 0i, u_input.b.x), ~(vec4<i32>(1i, arg_2.b, 9035i, arg_0) | vec4<i32>(-19120i, arg_2.b, u_input.b.x, 1i))) | (vec4<i32>(-(i32(-1i) * -38359i), abs(-arg_2.b), ~_wgslsmith_clamp_i32(32404i, 1i, 32832i), 0i) & ~_wgslsmith_add_vec4_i32(vec4<i32>(-16483i, 26137i, 25728i, arg_0) << (vec4<u32>(0u, 0u, 4294967295u, 36835u) % vec4<u32>(32u)), select(vec4<i32>(arg_0, 48332i, arg_0, -18245i), vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 36372i), arg_2.d)));
    var_1 = firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_2.b, arg_2.b, var_1.x, u_input.b.x), ~reverseBits(vec4<i32>(33894i, -1i, -29049i, 1i))));
    var var_2 = any(vec3<bool>(any(!(!vec2<bool>(arg_1, true))), true, any(!vec4<bool>(arg_1, true, true, arg_2.d)) || any(select(vec3<bool>(arg_2.d, false, true), vec3<bool>(arg_1, false, arg_1), true))));
    let var_3 = u_input.d & (~u_input.d ^ max(u_input.d, vec4<u32>(84526u, u_input.a, _wgslsmith_dot_vec3_u32(u_input.d.wyy, u_input.d.zxw), u_input.a)));
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = arg_0.d;
    global0 = true;
    global1 = any(!(!select(!vec3<bool>(arg_3, true, true), select(vec3<bool>(arg_1.d, true, arg_0.d), vec3<bool>(arg_1.d, true, arg_1.d), true), select(vec3<bool>(true, arg_2.c, arg_2.a), vec3<bool>(false, false, arg_0.d), false))));
    global0 = !all(!(!select(vec3<bool>(arg_3, arg_0.d, arg_2.a), vec3<bool>(arg_2.c, false, arg_3), vec3<bool>(arg_2.c, false, arg_3))));
    let var_0 = func_5(~arg_0.b << (~(~func_3(u_input.d.yxz, vec3<u32>(1u, 1u, u_input.c), arg_1.c.x).x) % 32u), !arg_1.d, func_5(firstLeadingBit(-1i), any(!select(vec2<bool>(arg_2.c, true), vec2<bool>(arg_3, arg_2.a), true)), arg_1));
    return Struct_1(any(!(!select(vec4<bool>(true, true, false, arg_1.d), vec4<bool>(arg_3, false, true, arg_1.d), vec4<bool>(arg_3, arg_3, arg_1.d, arg_1.d)))), 4294967295u, true, vec4<u32>(_wgslsmith_sub_u32(countOneBits(180236u), arg_2.d.x), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(17612u, 4294967295u))) ^ _wgslsmith_clamp_u32(u_input.d.x, abs(arg_2.e), abs(arg_2.b)), firstTrailingBit(25160u) ^ u_input.d.x, arg_2.e), 1u | ~arg_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>((u_input.b.x & u_input.b.x) > _wgslsmith_sub_i32(-34436i, u_input.b.x), u_input.d.x == _wgslsmith_mult_u32(108116u, u_input.d.x)));
    global1 = var_0.x;
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.d, u_input.d) | (~(~_wgslsmith_clamp_u32(20450u, u_input.a, 0u)) << (((25043u | u_input.d.x) ^ 6587u) % 32u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -896f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1178f * _wgslsmith_f_op_f32(func_1(u_input.d.yxy))))))));
    global0 = true;
    let var_3 = func_6(func_5(abs(1i ^ func_2(Struct_1(var_0.x, 57315u, true, u_input.d, u_input.c), Struct_1(var_0.x, 73040u, true, vec4<u32>(var_1, u_input.a, 4294967295u, 0u), 1u), u_input.b.x, vec2<bool>(var_0.x, var_0.x))), false, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1092f, 497f, var_2))), u_input.b.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, 1869f, var_2))))), false)), func_5(i32(-1i) * -abs(u_input.b.x), var_0.x, func_5(u_input.b.x, !all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), func_5(u_input.b.x, var_1 >= 1u, func_5(u_input.b.x, var_0.x, Struct_2(vec3<f32>(289f, var_2, -443f), -2147483647i, vec3<f32>(2221f, var_2, var_2), var_0.x))))), Struct_1(true, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 25358u), ~1u, 1u, u_input.d.x | 39908u), vec4<u32>(0u, 1u, ~var_1, _wgslsmith_div_u32(var_1, 16085u))), func_5(abs(select(u_input.b.x, u_input.b.x, var_0.x)), false, Struct_2(vec3<f32>(-441f, var_2, var_2), 1i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, var_2, var_2), vec3<f32>(-519f, 1895f, -1000f))), false)).d, firstLeadingBit(~vec4<u32>(var_1, 62832u, 86442u, var_1)), 41129u), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(35323u, 1u), vec3<f32>(-1551f, var_2, _wgslsmith_f_op_f32(f32(-1f) * -781f)), vec2<i32>(_wgslsmith_mod_i32(~u_input.b.x, -_wgslsmith_mult_i32(u_input.b.x, 0i)), -6247i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(362f)) * _wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(trunc(952f))))));
}

