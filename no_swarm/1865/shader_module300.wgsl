struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, -28390i), vec2<f32>(2128f, 1000f), 4294967295u), Struct_1(vec2<i32>(0i, 1209i), vec2<f32>(-1077f, -805f), 36331u), vec3<f32>(-463f, 1449f, -126f), -506f, vec3<f32>(-141f, -1977f, -1070f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = vec4<i32>(2147483647i, -56168i, 1i, 1i);
    let var_1 = _wgslsmith_mult_u32(~firstLeadingBit(0u), ~_wgslsmith_clamp_u32(87497u, (4294967295u << (global0.b.c % 32u)) ^ ~u_input.a.x, 56856u));
    global0 = arg_3;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(max(~arg_1.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c, 88637u, 87103u, 0u), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)))), 17977u, u_input.a.x, ~(~(arg_1.c << (u_input.a.x % 32u)))), vec4<u32>(85264u, global0.a.c, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yz, vec2<u32>(arg_1.c, 32670u)), var_1), var_1));
    let var_3 = Struct_1(arg_3.b.a, global0.a.b, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, abs(_wgslsmith_mod_u32(20383u, 48628u)), ~59948u), countOneBits(_wgslsmith_sub_u32(global0.a.c, var_1) >> (max(14687u, 1u) % 32u))));
    return vec2<i32>(global0.b.a.x, ~abs(16592i));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(global0.b, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, -35869i, arg_0.a.x, u_input.b), vec4<i32>(16893i, global0.a.a.x, -27342i, arg_0.a.x)), 0i), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, u_input.b)), global0.a.a, global0.a.a)), _wgslsmith_f_op_vec2_f32(select(arg_0.b, arg_0.b, vec2<bool>(arg_1, false))), _wgslsmith_div_u32(u_input.a.x, arg_0.c)), _wgslsmith_f_op_vec3_f32(global0.e * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(562f, 2087f, arg_2.b.x)))))), _wgslsmith_f_op_f32(round(arg_2.b.x)), global0.e);
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_div_vec3_f32(var_1, var_0.e);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-504f, _wgslsmith_f_op_f32(f32(-1f) * -1549f), 1f) + var_1), var_1)) * _wgslsmith_f_op_vec3_f32(select(global0.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, -1443f, arg_2.b.x) + var_0.e)), !select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, true, arg_1), all(vec3<bool>(true, true, arg_1))))));
    var var_3 = -2172f;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d)))), -761f);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(~global0.a.a), -vec2<i32>(-3490i, -2147483647i)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(true, global0.b, -433f, Struct_2(Struct_1(vec2<i32>(global0.b.a.x, global0.a.a.x), global0.e.zz, 31093u), Struct_1(global0.a.a, vec2<f32>(global0.d, global0.e.x), u_input.c.x), global0.c, -519f, global0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, -582f) * vec2<f32>(global0.c.x, -796f)), 4294967295u), arg_0, global0.b)), u_input.c.x), global0.a, global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.c);
    let var_0 = Struct_2(Struct_1(vec2<i32>(-global0.b.a.x, select(~u_input.b, 72968i, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-global0.b.b), global0.a.c), global0.a, vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.e.x)), global0.b.b.x, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b.x, _wgslsmith_f_op_f32(sign(global0.b.b.x))) - 208f)), global0.b.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.e)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.e.x, -1032f, global0.b.b.x), vec3<f32>(global0.b.b.x, -1000f, -605f))))) + global0.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_0.b, false, Struct_1(vec2<i32>(u_input.b, u_input.b), global0.b.b, 47403u))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))));
    global0 = Struct_2(Struct_1(max(global0.a.a, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0.a.a.x), var_0.a.a, vec2<i32>(global0.b.a.x, global0.b.a.x)), -global0.b.a)), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.e.x, -675f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(958f, var_0.a.b.x) * -1576f)), var_0.b.c), global0.a, global0.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1350f + var_0.b.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f))))) * global0.b.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(259f, global0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - global0.e));
    global0 = var_0;
    return Struct_2(var_0.a, var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, global0.a.b.x, -2165f) - vec3<f32>(global0.e.x, global0.b.b.x, -2310f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1709f, var_0.d, global0.e.x), _wgslsmith_f_op_vec3_f32(-global0.e)))), -1035f, _wgslsmith_f_op_vec3_f32(-global0.e));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.b.x)) + _wgslsmith_f_op_f32(arg_0.c.x * arg_1.d))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)) + 602f), arg_0.a.b.x);
    let var_1 = vec4<i32>(-1i, -2147483647i | ((i32(-1i) * -11013i) ^ -arg_1.a.a.x), _wgslsmith_div_i32(firstLeadingBit(-2147483647i), 62769i), -4204i);
    let var_2 = Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.a.x, var_1.x) << (u_input.a.yz % vec2<u32>(32u)), vec2<i32>(2147483647i & arg_2, -6229i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, arg_1.d)))), arg_0.b.b, _wgslsmith_div_u32(firstTrailingBit(5608u), arg_1.b.c) > 0u)), ~61250u);
    var var_3 = arg_0.b.a.x;
    return Struct_1(vec2<i32>(func_2(any(vec4<bool>(true, true, true, true)), true).a.a.x, reverseBits(0i)) & (_wgslsmith_add_vec2_i32(~vec2<i32>(global0.b.a.x, 46338i), var_1.xz) ^ (~vec2<i32>(0i, arg_1.b.a.x) ^ vec2<i32>(var_1.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.b)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.b))))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, countOneBits(global0.b.c), arg_0.b.c << (global0.a.c % 32u)), vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(arg_0.a.c, 35740u, 1u)), ~(~0u), ~global0.a.c)));
}

