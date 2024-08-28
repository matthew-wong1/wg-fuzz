struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = Struct_2(vec2<i32>(arg_0.c, -16614i), 1i);
    return 1000f;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    global1 = _wgslsmith_div_u32(~(u_input.c << ((_wgslsmith_sub_u32(4294967295u, u_input.c) << (1u % 32u)) % 32u)), u_input.c);
    let var_0 = all(!(!vec4<bool>(all(vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_2.d)), arg_0.x != arg_0.x, all(vec2<bool>(arg_2.d, arg_2.d)), arg_2.e.a.x > 935f)));
    global1 = 4294967295u;
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(~arg_2.e.b, firstTrailingBit(arg_2.e.b))) & arg_2.e.b.yx, arg_2.e.b.xz >> (select(~arg_2.e.b.yz, countOneBits(~vec2<u32>(0u, 0u)), var_0) % vec2<u32>(32u)), ~arg_2.e.b.xy);
    var var_2 = !any(vec3<bool>(true, arg_2.d, !select(var_0, false, false)));
    return 95573u;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(606f, 239f)), -2170f)), _wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(func_2(Struct_3(-2147483647i, 6943i, -45464i, false, Struct_1(vec2<f32>(-2125f, -1234f), vec3<u32>(arg_1, 68021u, 1u), vec4<f32>(553f, 1521f, 729f, -1019f), arg_0.x)), -1386f)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-235f, _wgslsmith_f_op_f32(-1000f * -2505f)), vec2<f32>(1f, 1f)))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(i32(-1i) * -2147483647i, ~u_input.a, u_input.a >> (4294967295u % 32u), true, Struct_1(vec2<f32>(1395f, -1195f), vec3<u32>(arg_1, u_input.c, 4294967295u), vec4<f32>(1730f, 214f, -210f, -997f), 2147483647i)), 914f)), -1000f));
    let var_1 = min(1824u, ~arg_1);
    global0 = _wgslsmith_mod_i32(u_input.b.x, ~(-_wgslsmith_div_i32(i32(-1i) * -21746i, 50534i)));
    let var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(29714u, select(~arg_1, ~u_input.c, false)), ~(u_input.c << (var_1 % 32u))), var_1, 0u & abs(var_1), func_3(arg_0, var_0.x, Struct_3(min(_wgslsmith_div_i32(u_input.b.x, 2147483647i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), arg_0.x, -52799i, false, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0), ~vec3<u32>(u_input.c, var_1, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, var_0.x, -384f, -463f)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)))));
    let var_3 = select(vec2<bool>(false || all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec4<bool>(true, all(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true)), all(vec4<bool>(true, true, false, false)) || (any(vec4<bool>(false, false, true, false)) | (arg_0.x <= 29771i))), 261f >= var_0.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -685f);
    global0 = countOneBits((2147483647i >> (~arg_0.b.x % 32u)) << (func_3(vec4<i32>(arg_0.d, arg_3.a.x, 8845i, arg_3.b) << (vec4<u32>(47643u, arg_2.c.e.b.x, arg_0.b.x, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f - var_0)), Struct_3(arg_0.d, i32(-1i) * -2147483647i, arg_2.c.b, !arg_1.x, Struct_1(arg_2.d.e.c.xw, arg_0.b, vec4<f32>(arg_0.a.x, 552f, arg_2.a.e.a.x, arg_0.a.x), 0i))) % 32u));
    var var_1 = -_wgslsmith_mod_i32(-10164i, u_input.b.x) >= arg_0.d;
    let var_2 = _wgslsmith_add_u32(0u & _wgslsmith_mult_u32(arg_2.a.e.b.x, ~arg_0.b.x), u_input.c) > (59602u & _wgslsmith_clamp_u32(arg_0.b.x, ~min(4294967295u, 15655u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, arg_0.b.x, 22477u), 7753u)));
    global0 = -u_input.b.x;
    return Struct_2(u_input.b, abs(1i));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~vec3<u32>(select(0u, u_input.c, true), _wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.c, abs(u_input.c)), 93215u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 16662u))), ~min(13247u, u_input.c)));
    var var_1 = -586f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-812f))), 1119f))));
    let var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(426f + 537f), _wgslsmith_div_f32(1000f, -507f))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + vec2<f32>(var_3, var_3)), vec2<f32>(var_3, var_3))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(470f, var_3), _wgslsmith_f_op_f32(f32(-1f) * -1150f))), 1433f)), var_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -179f, -1517f, var_3)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -1303f, var_3, var_3))))), vec4<f32>(_wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), -120f, true)), _wgslsmith_f_op_vec2_f32(func_1(~vec4<i32>(17680i, u_input.a, 0i, arg_0.a.x), 5811u)).x, 2918f), true)), -29872i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstLeadingBit(vec4<i32>(~u_input.a, u_input.b.x, -2147483647i, -u_input.a)));
    var var_1 = !any(vec2<bool>(true, true));
    var var_2 = func_5(func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-359f, 774f) + vec2<f32>(938f, 363f)), _wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(u_input.b.x, -19672i, 1i, 1i), u_input.c))), vec3<u32>(~u_input.c, 15498u << (u_input.c % 32u), u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 378f, 1140f, -639f) * vec4<f32>(-773f, -1516f, -140f, -1729f)), _wgslsmith_add_i32(countOneBits(var_0.x), u_input.b.x | -2147483647i)), !vec3<bool>(true, select(false, true, false), all(vec2<bool>(false, true))), Struct_4(Struct_3(_wgslsmith_sub_i32(u_input.a, 1i), _wgslsmith_mult_i32(9796i, -1i), -2147483647i, any(vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(1000f, 2677f), vec3<u32>(u_input.c, 41619u, u_input.c), vec4<f32>(1676f, -121f, 336f, 1776f), 2147483647i)), Struct_2(vec2<i32>(-10301i, u_input.a), var_0.x ^ var_0.x), Struct_3(abs(-2147483647i), max(var_0.x, 2147483647i), -35728i, true, Struct_1(vec2<f32>(772f, 1000f), vec3<u32>(4294967295u, 4294967295u, 17642u), vec4<f32>(829f, 889f, 1000f, -238f), -1i)), Struct_3(-36462i, 48238i, 1i, true, Struct_1(vec2<f32>(-376f, -1453f), vec3<u32>(54100u, u_input.c, 2408u), vec4<f32>(1485f, 1321f, 1812f, -1000f), -1032i)), var_0.xzw), Struct_2(-vec2<i32>(var_0.x, u_input.a), abs(var_0.x))));
    var var_3 = true;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a), vec3<u32>(1u, _wgslsmith_clamp_u32(~11089u, 0u, ~var_2.b.x) | ~4294967295u, ~countOneBits(var_2.b.x) >> (11602u % 32u)), vec4<f32>(757f, _wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -868f)), ~2201i);
    let var_4 = Struct_4(Struct_3(_wgslsmith_add_i32(~var_0.x, _wgslsmith_dot_vec2_i32(var_0.xw, u_input.b & var_0.zx)), max(0i, 2147483647i), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-19437i, -2147483647i, var_0.x, var_0.x), vec4<i32>(49991i, var_2.d, -22681i, var_0.x))), (firstTrailingBit(37585i) != -10438i) & all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), func_5(func_4(func_5(Struct_2(vec2<i32>(52383i, 0i), var_0.x)), vec3<bool>(true, true, true), Struct_4(Struct_3(var_2.d, -568i, 3077i, false, Struct_1(var_2.c.zz, vec3<u32>(u_input.c, var_2.b.x, var_2.b.x), vec4<f32>(var_2.a.x, -1357f, -577f, 590f), var_0.x)), Struct_2(vec2<i32>(u_input.a, -51287i), -2147483647i), Struct_3(10769i, -1i, -1i, false, Struct_1(vec2<f32>(1050f, var_2.c.x), var_2.b, vec4<f32>(var_2.a.x, -2863f, 524f, var_2.a.x), -2147483647i)), Struct_3(-2147483647i, var_2.d, 0i, true, Struct_1(vec2<f32>(-890f, 1143f), var_2.b, vec4<f32>(var_2.c.x, -850f, -139f, -599f), u_input.a)), vec3<i32>(-25047i, 2147483647i, u_input.a)), func_4(Struct_1(var_2.a, vec3<u32>(1801u, 0u, 50433u), vec4<f32>(var_2.a.x, var_2.c.x, -1000f, var_2.a.x), var_0.x), vec3<bool>(true, false, true), Struct_4(Struct_3(10849i, 49544i, -39524i, false, Struct_1(var_2.a, var_2.b, vec4<f32>(-935f, -1203f, var_2.c.x, 1432f), var_0.x)), Struct_2(var_0.yz, var_0.x), Struct_3(u_input.a, var_0.x, -21165i, false, Struct_1(vec2<f32>(148f, var_2.a.x), vec3<u32>(0u, var_2.b.x, u_input.c), var_2.c, var_0.x)), Struct_3(23734i, 64277i, var_2.d, true, Struct_1(var_2.a, vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(227f, -860f, var_2.c.x, -735f), u_input.a)), vec3<i32>(68728i, var_0.x, u_input.b.x)), Struct_2(var_0.yw, -42607i))))), Struct_2(vec2<i32>(~var_2.d | var_2.d, -var_2.d), func_5(Struct_2(vec2<i32>(1i, 59770i), func_5(Struct_2(vec2<i32>(var_2.d, -29251i), var_0.x)).d)).d), Struct_3(~_wgslsmith_sub_i32(i32(-1i) * -12561i, _wgslsmith_mult_i32(u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.b.x)), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x) - vec2<f32>(var_2.c.x, var_2.c.x)), vec3<u32>(u_input.c, u_input.c, 0u) ^ vec3<u32>(u_input.c, u_input.c, var_2.b.x), _wgslsmith_f_op_vec4_f32(-var_2.c), 1i), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), Struct_4(Struct_3(1i, u_input.a, var_0.x, true, Struct_1(var_2.a, var_2.b, vec4<f32>(-442f, var_2.c.x, var_2.c.x, -247f), -12839i)), Struct_2(vec2<i32>(-1i, u_input.b.x), -21477i), Struct_3(var_0.x, 0i, -8182i, false, Struct_1(var_2.a, vec3<u32>(0u, 4294967295u, 4294967295u), var_2.c, 0i)), Struct_3(var_0.x, u_input.a, -2147483647i, true, Struct_1(var_2.a, var_2.b, vec4<f32>(-959f, var_2.a.x, -1430f, var_2.c.x), -46279i)), var_0.zxw), func_4(Struct_1(var_2.a, vec3<u32>(45419u, 1u, var_2.b.x), var_2.c, u_input.b.x), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), Struct_4(Struct_3(2147483647i, var_0.x, -1i, false, Struct_1(var_2.a, vec3<u32>(var_2.b.x, u_input.c, var_2.b.x), var_2.c, -4903i)), Struct_2(vec2<i32>(-22362i, 0i), var_2.d), Struct_3(var_2.d, -12793i, var_2.d, false, Struct_1(var_2.a, vec3<u32>(var_2.b.x, 68357u, 61070u), var_2.c, var_2.d)), Struct_3(-37966i, -35627i, var_0.x, true, Struct_1(var_2.c.ww, var_2.b, var_2.c, u_input.b.x)), vec3<i32>(u_input.b.x, -1i, 59011i)), func_4(Struct_1(var_2.a, vec3<u32>(var_2.b.x, var_2.b.x, u_input.c), vec4<f32>(-220f, -736f, 1225f, var_2.a.x), var_2.d), vec3<bool>(false, false, false), Struct_4(Struct_3(24358i, -29451i, u_input.a, true, Struct_1(vec2<f32>(183f, 264f), vec3<u32>(3316u, 0u, u_input.c), vec4<f32>(-746f, var_2.a.x, 323f, 1025f), -1i)), Struct_2(var_0.yy, var_0.x), Struct_3(var_2.d, 2147483647i, -2147483647i, true, Struct_1(var_2.c.zy, var_2.b, var_2.c, u_input.b.x)), Struct_3(-1i, var_0.x, u_input.a, true, Struct_1(vec2<f32>(-244f, 603f), vec3<u32>(0u, var_2.b.x, 0u), vec4<f32>(var_2.a.x, var_2.c.x, -332f, var_2.a.x), u_input.b.x)), vec3<i32>(-1i, var_0.x, u_input.a)), Struct_2(vec2<i32>(10193i, var_2.d), 56376i)))).b, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(21011u, 1u, 36569u, 103584u), vec4<u32>(u_input.c, var_2.b.x, var_2.b.x, var_2.b.x))) < ~reverseBits(0u), func_5(Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -25789i), vec2<i32>(u_input.a, var_2.d)), _wgslsmith_div_i32(var_2.d, var_2.d)))), Struct_3(~reverseBits(var_0.x), u_input.b.x, var_0.x, true & !all(vec2<bool>(false, true)), Struct_1(vec2<f32>(func_5(Struct_2(var_0.xx, 2147483647i)).a.x, var_2.c.x), func_5(Struct_2(u_input.b, var_0.x)).b, _wgslsmith_f_op_vec4_f32(var_2.c + vec4<f32>(-216f, var_2.c.x, -135f, -143f)), abs(u_input.a) & var_2.d)), vec3<i32>(var_2.d, ~(u_input.a & 1i), min(61831i, _wgslsmith_mult_i32(23569i, var_0.x) | min(var_0.x, var_2.d))));
    var var_5 = var_4.c.d;
    var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(u_input.a, var_2.d), var_2.d, ((var_4.c.c << (0u % 32u)) >> (0u % 32u)) << (1u % 32u)), _wgslsmith_f_op_f32(-var_2.c.x), var_2.b.xx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, abs(u_input.c)), vec2<u32>(~(0u << (var_2.b.x % 32u)), ~_wgslsmith_sub_u32(5437u, var_2.b.x))), ~abs(min(vec4<u32>(4294967295u, 4294967295u, 0u, var_4.a.e.b.x), vec4<u32>(2244u, 1u, var_4.d.e.b.x, 48090u)) >> (abs(vec4<u32>(4294967295u, 63595u, 26690u, 1u)) % vec4<u32>(32u))));
}

