struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<f32>(132f, 307f, -983f), 4294967295u, 68513u, vec2<f32>(687f, 528f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> i32 {
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.a)))), ~(~_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zx)), global0.a.b, _wgslsmith_f_op_vec2_f32(arg_1.a.xx - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, global0.a.a.x), vec2<f32>(arg_2.d.x, 671f)))));
    let var_0 = -abs(countOneBits(_wgslsmith_div_vec3_i32(max(u_input.c.zxx, vec3<i32>(u_input.c.x, -2147483647i, 36311i)), u_input.c.zxx)));
    var var_1 = Struct_1(vec3<f32>(529f, global0.a.d.x, 1270f), 1u, 0u, vec2<f32>(-1345f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * _wgslsmith_f_op_f32(floor(884f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 1080f))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_1.a, _wgslsmith_f_op_vec3_f32(-arg_1.a))), 4294967295u, abs(1u), vec2<f32>(var_1.d.x, global0.a.d.x));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-505f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(ceil(-407f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.a.a))))), ~_wgslsmith_dot_vec2_u32(~u_input.b.zz ^ ~u_input.b.zy, firstTrailingBit(~u_input.b.xz)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.a.xz - _wgslsmith_f_op_vec2_f32(exp2(var_1.d)))))));
    return 18199i;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(global0.a, u_input.c.xz, ~(~u_input.b.yyz), 5631u, vec3<u32>(global0.a.b, 1u, ~(~4294967295u)));
    let var_1 = -_wgslsmith_div_i32(-45078i, func_3(Struct_3(global0.a), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0), ~1u, var_0.c.x, vec2<f32>(-1341f, arg_0.x)), var_0.a, ~u_input.d));
    let var_2 = vec2<bool>(true, true);
    let var_3 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(var_3.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -346f))), 1u, ~(~54764u), arg_0.xy));
    return var_3.a;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = global0.a.a;
    global0 = Struct_3(func_2(global0.a.a, 1000f));
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.d.x)), _wgslsmith_div_f32(-1987f, -1000f))), ~_wgslsmith_dot_vec3_u32(u_input.b.xwz, ~vec3<u32>(u_input.d, global0.a.c, u_input.d)), ~(~1u), global0.a.a.yz));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, global0.a.a.x, 1000f))) * _wgslsmith_f_op_vec3_f32(exp2(global0.a.a))), _wgslsmith_clamp_u32(max(u_input.d, min(58020u, 23060u)), global0.a.b, u_input.d), _wgslsmith_add_u32(~global0.a.b, ~u_input.b.x) << (_wgslsmith_add_u32(global0.a.c, ~4294967295u) % 32u), global0.a.d));
    return Struct_2(Struct_1(vec3<f32>(var_0.x, 1301f, _wgslsmith_f_op_f32(-global0.a.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_1.a.c | global0.a.b, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(20832u, var_1.a.b, 0u, u_input.b.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a.c, global0.a.b, 4294967295u, var_1.a.c), vec4<u32>(0u, global0.a.b, 13188u, 59529u))), select(u_input.b.x, 29746u, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, 1000f) - vec2<f32>(-853f, var_1.a.d.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.d.x, -1152f), var_0.yy, true)) + var_0.yz))), -(~vec2<i32>(arg_0, _wgslsmith_clamp_i32(-39305i, arg_1.x, 61130i))), u_input.b.wzz, var_1.a.c, ~abs(u_input.b.wxx));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = !vec3<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(1108f * _wgslsmith_f_op_f32(f32(-1f) * -283f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(410f)))), (~global0.a.c >> (arg_0.x % 32u)) <= min(arg_2.c.x ^ 1u, arg_0.x));
    var var_1 = ~select(~abs(u_input.b) | abs(u_input.b), max(u_input.b, u_input.b), !(!(!vec4<bool>(false, var_0.x, false, true))));
    var var_2 = func_1(min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(14568i, 1i), abs(firstLeadingBit(u_input.a))), _wgslsmith_div_i32(0i >> (max(global0.a.b, u_input.b.x) % 32u), arg_2.b.x)), u_input.c.xxy).a;
    var var_3 = 574f;
    let var_4 = vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(global0.a.c, arg_2.a.c, ~max(6562u, global0.a.c) << (1u % 32u)));
    return Struct_2(arg_3.a, _wgslsmith_add_vec2_i32(select(select(vec2<i32>(arg_1.b.x, arg_1.b.x), -vec2<i32>(u_input.a, arg_2.b.x), var_0.zy), -reverseBits(vec2<i32>(arg_1.b.x, -1i)), !any(vec3<bool>(var_0.x, false, true))), -(vec2<i32>(0i, 2147483647i) << (vec2<u32>(0u, arg_1.d) % vec2<u32>(32u))) ^ select(vec2<i32>(arg_2.b.x, arg_1.b.x) & vec2<i32>(u_input.a, u_input.a), ~arg_2.b, !vec2<bool>(var_0.x, var_0.x))), arg_1.c, (46930u ^ select(61096u, global0.a.c, global0.a.d.x == -524f)) & ~4294967295u, ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.b.zwy), vec3<u32>(4294967295u, func_2(vec3<f32>(var_2.a.x, arg_3.a.d.x, -1000f), arg_3.a.d.x).b, ~var_2.c), vec3<u32>(0u << (arg_0.x % 32u), select(arg_3.a.b, 63673u, var_0.x), var_1.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~(vec3<u32>(47368u, ~_wgslsmith_sub_u32(13419u, u_input.d), 4294967295u) & max(~vec3<u32>(global0.a.b, 0u, 27189u), max(u_input.b.yyy >> (arg_0.c % vec3<u32>(32u)), u_input.b.xxz)));
    let var_1 = Struct_3(Struct_1(arg_0.a.a, var_0.x, ~((global0.a.c & 34677u) | ~global0.a.c), arg_0.a.d));
    return func_2(_wgslsmith_f_op_vec3_f32(-global0.a.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-942f - global0.a.a.x) * 1214f))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    global0 = Struct_3(func_4(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 17054u), vec2<u32>(4324u, arg_2))), func_1(u_input.c.x, ~reverseBits(u_input.c.zwy)), func_1(-2147483647i >> ((arg_1.b | global0.a.c) % 32u), -vec3<i32>(-1i, -2147483647i, 1i)), Struct_3(func_5(func_1(u_input.a, u_input.c.zyw)))).a);
    var var_0 = _wgslsmith_div_f32(global0.a.a.x, arg_1.a.x);
    let var_1 = -750f;
    var var_2 = !(!select(vec2<bool>(23306u == arg_0.x, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true));
    var var_3 = 49067u & _wgslsmith_clamp_u32(abs(~1u), arg_1.c, ~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), ~4294967295u));
    return Struct_3(func_5(func_1(-countOneBits(u_input.a), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -8869i, -2147483647i), u_input.c.xxz))));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = func_6(~(~max(u_input.b.xyz << (u_input.b.zyw % vec3<u32>(32u)), u_input.b.xzw & vec3<u32>(0u, 43794u, arg_1.a.b))), func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x), global0.a.a)), ~u_input.d, func_6(u_input.b.wwx, Struct_1(global0.a.a, arg_1.a.c, u_input.d, vec2<f32>(-1064f, -209f)), u_input.d, global0.a.a).a.b, vec2<f32>(319f, arg_1.a.a.x)), func_4(u_input.b.xw, func_1(0i, vec3<i32>(u_input.c.x, u_input.a, u_input.a)), func_4(u_input.b.yw, Struct_2(Struct_1(global0.a.a, 7495u, 1u, global0.a.a.xz), vec2<i32>(u_input.c.x, u_input.a), u_input.b.wyy, 91183u, vec3<u32>(0u, u_input.b.x, global0.a.b)), Struct_2(Struct_1(vec3<f32>(global0.a.d.x, 548f, arg_1.a.d.x), u_input.b.x, arg_1.a.c, arg_1.a.d), vec2<i32>(-2147483647i, u_input.c.x), u_input.b.zyw, 1u, vec3<u32>(29024u, u_input.b.x, 1u)), Struct_3(Struct_1(global0.a.a, 1u, 1u, arg_1.a.a.zx))), func_6(u_input.b.yzw, arg_1.a, 1u, vec3<f32>(-1352f, 1000f, 1000f))).b, ~u_input.b.xyz, min(max(1u, 0u), ~1u), func_1(2147483647i, abs(vec3<i32>(u_input.c.x, u_input.a, 0i))).e)), global0.a.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_6(u_input.b.xyx, Struct_1(vec3<f32>(global0.a.d.x, 702f, arg_1.a.d.x), 34484u, 90390u, global0.a.a.zy), 20761u, vec3<f32>(arg_1.a.a.x, 686f, arg_1.a.d.x)).a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1179f, -554f, global0.a.a.x), vec3<f32>(arg_1.a.d.x, arg_1.a.a.x, 1870f)))), vec3<f32>(-939f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.d.x))), global0.a.a.x), all(select(!vec4<bool>(true, arg_0, true, false), vec4<bool>(true, false, arg_3, arg_3), global0.a.b != u_input.b.x)))));
    global0 = Struct_3(arg_1.a);
    var_0 = Struct_3(var_0.a);
    let var_1 = !arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 2033f)), -468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(787f))), _wgslsmith_f_op_f32(select(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1749f, -200f))), u_input.d < func_5(Struct_2(Struct_1(vec3<f32>(arg_2, arg_2, -1661f), global0.a.b, 15707u, arg_1.a.a.zx), u_input.c.xy, vec3<u32>(u_input.d, 1u, global0.a.c), var_0.a.b, vec3<u32>(0u, 42479u, u_input.d))).b))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(!(global0.a.d.x == _wgslsmith_f_op_f32(-global0.a.a.x)), func_6(vec3<u32>(1u, ~(~1u), u_input.d), func_5(func_4(vec2<u32>(u_input.b.x, 1u), func_1(u_input.a, vec3<i32>(2147483647i, u_input.a, 11352i)), func_1(u_input.c.x, u_input.c.yyy), Struct_3(global0.a))), 1u, vec3<f32>(667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.x * global0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) * _wgslsmith_f_op_f32(-global0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), !(!all(vec3<bool>(false, true, false))));
    global0 = Struct_3(func_1(u_input.a, u_input.c.wxw).a);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a.a, _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.x, global0.a.d.x, 1404f), vec3<f32>(-2017f, global0.a.d.x, global0.a.d.x))))), u_input.b.x, (min(430u, 4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.c, 4294967295u, u_input.b.x), u_input.b.zwy) % 32u)) | _wgslsmith_mult_u32(global0.a.b, u_input.b.x), global0.a.a.yz));
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, ~(~u_input.d >> (7000u % 32u))), 10095u & global0.a.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.a.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x - global0.a.a.x), _wgslsmith_f_op_f32(-global0.a.a.x), global0.a.d.x))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)))), _wgslsmith_mult_u32(~(~12061u), _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(global0.a.c, 16972u)), u_input.b.xz)), ~82207u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a.d, vec2<f32>(global0.a.d.x, -1063f), vec2<bool>(true, true))), vec2<f32>(-1947f, -180f))))));
    let var_2 = func_5(Struct_2(func_5(Struct_2(func_4(vec2<u32>(25512u, u_input.d), Struct_2(global0.a, u_input.c.xz, vec3<u32>(var_0, var_0, 0u), 0u, vec3<u32>(var_1.c, u_input.b.x, 87378u)), Struct_2(Struct_1(vec3<f32>(var_1.d.x, var_1.d.x, -626f), 0u, 58840u, vec2<f32>(2152f, 1000f)), vec2<i32>(35667i, 2147483647i), u_input.b.wzz, var_0, u_input.b.ywx), Struct_3(Struct_1(vec3<f32>(var_1.a.x, global0.a.d.x, global0.a.d.x), 1u, u_input.b.x, global0.a.a.zx))).a, vec2<i32>(1i, u_input.c.x), u_input.b.wxy ^ vec3<u32>(var_0, 49997u, 4294967295u), firstTrailingBit(26263u), select(vec3<u32>(0u, u_input.d, global0.a.c), u_input.b.xyx, false))), _wgslsmith_div_vec2_i32(u_input.c.wy, u_input.c.xx), ~_wgslsmith_add_vec3_u32(vec3<u32>(52607u, global0.a.c, var_0), reverseBits(u_input.b.xyy)), ~4294967295u, u_input.b.www)).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_vec2_u32(u_input.b.wz, u_input.b.wy) & u_input.b.yy);
}