fn func_1() -> Struct_2 {
    let var_0 = global0.b;
    let var_1 = var_0.c;
    let var_2 = ~vec3<u32>(4294967295u, 51588u, abs((var_0.c & 1u) ^ global0.a.c));
    let var_3 = all(vec3<bool>(false, true, true)) == (!any(vec3<bool>(true, true, true)) & true);
    global0 = Struct_2(func_5(func_2(var_3, true == var_3), Struct_2(Struct_1(var_0.a, global0.a.b, _wgslsmith_div_u32(var_2.x, global0.a.c)), func_2(true, u_input.a.x > 4294967295u).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, global0.d, -188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2116f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global0.e, global0.e)))), _wgslsmith_clamp_i32(max(~var_0.a.x, _wgslsmith_mod_i32(var_0.a.x, -22787i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.b, global0.a.a.x) ^ vec3<i32>(u_input.b, -15825i, -55262i), vec3<i32>(9097i, 2147483647i, 19382i)), reverseBits(0i) ^ select(global0.b.a.x, global0.b.a.x, true))), Struct_1(vec2<i32>(-1i, _wgslsmith_clamp_i32(~u_input.b, u_input.b, _wgslsmith_clamp_i32(u_input.b, -28010i, global0.b.a.x))), func_5(func_2(select(var_3, var_3, var_3), true), Struct_2(Struct_1(global0.b.a, vec2<f32>(var_0.b.x, 1795f), 49592u), func_5(Struct_2(Struct_1(var_0.a, var_0.b, u_input.a.x), Struct_1(vec2<i32>(2147483647i, 36497i), global0.b.b, u_input.c.x), vec3<f32>(-304f, var_0.b.x, global0.c.x), 179f, vec3<f32>(-2586f, global0.e.x, var_0.b.x)), Struct_2(Struct_1(global0.a.a, var_0.b, global0.b.c), Struct_1(global0.b.a, vec2<f32>(global0.a.b.x, 1889f), var_2.x), global0.e, var_0.b.x, global0.c), 1i), global0.e, -558f, _wgslsmith_f_op_vec3_f32(select(global0.c, global0.e, var_3))), 0i).b, global0.a.c), global0.e, -1001f, global0.c);
    return func_2(var_3, !all(select(vec4<bool>(false, var_3, true, var_3), !vec4<bool>(false, var_3, false, var_3), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -631f;
    var var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 * -1610f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 423f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-2105f)), var_0, global0.c.x, 1576f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.e.x, global0.a.b.x, global0.d, 277f))))))));
    global0 = func_1();
    var var_3 = func_2(any(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true))), !(!any(vec3<bool>(false, false, false)))).a.c;
    var_3 = var_1.c;
    var var_4 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(select(vec2<i32>(global0.b.a.x, 0i), global0.a.a, false) ^ vec2<i32>(-16451i, global0.b.a.x), firstLeadingBit(vec2<i32>(var_1.a.x, u_input.b)) ^ (vec2<i32>(global0.a.a.x, u_input.b) | global0.a.a)), var_1.b, 115036u), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-54813i, global0.b.a.x, -1i), global0.a.a.x), vec2<f32>(var_2.x, var_2.x), ~(~firstTrailingBit(22570u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * 1044f)) + var_0), 779f, global0.c.x), global0.e.x, vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-func_1().d), _wgslsmith_f_op_f32(func_2(var_1.b.x > var_0, select(false, false, true)).b.b.x + var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_div_f32(-666f, global0.a.b.x)), _wgslsmith_f_op_f32(min(1f, global0.c.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_4.b.b)) * vec2<f32>(_wgslsmith_f_op_f32(-1065f - 952f), _wgslsmith_f_op_f32(round(var_4.e.x)))))), ~(~abs(var_1.a.x | global0.b.a.x)), 2147483647i);
}

