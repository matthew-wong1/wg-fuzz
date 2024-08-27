struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(!vec4<bool>(false, false, any(!vec3<bool>(false, false, arg_0)), arg_0), _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(u_input.e << (4294967295u % 32u), 1u), u_input.a.x | reverseBits(60402u), true), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.e), vec2<u32>(u_input.a.x, u_input.e)), vec2<u32>(u_input.a.x, 4294967295u))), min(~vec4<i32>(-7777i, firstTrailingBit(u_input.c), u_input.b, -2147483647i), firstLeadingBit(vec4<i32>(7676i, _wgslsmith_sub_i32(u_input.b, u_input.d), u_input.b, _wgslsmith_mult_i32(1203i, u_input.d)))), -vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c, 35659i, u_input.d), vec4<i32>(u_input.c, 0i, u_input.c, 1i), vec4<i32>(-42053i, u_input.c, u_input.d, u_input.d))), countOneBits(u_input.c), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(2147483647i, 0i))), select(countOneBits(1u), 5841u, arg_0 | !arg_0));
    var_0 = Struct_1(var_0.a, 8878u, firstLeadingBit(var_0.c), abs(var_0.d), 30969u);
    var_0 = Struct_1(!var_0.a, ~(~0u), _wgslsmith_sub_vec4_i32(-select(var_0.c, _wgslsmith_mult_vec4_i32(var_0.c, var_0.c), true), var_0.c), vec3<i32>(_wgslsmith_add_i32(min(u_input.d & 19179i, 0i), var_0.c.x), ~2147483647i, _wgslsmith_add_i32(u_input.c & 52784i, -_wgslsmith_mult_i32(3567i, -23970i))), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~var_0.e, ~0u), reverseBits(~25476u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 57208u, 4294967295u), u_input.a), ~var_0.e))));
    var_0 = Struct_1(select(!(!(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x))), select(!select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, arg_0, var_0.a.x), vec4<bool>(true, arg_0, true, arg_0)), vec4<bool>(false, false || arg_0, all(vec3<bool>(var_0.a.x, false, true)), !var_0.a.x), (41478u ^ u_input.e) >= 1u), select(var_0.a, select(!var_0.a, vec4<bool>(var_0.a.x, false, arg_0, false), select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(arg_0, var_0.a.x, var_0.a.x, false))), vec4<bool>(true, arg_0 | true, any(vec4<bool>(true, true, var_0.a.x, arg_0)), true))), 14639u, _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.d, i32(-1i) * -u_input.c, ~select(2147483647i, -3894i, arg_0), var_0.d.x), var_0.c), var_0.c.yyx, u_input.e);
    var_0 = Struct_1(vec4<bool>(!var_0.a.x & true, var_0.a.x, any(var_0.a.zw), var_0.a.x), 0u, vec4<i32>(-38383i, min(-select(u_input.d, 14046i, arg_0), var_0.d.x), 25258i, 42329i), var_0.c.zxz, u_input.a.x);
    return !var_0.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> Struct_5 {
    var var_0 = Struct_2(Struct_1(func_3(true), 29194u, vec4<i32>(~0i, ~arg_0.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.x, arg_0.x), ~29380i), arg_0.x), arg_0.wxw, ~4294967295u & ~_wgslsmith_clamp_u32(u_input.e, 4294967295u, 19456u)), Struct_1(vec4<bool>((arg_2 | true) | (29400u >= arg_1), arg_2, !arg_2, true), ~u_input.e, min(select(arg_0, vec4<i32>(2633i, u_input.b, u_input.d, u_input.b), vec4<bool>(arg_2, arg_2, false, true)), arg_0 << (vec4<u32>(arg_1, u_input.e, arg_1, 73675u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(arg_0, arg_0), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(2147483647i, -33079i, arg_0.x)), arg_0.zzw), ~(u_input.a.x >> (8682u % 32u)) | _wgslsmith_mod_u32(~arg_1, 67452u)), select(~vec2<u32>(38061u, arg_1) | vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x << (arg_1 % 32u)), vec2<u32>(_wgslsmith_mult_u32(arg_1, ~arg_1), _wgslsmith_div_u32(u_input.e, 55910u)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), !vec2<bool>(false, arg_2), vec2<bool>(false, true)), !vec2<bool>(arg_2, true), true | !arg_2)), Struct_1(select(!select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, true, false)), !(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !vec4<bool>(arg_2, arg_2, arg_2, true)), 0u, arg_0, -arg_0.zyw, arg_1 >> (arg_1 % 32u)), Struct_1(vec4<bool>(true, u_input.a.x > arg_1, false, false), ~u_input.a.x, vec4<i32>(~68322i ^ _wgslsmith_sub_i32(u_input.b, arg_0.x), -1i, u_input.c, -arg_0.x), vec3<i32>(arg_0.x, firstTrailingBit(arg_0.x), firstLeadingBit(i32(-1i) * -1i)), u_input.a.x));
    let var_1 = -910f;
    var_0 = Struct_2(var_0.b, var_0.e, ~vec2<u32>(_wgslsmith_mult_u32(~11905u, 0u), arg_1), var_0.e, var_0.d);
    let var_2 = abs(-arg_0.zw);
    return Struct_5(~(u_input.a >> (u_input.a % vec4<u32>(32u))), -13044i, arg_0, Struct_3(Struct_2(Struct_1(!vec4<bool>(true, arg_2, true, var_0.a.a.x), _wgslsmith_add_u32(26819u, 0u), vec4<i32>(6860i, 1i, 2147483647i, u_input.d), var_0.a.d, u_input.e | 0u), var_0.b, ~var_0.c << (vec2<u32>(u_input.e, 52773u) % vec2<u32>(32u)), var_0.e, var_0.a), select(vec3<bool>(arg_2, all(var_0.a.a), false), select(vec3<bool>(arg_2, arg_2, false), func_3(var_0.a.a.x).zxz, any(var_0.b.a)), vec3<bool>(select(true, false, arg_2), !var_0.d.a.x, false))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mult_u32(15816u, 1u);
    var_0 = firstLeadingBit(u_input.e);
    var var_1 = func_2(-(~vec4<i32>(u_input.b, ~(-1i), _wgslsmith_mod_i32(u_input.d, u_input.b), u_input.c)), ~(~(~0u)), all(!vec3<bool>(false, any(vec3<bool>(arg_0.x, arg_0.x, true)), !arg_0.x)));
    var_0 = 0u;
    return Struct_3(Struct_2(Struct_1(func_2(-vec4<i32>(-1i, 45031i, var_1.d.a.d.c.x, var_1.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.d.a.e.e), var_1.a.wxy), 12570u == var_1.d.a.a.b).d.a.d.a, 4294967295u, (var_1.d.a.e.c ^ var_1.d.a.e.c) ^ (var_1.c >> (var_1.a % vec4<u32>(32u))), select(reverseBits(var_1.d.a.a.d), vec3<i32>(-33305i, 16068i, var_1.c.x), true), _wgslsmith_add_u32(u_input.a.x, 1u)), func_2(vec4<i32>(u_input.c, ~(-36428i), u_input.c | u_input.b, firstTrailingBit(var_1.d.a.e.d.x)), _wgslsmith_sub_u32(~74113u, 3625u), true).d.a.e, _wgslsmith_add_vec2_u32(u_input.a.wy, _wgslsmith_div_vec2_u32(var_1.d.a.c, ~var_1.d.a.c)), var_1.d.a.b, Struct_1(vec4<bool>(false, var_1.d.a.e.c.x < var_1.c.x, u_input.a.x <= 1u, true), min(~u_input.e, 21348u), select(var_1.c, -vec4<i32>(-46138i, var_1.d.a.d.c.x, 55144i, var_1.b), false), var_1.d.a.e.c.xwx, ~60845u | (1u >> (var_1.a.x % 32u)))), vec3<bool>(var_1.d.b.x, func_3(!(98827u < u_input.a.x)).x, !(!any(var_1.d.a.e.a))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(func_2(vec4<i32>(~_wgslsmith_add_i32(arg_0.a.b.d.x, 1419i), u_input.c, 23247i >> (min(92834u, u_input.a.x) % 32u), 0i), ~1u, (_wgslsmith_dot_vec3_i32(vec3<i32>(30543i, -14920i, u_input.d), vec3<i32>(u_input.b, 0i, arg_0.a.e.c.x)) | (arg_0.a.b.c.x ^ 6869i)) < max(~u_input.c, u_input.b)).d.a.b, Struct_1(vec4<bool>(true, true, u_input.d > -u_input.c, all(func_2(arg_0.a.a.c, 7562u, true).d.a.a.a.wzz)), 1u, arg_0.a.d.c, -(arg_0.a.a.c.yww >> (vec3<u32>(arg_0.a.a.b, u_input.e, 1u) % vec3<u32>(32u))), _wgslsmith_div_u32(~(arg_0.a.d.e >> (arg_0.a.b.b % 32u)), _wgslsmith_div_u32(arg_0.a.e.e, arg_0.a.d.e) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), arg_0.a.c) % 32u))), ~vec2<u32>(_wgslsmith_div_u32(18843u, 4294967295u) | firstLeadingBit(u_input.a.x), _wgslsmith_add_u32(u_input.a.x ^ arg_0.a.c.x, abs(u_input.a.x))), arg_0.a.b, func_2(vec4<i32>(~_wgslsmith_dot_vec3_i32(arg_0.a.a.c.zww, vec3<i32>(u_input.b, u_input.c, 17097i)), firstLeadingBit(u_input.b), -(~1i), 0i), func_1(vec2<bool>(!arg_0.a.d.a.x, u_input.e >= arg_0.a.e.e)).a.c.x, any(!(!arg_0.a.b.a.yy))).d.a.e);
    return Struct_1(select(arg_0.a.b.a, func_3(true), (abs(var_0.d.d.x) <= _wgslsmith_dot_vec2_i32(var_0.d.c.yw, arg_0.a.e.d.xz)) && true), 0u, arg_0.a.d.c, _wgslsmith_clamp_vec3_i32(var_0.e.c.xzw, vec3<i32>(1i, var_0.b.c.x << (0u % 32u), (2147483647i << (u_input.a.x % 32u)) << (arg_0.a.e.b % 32u)), _wgslsmith_sub_vec3_i32(var_0.b.d, arg_0.a.d.c.zyy)), 949u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec2<bool>(true, all(vec2<bool>(true, true)))));
    var_0 = func_1(vec2<bool>(!(!(!var_0.a.x)), _wgslsmith_f_op_f32(min(-585f, 1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1850f, -1000f, var_0.a.x))))).a.b;
    let var_1 = func_2(-(~vec4<i32>(u_input.b, min(0i, -2147483647i), 0i, func_2(vec4<i32>(var_0.c.x, -1i, var_0.c.x, var_0.d.x), 70295u, true).d.a.b.d.x)), func_4(Struct_3(func_1(vec2<bool>(false, false)).a, var_0.a.yxz)).e, false).d.a.a;
    let var_2 = 14341u >> (max(~_wgslsmith_sub_u32(u_input.a.x, var_1.e), _wgslsmith_mod_u32(var_0.e, _wgslsmith_mult_u32(reverseBits(10868u), u_input.e ^ 17962u))) % 32u);
    var var_3 = _wgslsmith_sub_vec2_u32(func_2(~min(-var_1.c, _wgslsmith_clamp_vec4_i32(var_1.c, vec4<i32>(7249i, u_input.d, u_input.c, var_0.d.x), var_0.c)), 51508u, true).d.a.c, _wgslsmith_div_vec2_u32(abs(u_input.a.xw), func_1(var_1.a.zz).a.c) >> (u_input.a.xx % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

