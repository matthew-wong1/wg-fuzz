struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: vec3<u32> = vec3<u32>(7321u, 4294967295u, 47601u);

var<private> global3: Struct_1 = Struct_1(-1i, vec4<f32>(1000f, 108f, 1761f, 871f), vec2<i32>(-2023i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 76564i), false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(abs((global3.a >> (global1.x % 32u)) >> (~global1.x % 32u)), -6383i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global3.b * vec4<f32>(-280f, arg_2.b.x, global3.b.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(sign(arg_2.b)))) + vec4<f32>(-145f, arg_1.b.x, _wgslsmith_f_op_f32(-217f - 636f), _wgslsmith_f_op_f32(ceil(472f))))), vec2<i32>(((arg_3.a << (4294967295u % 32u)) >> (select(global1.x, 0u, arg_3.e) % 32u)) & abs(~arg_2.c.x), 2147483647i), vec2<i32>(2147483647i, max(2812i, arg_0.c.x)), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, global3.e, arg_3.e), vec3<bool>(arg_2.e, false, true)), select(vec3<bool>(arg_3.e, true, arg_0.e), vec3<bool>(false, arg_3.e, false), vec3<bool>(arg_1.e, arg_2.e, arg_1.e)), vec3<bool>(true, false, true))));
    var var_1 = !vec2<bool>(all(vec3<bool>(true, var_0.e, var_0.e)), arg_3.e && arg_3.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1491f, _wgslsmith_f_op_f32(floor(arg_2.b.x)), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.x)))))));
    var var_3 = Struct_1(~(~(-arg_3.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, global3.b.x, var_2.x, arg_3.b.x) * vec4<f32>(var_0.b.x, var_2.x, 777f, var_2.x)))), vec4<f32>(392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f)), _wgslsmith_div_f32(-896f, _wgslsmith_f_op_f32(-824f + var_2.x)), -2332f))), global3.d, vec2<i32>(-6704i, ~arg_0.d.x), true & any(!select(vec3<bool>(arg_1.e, var_0.e, false), vec3<bool>(var_0.e, false, false), vec3<bool>(arg_2.e, false, var_1.x))));
    let var_4 = arg_3.e;
    return ~firstLeadingBit(_wgslsmith_add_i32(arg_3.a, arg_1.c.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(min(countOneBits(vec4<i32>(_wgslsmith_div_i32(arg_2, 0i), _wgslsmith_clamp_i32(global3.c.x, arg_1.c.x, arg_1.a), arg_1.c.x, func_3(Struct_1(arg_0.c.x, vec4<f32>(global3.b.x, global3.b.x, -1557f, global3.b.x), vec2<i32>(global3.a, -2147483647i), vec2<i32>(arg_1.c.x, 2147483647i), true), Struct_1(-1101i, vec4<f32>(global3.b.x, -627f, global3.b.x, global3.b.x), vec2<i32>(-42785i, arg_1.d.x), arg_1.c, true), arg_1, Struct_1(arg_1.d.x, global3.b, vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global3.a, arg_2), arg_1.e)))), ~(~(-vec4<i32>(arg_0.a, -14655i, global3.a, -2147483647i)))), vec4<i32>(-(arg_0.a | arg_2), arg_2, countOneBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, arg_0.a), -4279i)), 23892i));
    let var_1 = arg_1.b.x;
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, global2.x, 1u), u_input.d)) | (firstLeadingBit(vec3<u32>(65408u, global1.x, 42020u) | u_input.b.wzw) >> (u_input.d % vec3<u32>(32u))), ~vec3<u32>(global2.x << ((u_input.b.x & u_input.b.x) % 32u), (u_input.d.x ^ 1u) | 1u, (u_input.a & 34277u) << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = all(!(!arg_1.yy));
    let var_1 = _wgslsmith_f_op_f32(-global3.b.x);
    var var_2 = -889f;
    global3 = Struct_1(1i & countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_2, arg_2), arg_2)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(328f)), _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(108f, global3.b.x)) + global3.b))), arg_2, select(arg_2, (abs(global3.c) ^ global3.d) | vec2<i32>(_wgslsmith_mult_i32(global3.c.x, arg_2.x), func_3(Struct_1(-36610i, vec4<f32>(334f, -1486f, var_1, global3.b.x), arg_2, vec2<i32>(1i, arg_2.x), arg_1.x), Struct_1(global3.d.x, vec4<f32>(-1000f, 1315f, var_1, 825f), global3.d, global3.c, true), Struct_1(global3.d.x, global3.b, vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(-2147483647i, global3.d.x), false), Struct_1(global3.d.x, vec4<f32>(-178f, 633f, 275f, 1916f), vec2<i32>(arg_2.x, global3.a), global3.c, false))), !(any(vec4<bool>(global3.e, false, true, true)) & true)), select(false, arg_1.x, true));
    return Struct_1(~(~arg_2.x) >> (47326u % 32u), _wgslsmith_f_op_vec4_f32(exp2(global3.b)), arg_2 >> (vec2<u32>(1u, _wgslsmith_mult_u32(u_input.a << (58094u % 32u), _wgslsmith_sub_u32(global2.x, 76539u))) % vec2<u32>(32u)), ~global3.c, true);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(step(global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1651f + 430f)))), -400f)));
    var var_2 = Struct_1(0i, global3.b, min(_wgslsmith_add_vec2_i32(global3.d, vec2<i32>(-1i) * -global3.c), global3.d), global3.d, global3.e);
    global3 = func_4(vec4<u32>(~(21593u ^ func_2(Struct_1(var_2.d.x, vec4<f32>(-215f, global3.b.x, 693f, global3.b.x), vec2<i32>(353i, 2147483647i), global3.c, false), Struct_1(-7268i, vec4<f32>(global3.b.x, 158f, global3.b.x, -2050f), global3.d, vec2<i32>(var_2.d.x, var_2.a), true), global3.d.x)), ~abs(var_0) ^ ~1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, ~u_input.b.x), max(countOneBits(142179u), var_0)), u_input.c.x & global1.x), vec3<bool>(true, true, var_2.e), select(~(-vec2<i32>(global3.c.x, -2147483647i)), ~reverseBits(global3.c) | ((global3.d << (u_input.b.xw % vec2<u32>(32u))) << (u_input.b.yz % vec2<u32>(32u))), global3.e));
    global0 = global3.b.x;
    return Struct_1(-_wgslsmith_sub_i32(var_2.d.x, ~(-1i >> (var_0 % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_2.b.x, global3.b.x), _wgslsmith_f_op_f32(sign(-1037f)), _wgslsmith_f_op_f32(-645f * var_2.b.x), _wgslsmith_div_f32(576f, -1768f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.b.x), 1609f, _wgslsmith_f_op_f32(f32(-1f) * -473f)), any(vec4<bool>(true, var_2.e, var_2.e, global3.e)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(468f)), _wgslsmith_f_op_f32(-var_2.b.x), global3.b.x, _wgslsmith_f_op_f32(round(global3.b.x)))), select(firstLeadingBit(var_2.d), _wgslsmith_sub_vec2_i32(~vec2<i32>(global3.a, 1i), (vec2<i32>(-1i, 1i) << (u_input.c % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(vec2<i32>(var_2.c.x, 44409i), var_2.d)), vec2<bool>(!all(vec3<bool>(global3.e, var_2.e, global3.e)), !all(vec2<bool>(true, global3.e)))), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-2147483647i, var_2.a)) & select(countOneBits(vec2<i32>(global3.c.x, 0i)), ~vec2<i32>(var_2.c.x, global3.c.x), -2074f > var_2.b.x), _wgslsmith_add_vec2_i32(global3.c, var_2.c & vec2<i32>(-40047i, var_2.a))), false);
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec2<f32>(-1337f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1178f, -454f)) - global3.b.x), 2593f), _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f * -1281f) + arg_0.b.x))));
    var_0 = arg_0.b.yy;
    var var_1 = vec2<bool>(true, all(!vec4<bool>(true, any(vec3<bool>(true, true, true)), true, func_4(u_input.b, vec3<bool>(true, arg_0.e, global3.e), arg_0.c).e)));
    let var_2 = select(vec2<bool>(all(vec4<bool>(true, true, true, var_1.x)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(!vec2<bool>(global3.e, var_1.x), select(vec2<bool>(true, true), vec2<bool>(arg_0.e, false), false), vec2<bool>(global3.e, true))), false);
    var_0 = global3.b.yx;
    return firstTrailingBit(~(~abs(~vec4<i32>(-14380i, arg_0.a, 2147483647i, -7212i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-926f));
    let var_1 = ~global2.x;
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(func_5(func_1()), vec4<i32>(50568i, _wgslsmith_div_i32(global3.d.x, global3.a), 1i, 5814i << (var_1 % 32u)));
    let var_3 = 2063f;
    let var_4 = Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(global3.b))))), abs(abs(global3.c)), vec2<i32>(var_2.x, _wgslsmith_dot_vec3_i32(~var_2.yxz, vec3<i32>(-1i) * -var_2.zxx)), true);
    global0 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(min(19551u, 4294967295u), _wgslsmith_clamp_u32(u_input.a, var_1, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, (global2.x <= global1.x) | !global3.e))));
}

