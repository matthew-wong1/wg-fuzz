struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_2(Struct_1(arg_1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1302f, 1516f) + vec2<f32>(arg_1.b.x, arg_1.b.x)), vec2<f32>(704f, arg_1.a.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_0.c.a.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, arg_1.a.b.x, -147f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.a.d.x, 1000f, arg_1.a.d.x), arg_1.b.wyx), vec3<f32>(-1070f, arg_1.b.x, arg_1.b.x), true)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.b.x), -1844f, -281f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d)) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f * arg_1.b.x)), -141f) - arg_1.b));
    let var_1 = all(!(!var_0.a.a.xz));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.c.x, arg_1.a.b.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_1.b.wz, arg_0.b.a.c.zy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d, 1236f)))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.yz)), _wgslsmith_f_op_vec2_f32(-arg_0.b.b.zy)));
    var_0 = arg_0.c;
    var var_3 = arg_1;
    return ~(-11835i);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = (_wgslsmith_add_u32(reverseBits(u_input.d.x), _wgslsmith_dot_vec3_u32(~arg_0.xyy, vec3<u32>(88633u, u_input.d.x, 9434u) & arg_0.wzx)) << (13093u % 32u)) << (arg_0.x % 32u);
    let var_1 = _wgslsmith_div_i32(-2147483647i, max(-u_input.e.x, _wgslsmith_add_i32(func_3(Struct_3(true, Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(317f, -980f), vec3<f32>(356f, -1285f, -1315f), vec3<f32>(1327f, -702f, 896f)), vec4<f32>(-167f, -239f, 289f, 1199f)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(393f, 340f), vec3<f32>(-809f, -344f, -1000f), vec3<f32>(-866f, 1081f, 2012f)), vec4<f32>(851f, 2273f, 1465f, 883f)), 649f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1116f, -1000f), vec3<f32>(656f, 580f, -1000f), vec3<f32>(-1519f, -271f, 1000f)), vec4<f32>(-989f, -500f, 218f, -1637f)), 5540u, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), ~(-u_input.e.x))));
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) * -295f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-858f + -2063f)))), vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, 142f, 551f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, -1307f, -1838f, 1467f)) * vec4<f32>(-899f, -598f, -736f, 1449f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(182f, -560f, 536f, -757f), vec4<f32>(-388f, -460f, 763f, 829f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1371f, -186f, 273f, 1365f))))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))))));
    let var_3 = Struct_2(Struct_1(!vec3<bool>(true, arg_0.x > 5837u, 22881i >= u_input.e.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.a.c.xx))), vec3<f32>(_wgslsmith_f_op_f32(1682f * var_2.b.x), _wgslsmith_f_op_f32(select(539f, _wgslsmith_f_op_f32(var_2.b.x * var_2.a.d.x), var_2.a.a.x | true)), _wgslsmith_f_op_f32(f32(-1f) * -666f)), var_2.b.xyx), vec4<f32>(-1080f, 890f, _wgslsmith_f_op_f32(floor(var_2.a.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) - -295f), -1000f))));
    var_2 = var_3;
    return var_3.a;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = vec4<bool>(all(!select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(true, false), vec2<bool>(true, arg_2), true), select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(false, arg_2)))), !arg_2, arg_1.x >= (u_input.c.x >> (~firstTrailingBit(34514u) % 32u)), false | !select(true, false, arg_2));
    var_0 = vec4<bool>(max(_wgslsmith_clamp_i32(abs(31647i), _wgslsmith_mult_i32(arg_0, 24049i), u_input.e.x), _wgslsmith_mult_i32(countOneBits(u_input.e.x), -19274i)) != (u_input.e.x & arg_0), !all(vec3<bool>(any(vec4<bool>(false, arg_2, false, true)), select(var_0.x, var_0.x, true), !arg_2)), true, any(var_0.ywz));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(327f, -1510f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_div_f32(-2234f, 117f)))));
    var var_2 = Struct_2(func_2(u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1137f))), var_1, _wgslsmith_f_op_f32(abs(-592f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1782f, var_1, false)) + _wgslsmith_f_op_f32(var_1 - var_1)) * _wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(var_1 * -1263f)))));
    var_2 = Struct_2(Struct_1(!(!vec3<bool>(var_0.x, false, false)), var_2.b.xz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-307f, 1989f, var_1), vec3<f32>(-2030f, var_1, var_1), var_0.zyw)) + vec3<f32>(var_1, var_2.a.c.x, var_2.b.x)))), var_2.b.xwx), _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c.x, -270f, -1000f, 329f)))));
    return Struct_2(Struct_1(var_2.a.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(787f, var_1))) - _wgslsmith_f_op_vec2_f32(exp2(var_2.a.c.zy))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1047f, var_1), _wgslsmith_f_op_f32(var_1 * -221f), _wgslsmith_f_op_f32(-var_2.b.x))), vec3<f32>(-858f, _wgslsmith_div_f32(-1318f, _wgslsmith_f_op_f32(105f - var_1)), func_2(~vec4<u32>(53188u, u_input.d.x, arg_1.x, u_input.a)).c.x)), _wgslsmith_f_op_vec4_f32(sign(var_2.b)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_1(func_2(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x & u_input.b, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.d.x, 4294967295u, u_input.c.x))), 0u, ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), 4294967295u)).a, _wgslsmith_f_op_vec2_f32(func_1(-max(u_input.e.x, 1i), u_input.c.wzz, !select(true, arg_0.a.a.x, arg_0.a.a.x)).a.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 390f) * _wgslsmith_div_vec2_f32(vec2<f32>(171f, arg_0.b.x), arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, arg_0.b.x, -1000f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-1198f - arg_0.b.x), arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, 451f, -1713f)), arg_0.a.c, true)) * _wgslsmith_f_op_vec3_f32(func_1(u_input.e.x, vec3<u32>(0u, 14538u, u_input.d.x), arg_0.a.a.x).a.d - arg_0.b.ywy)) - _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.d))));
    var var_1 = func_1(1i, vec3<u32>(_wgslsmith_mod_u32(min(4156u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.c.x)), u_input.b), u_input.a, 0u << (u_input.b % 32u)), true);
    var var_2 = func_1(1i, u_input.c.yyw, var_0.a.x || var_0.a.x);
    let var_3 = u_input.e;
    let var_4 = select(vec2<bool>(0u < _wgslsmith_div_u32(u_input.d.x, 1u), var_1.a.a.x), func_1(u_input.e.x, ~vec3<u32>(~u_input.c.x, u_input.c.x, max(4294967295u, u_input.b)), var_3.x < var_3.x).a.a.zy, func_2(~vec4<u32>(1u, 1u, u_input.b, 1u) >> (~vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u))).b.x >= 256f);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_i32(~vec4<i32>(select(u_input.e.x, -1i, false), u_input.e.x >> (u_input.b % 32u), u_input.e.x, u_input.e.x | u_input.e.x), ~reverseBits(-vec4<i32>(0i, u_input.e.x, 1i, u_input.e.x)));
    var_0 = vec4<i32>(func_4(func_1(max(u_input.e.x, var_0.x), vec3<u32>(24844u, u_input.d.x, u_input.c.x) >> (vec3<u32>(1u, u_input.c.x, u_input.b) % vec3<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2462f, 438f)))))), _wgslsmith_mod_i32(u_input.e.x, func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(-811f, 334f), vec3<f32>(-351f, 210f, 846f), vec3<f32>(561f, 1246f, -260f)), vec4<f32>(153f, -977f, -767f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, 1147f)))), -1i, countOneBits(_wgslsmith_mod_i32(-2147483647i, 2147483647i) & (u_input.e.x ^ u_input.e.x))) << ((_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(18843u, u_input.a, 11064u), ~0u, u_input.b, 0u), _wgslsmith_add_vec4_u32(min(u_input.c, u_input.c), vec4<u32>(14003u, 1u, u_input.d.x, u_input.b))) << (vec4<u32>(1u, _wgslsmith_mod_u32(u_input.b, 0u >> (u_input.d.x % 32u)), 0u, ~abs(4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = vec4<i32>(_wgslsmith_add_i32(1i, var_0.x | 1i), u_input.e.x, select(45093i, -1i, true), -1i);
    let var_1 = vec2<bool>(true, true);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_u32(69959u >> (u_input.c.x % 32u), 0u), 1u), abs(~var_2), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_2, var_2), u_input.c.x, u_input.c.x), vec3<u32>(55488u, var_2, _wgslsmith_add_u32(64238u, u_input.c.x))), 4294967295u << (u_input.a % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, u_input.a), vec3<u32>(u_input.b, var_2, u_input.c.x) | u_input.c.wwz)), var_0.xx, u_input.c.xyz);
}

