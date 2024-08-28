struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 4294967295u, 4294967295u, 47929u), vec4<u32>(1273u, 22017u, 17759u, 1u), vec4<u32>(1u, 84636u, 0u, 60660u), vec4<u32>(5287u, 0u, 4294967295u, 60983u), vec4<u32>(37959u, 71533u, 50800u, 1u), vec4<u32>(153901u, 38492u, 0u, 0u), vec4<u32>(35258u, 4294967295u, 58843u, 27386u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 28680u, 23352u, 22429u), vec4<u32>(6248u, 32011u, 67243u, 1021u), vec4<u32>(1u, 66931u, 4294967295u, 24564u), vec4<u32>(74911u, 0u, 0u, 0u), vec4<u32>(40738u, 18297u, 4294967295u, 4294967295u), vec4<u32>(4867u, 93315u, 38176u, 1u), vec4<u32>(25133u, 0u, 31691u, 10208u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 37781u, 82112u), vec4<u32>(5423u, 0u, 1u, 1u), vec4<u32>(4294967295u, 64863u, 0u, 1u), vec4<u32>(89033u, 56592u, 66040u, 36579u), vec4<u32>(67915u, 1442u, 0u, 89416u), vec4<u32>(4294967295u, 68141u, 0u, 1u), vec4<u32>(1u, 16957u, 1u, 86445u), vec4<u32>(57008u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 29678u, 662u, 21092u), vec4<u32>(35688u, 11077u, 4294967295u, 0u), vec4<u32>(70757u, 0u, 0u, 4294967295u), vec4<u32>(58348u, 7095u, 4294967295u, 13568u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(40120u, 0u, 94756u, 79042u), vec4<u32>(40548u, 826u, 4294967295u, 54970u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1.a.wy;
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    let var_1 = arg_1;
    global0 = array<vec4<u32>, 31>();
    return arg_1;
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = vec2<bool>(false, true);
    global0 = array<vec4<u32>, 31>();
    let var_1 = abs(1191u);
    global0 = array<vec4<u32>, 31>();
    let var_2 = vec4<i32>(max(~_wgslsmith_div_i32(~(-2147483647i), _wgslsmith_sub_i32(15545i, 2147483647i)), abs(-2147483647i)), firstLeadingBit(i32(-1i) * -abs(2147483647i)), 2536i, _wgslsmith_dot_vec2_i32(vec2<i32>(~(~1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, -1i))), vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(0i)), select(~(-39678i), i32(-1i) * -2489i, true))));
    return vec3<f32>(1000f, 895f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-377f + 1257f), _wgslsmith_f_op_f32(1000f * 795f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    return -1000f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> i32 {
    global0 = array<vec4<u32>, 31>();
    var var_0 = 1u;
    var_0 = max(max(_wgslsmith_sub_u32(u_input.b.x >> (arg_1.b % 32u), 4294967295u | u_input.b.x), 86089u), _wgslsmith_dot_vec2_u32(select(firstLeadingBit(u_input.c.yz), u_input.c.zz << (vec2<u32>(arg_1.b, 39392u) % vec2<u32>(32u)), vec2<bool>(false, true)), u_input.c.yy & vec2<u32>(arg_1.b, arg_1.b))) << (_wgslsmith_mod_u32(~61518u, ~35861u) % 32u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<f32>(1f, 1f, 1f)), arg_1.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1184f, 820f, -645f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false, true, arg_1.a.x))) - vec3<f32>(1172f, 420f, 830f))))), -260f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f - -910f) - 1f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1917f)), _wgslsmith_f_op_f32(max(-376f, 196f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-145f)))), 1399f, all(vec3<bool>(arg_1.c.d, true, arg_1.a.x))))));
    let var_2 = vec3<i32>((func_1(Struct_4(vec3<f32>(1212f, var_1.x, -2137f)), arg_1, !arg_1.c.d, -65556i).c.b | -1i) ^ ~(-(arg_1.c.a.x >> (arg_0 % 32u))), ~0i, arg_1.c.a.x);
    return 41865i;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_4 {
    let var_0 = func_1(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(576f, -507f, -465f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, -351f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2185f, 729f, -752f) * vec3<f32>(841f, -1233f, 583f))))), Struct_2(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.d, arg_1.d, true, true), vec4<bool>(arg_1.d, true, arg_0, arg_1.d)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_1.d, false, arg_1.d, arg_0), arg_0), !vec4<bool>(arg_1.d, arg_0, true, arg_0), true), vec4<bool>(any(vec4<bool>(arg_0, arg_1.d, arg_0, false)), !arg_1.d, true, true)), _wgslsmith_add_u32(u_input.a, 1u), func_1(Struct_4(vec3<f32>(142f, -1364f, 1000f)), func_1(Struct_4(vec3<f32>(492f, -2276f, 1110f)), Struct_2(vec4<bool>(false, false, false, true), 0u, arg_1), false, countOneBits(arg_1.c.x)), !(!arg_1.d), abs(2147483647i)).c), arg_0 || any(vec2<bool>(arg_1.d, false)), reverseBits(_wgslsmith_dot_vec2_i32(max(arg_1.c, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<i32>(arg_1.c.x, arg_1.b))), _wgslsmith_mult_vec2_i32(~vec2<i32>(-54494i, 1i), vec2<i32>(0i, 9291i)))));
    var var_1 = Struct_1(var_0.c.a, ~arg_1.c.x, arg_1.a, all(var_0.a.wxz));
    global0 = array<vec4<u32>, 31>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(func_4(Struct_4(vec3<f32>(858f, 311f, -220f)), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, 1960f, -289f) + vec3<f32>(391f, -464f, -231f)))), 1f)));
    var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(667f - var_2.a.x)), _wgslsmith_f_op_f32(317f + -1186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))) - var_2.a));
    return Struct_4(vec3<f32>(-1274f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(step(-1057f, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = func_5(true | !(!any(vec4<bool>(false, true, false, false))), Struct_1(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-25120i, 18930i), vec2<i32>(1i, -25885i), vec2<i32>(-31419i, -2147483647i))), func_2(u_input.b.x, func_1(Struct_4(vec3<f32>(-592f, -1318f, -655f)), Struct_2(vec4<bool>(false, false, true, false), 20560u, Struct_1(vec2<i32>(-1i, -71151i), -1i, vec2<i32>(-33175i, -27121i), true)), true, 1i)), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(79281i, -1i), abs(vec2<i32>(1i, -2147483647i)), -vec2<i32>(-2147483647i, -42008i)), vec2<i32>(1i, 1i)), true || (_wgslsmith_mult_i32(0i, -14767i) <= func_2(36459u, Struct_2(vec4<bool>(true, true, false, false), u_input.b.x, Struct_1(vec2<i32>(-37172i, 2147483647i), 2147483647i, vec2<i32>(-2147483647i, -13559i), true))))));
    var var_2 = Struct_2(vec4<bool>(true, func_1(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(679f, 882f, var_1.a.x) * var_1.a)), Struct_2(vec4<bool>(true, true, true, false), abs(u_input.c.x), func_1(Struct_4(var_1.a), Struct_2(vec4<bool>(false, false, true, true), 0u, Struct_1(vec2<i32>(-2147483647i, 2147483647i), 2147483647i, vec2<i32>(1i, 2147483647i), true)), false, 113566i).c), true, -2147483647i).c.d, (~u_input.c.x > select(u_input.a, u_input.c.x, false)) == !any(vec4<bool>(true, true, false, false)), true), ~_wgslsmith_clamp_u32(1u, u_input.a, ~(u_input.a << (u_input.c.x % 32u))), Struct_1(~select(_wgslsmith_sub_vec2_i32(vec2<i32>(-23666i, -11778i), vec2<i32>(-6299i, -4255i)), _wgslsmith_mod_vec2_i32(vec2<i32>(16998i, 31241i), vec2<i32>(-1i, -2147483647i)), true), max(-24762i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2746u, 1689u, 9416u), u_input.c) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, 1i), vec2<i32>(-23480i, 54681i)), abs(vec2<i32>(34041i, 1i)))), _wgslsmith_mult_vec2_i32(max(vec2<i32>(1i, 1i), -vec2<i32>(-6778i, 2147483647i)), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-17162i, 56115i), vec2<i32>(2147483647i, -2364i)))), all(vec2<bool>(true, true))));
    let var_3 = 0u;
    global0 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(139i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1321f, 486f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_1.a.zx, _wgslsmith_f_op_vec2_f32(var_1.a.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 594f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2300f, -583f), vec2<f32>(var_1.a.x, var_1.a.x))))))));
}

