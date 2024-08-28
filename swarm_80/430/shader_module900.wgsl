struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-2543i, -6685i);

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<u32>(29841u, arg_0.d, u_input.a);
    let var_1 = Struct_1(vec3<i32>(-2147483647i, _wgslsmith_div_i32(1i, -2147483647i), -30818i >> (arg_0.d % 32u)) & vec3<i32>(0i, ~(-2147483647i) << (_wgslsmith_sub_u32(u_input.a, arg_0.d) % 32u), min(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -17115i), arg_0.a.xz), -51429i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, arg_0.e.x)), arg_0.c && true, ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(288f, arg_0.e.x) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.b)) + vec2<f32>(arg_0.b.x, arg_0.e.x)), arg_0.e))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)))), _wgslsmith_f_op_f32(floor(1840f)));
    let var_3 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-13381i, i32(-1i) * -60992i, arg_0.a.x), max(-arg_0.a, vec3<i32>(var_1.a.x, 0i, var_1.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-198f, 506f), _wgslsmith_f_op_vec2_f32(-var_1.e))), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(-752f - -1262f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.e, vec2<f32>(var_1.e.x, var_1.e.x)), vec2<f32>(var_1.b.x, var_1.e.x))))), arg_0.c, _wgslsmith_add_u32(arg_0.d, ~16340u), arg_0.b);
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-var_3.a.x, -global0.x), ~(-2147483647i)) << ((firstLeadingBit(countOneBits(vec2<u32>(0u, 95225u))) << (var_0.xz % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(22453i, abs(248i)), abs(var_3.a.x >> (var_0.x % 32u))), vec2<i32>(~_wgslsmith_dot_vec3_i32(var_3.a, vec3<i32>(-1i, 6309i, var_3.a.x)), var_1.a.x)));
    return -489f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1255f))))) + _wgslsmith_f_op_f32(-201f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(13544i, 28565i, 45607i) ^ vec3<i32>(global0.x, global0.x, -35936i), vec2<f32>(1f, 1f), true, u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, -713f)))))));
    global0 = vec2<i32>(-_wgslsmith_mult_i32(global0.x, 42409i), 43193i);
    global0 = vec2<i32>(-19624i, global0.x);
    global0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(31885i, global0.x, global0.x)), abs(vec3<i32>(45996i, global0.x, 1i) ^ vec3<i32>(2147483647i, 26445i, global0.x))), ~global0.x);
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_add_i32(35164i, 71115i), _wgslsmith_add_i32(0i, 0i)) >> (reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u))) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, global0.x), vec3<i32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 904f)))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-138f - -295f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 563f)))))), !all(select(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], false)))), !any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15624u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.a | 36409u, u_input.a | 3929u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) << ((vec3<u32>(45031u, 34131u, u_input.a) ^ vec3<u32>(1u, 17887u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, select(u_input.a, 95397u, false)))), vec2<f32>(-1000f, var_0));
    return false;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(1i, 7726i, -1i)), (vec3<i32>(0i, arg_0, global0.x) | vec3<i32>(-2147483647i, global0.x, global0.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 32911u)) % vec3<u32>(32u))), max((i32(-1i) * -41068i) & (arg_0 << (u_input.a % 32u)), _wgslsmith_add_i32(~global0.x, arg_0)), countOneBits(-(~arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, _wgslsmith_div_f32(-286f, -288f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, 802f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(779f, 591f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(826f, -124f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1077f, 419f))))), !any(vec2<bool>(true, func_2())), 44310u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2341f, -145f) * vec2<f32>(-1247f, -1000f)))), vec2<f32>(713f, -1766f), any(vec3<bool>(true, true, true)))))));
    var var_1 = Struct_1(firstLeadingBit(~(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, global0.x, 0i), vec3<i32>(-43847i, 12493i, 76678i)))), _wgslsmith_f_op_vec2_f32(ceil(var_0.e)), true, ~(~var_0.d) >> (~0u % 32u), _wgslsmith_f_op_vec2_f32(var_0.e * _wgslsmith_f_op_vec2_f32(abs(var_0.b))));
    let var_2 = var_0;
    var var_3 = var_0.a;
    var var_4 = Struct_1(~abs(vec3<i32>(-var_3.x, var_3.x, var_1.a.x >> (2778u % 32u))), vec2<f32>(-2441f, -840f), false && var_2.c, 0u, _wgslsmith_div_vec2_f32(var_2.e, vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(-var_1.e.x)))));
    return any(vec4<bool>(false, var_2.c, !(true == any(global1[_wgslsmith_index_u32(var_2.d, 16u)])), select(true, true, var_0.a.x > var_2.a.x) && true));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * arg_2.b.x), -1284f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1)))) * _wgslsmith_f_op_f32(exp2(arg_1.e.x))));
    let var_1 = (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(24883i, -4355i, arg_0, -1i) ^ vec4<i32>(arg_1.a.x, -1i, arg_2.a.x, arg_0), vec4<i32>(2147483647i, arg_1.a.x, 0i, 2147483647i))) > -arg_2.a.x;
    var_0 = _wgslsmith_f_op_f32(step(-781f, arg_2.b.x));
    var var_2 = Struct_1(arg_2.a, arg_2.e, var_1 & false, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, arg_2.d, 19592u) & vec3<u32>(1u, 1u, 0u)), firstTrailingBit(vec3<u32>(0u, 4294967295u, arg_2.d) | vec3<u32>(arg_2.d, arg_1.d, arg_2.d))), ~(~(arg_1.d ^ 30691u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-156f)), arg_2.e.x)), _wgslsmith_f_op_f32(select(arg_1.b.x, -911f, arg_1.e.x != 1478f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1))) + arg_2.e.x))));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = !arg_0.c;
    global0 = arg_1.a.zx;
    let var_1 = arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + 1841f))))));
    global0 = countOneBits(arg_0.a.yx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(1471f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.e.x, arg_1.b.x, false)), 412f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(func_4(9148i, Struct_1(vec3<i32>(global0.x, -72859i, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1266f, -454f)), func_1(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(123199u, 36578u, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-971f, 1610f))), Struct_1(vec3<i32>(global0.x, 1i, global0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(185f, -479f))), true, 10705u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2344f, -2735f)))), func_4(-1i, func_4(-1i, Struct_1(vec3<i32>(global0.x, 55556i, global0.x), vec2<f32>(455f, 789f), true, 1u, vec2<f32>(-347f, -225f)), Struct_1(vec3<i32>(-4358i, global0.x, 5827i), vec2<f32>(2022f, -388f), true, u_input.a, vec2<f32>(582f, 399f))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, -49351i, 0i), vec3<i32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, -289f) - vec2<f32>(444f, -504f)), true, max(u_input.a, 1u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1978f, 819f))))), ~vec3<u32>(u_input.a, ~u_input.a, ~0u)))));
    var var_1 = func_4(abs(global0.x), func_4(global0.x, func_4(-2147483647i, Struct_1(abs(vec3<i32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(325f, 296f), vec2<f32>(-229f, 658f))), 38026u < u_input.a, ~58606u, _wgslsmith_f_op_vec2_f32(vec2<f32>(943f, -308f) * vec2<f32>(223f, 241f))), func_4(global0.x, Struct_1(vec3<i32>(26874i, -2147483647i, 6474i), vec2<f32>(-710f, 845f), false, 32669u, vec2<f32>(-173f, 582f)), Struct_1(vec3<i32>(global0.x, -1i, -14599i), vec2<f32>(739f, 1185f), false, u_input.a, vec2<f32>(1135f, -424f)))), func_4(global0.x, func_4(-global0.x, Struct_1(vec3<i32>(global0.x, 32086i, 0i), vec2<f32>(-815f, 1558f), true, u_input.a, vec2<f32>(1000f, -813f)), func_4(global0.x, Struct_1(vec3<i32>(global0.x, 1i, global0.x), vec2<f32>(-589f, -436f), false, u_input.a, vec2<f32>(-642f, 601f)), Struct_1(vec3<i32>(global0.x, 42359i, -1i), vec2<f32>(1002f, 557f), false, 0u, vec2<f32>(-918f, -621f)))), func_4(global0.x, Struct_1(vec3<i32>(global0.x, -1i, global0.x), vec2<f32>(-1000f, -715f), true, 4294967295u, vec2<f32>(1333f, 133f)), Struct_1(vec3<i32>(global0.x, -44394i, 2147483647i), vec2<f32>(-165f, -1000f), true, 1u, vec2<f32>(352f, -501f))))), func_4(-_wgslsmith_dot_vec4_i32(vec4<i32>(9032i, 38868i, global0.x, global0.x), vec4<i32>(-1i, 1i, global0.x, -1i)) & ~global0.x, func_4(_wgslsmith_mod_i32(2147483647i, select(global0.x, 9971i, false)), func_4(~global0.x, func_4(5984i, Struct_1(vec3<i32>(global0.x, global0.x, global0.x), vec2<f32>(-1510f, 738f), false, u_input.a, vec2<f32>(-238f, -1000f)), Struct_1(vec3<i32>(0i, global0.x, 22442i), vec2<f32>(-357f, -428f), false, u_input.a, vec2<f32>(-104f, 957f))), Struct_1(vec3<i32>(-23615i, global0.x, global0.x), vec2<f32>(-242f, 367f), true, 0u, vec2<f32>(2214f, -821f))), func_4(~global0.x, Struct_1(vec3<i32>(global0.x, -30722i, global0.x), vec2<f32>(250f, 1624f), true, 16162u, vec2<f32>(738f, 482f)), Struct_1(vec3<i32>(-13444i, 8748i, global0.x), vec2<f32>(1399f, -207f), true, 1u, vec2<f32>(-793f, 160f)))), func_4(global0.x, Struct_1(~vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(576f, 1265f), vec2<f32>(-819f, 553f)), true, u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1772f, -664f)))), Struct_1(vec3<i32>(0i, global0.x, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 170f) + vec2<f32>(-648f, -151f)), func_1(0i), _wgslsmith_clamp_u32(65849u, u_input.a, 24262u), _wgslsmith_div_vec2_f32(vec2<f32>(717f, -285f), vec2<f32>(152f, 752f))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(var_1.e.x, -753f))))));
    global1 = array<vec4<bool>, 16>();
    global1 = array<vec4<bool>, 16>();
    global1 = array<vec4<bool>, 16>();
    global1 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(2775u, ~(~vec3<u32>(var_1.d, 1u, ~1u)));
}

