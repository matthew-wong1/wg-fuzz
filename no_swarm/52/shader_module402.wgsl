struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1397f, vec3<u32>(4294967295u, 65575u, 4294967295u)), Struct_1(-923f, vec3<u32>(0u, 5708u, 2874u)), Struct_1(835f, vec3<u32>(0u, 1u, 2843u)), Struct_1(-213f, vec3<u32>(1u, 4294967295u, 85564u)), Struct_1(-1615f, vec3<u32>(16131u, 4294967295u, 3586u)), Struct_1(-1121f, vec3<u32>(34052u, 54918u, 61767u)), Struct_1(867f, vec3<u32>(0u, 7330u, 0u)), Struct_1(-606f, vec3<u32>(42441u, 18975u, 57036u)), Struct_1(-1503f, vec3<u32>(4294967295u, 53502u, 1u)), Struct_1(473f, vec3<u32>(26238u, 4294967295u, 4294967295u)), Struct_1(-1280f, vec3<u32>(0u, 4294967295u, 31686u)), Struct_1(167f, vec3<u32>(67911u, 19573u, 5101u)), Struct_1(-1680f, vec3<u32>(1u, 44926u, 14011u)), Struct_1(871f, vec3<u32>(1u, 19673u, 33572u)), Struct_1(-115f, vec3<u32>(79332u, 0u, 4294967295u)), Struct_1(-853f, vec3<u32>(4294967295u, 34081u, 41897u)), Struct_1(-943f, vec3<u32>(1u, 34809u, 52111u)), Struct_1(-1610f, vec3<u32>(1u, 1u, 0u)), Struct_1(773f, vec3<u32>(4993u, 4294967295u, 3224u)), Struct_1(539f, vec3<u32>(0u, 0u, 1928u)));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec2<i32>(0i, i32(-2147483648)), vec2<f32>(285f, -121f)), Struct_3(vec2<i32>(1i, -1i), vec2<f32>(1000f, -261f)), Struct_3(vec2<i32>(0i, 53710i), vec2<f32>(206f, -207f)), Struct_3(vec2<i32>(19387i, 2147483647i), vec2<f32>(-544f, -1016f)), Struct_3(vec2<i32>(-1i, 20736i), vec2<f32>(-623f, 858f)), Struct_3(vec2<i32>(1i, 15812i), vec2<f32>(487f, 2321f)), Struct_3(vec2<i32>(i32(-2147483648), 13460i), vec2<f32>(-964f, -255f)), Struct_3(vec2<i32>(28022i, 29025i), vec2<f32>(-224f, -905f)), Struct_3(vec2<i32>(11148i, 2147483647i), vec2<f32>(1464f, 138f)), Struct_3(vec2<i32>(2147483647i, -1i), vec2<f32>(-1000f, -425f)), Struct_3(vec2<i32>(-1i, 1i), vec2<f32>(-1592f, -883f)), Struct_3(vec2<i32>(1i, 49726i), vec2<f32>(839f, -537f)), Struct_3(vec2<i32>(-44621i, 0i), vec2<f32>(-131f, -911f)), Struct_3(vec2<i32>(-32245i, 2147483647i), vec2<f32>(-1000f, 2074f)), Struct_3(vec2<i32>(35837i, -50421i), vec2<f32>(276f, -1069f)), Struct_3(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-193f, 1000f)), Struct_3(vec2<i32>(-15408i, 20236i), vec2<f32>(-501f, 1705f)), Struct_3(vec2<i32>(-3517i, 0i), vec2<f32>(996f, 1340f)), Struct_3(vec2<i32>(-2903i, 36168i), vec2<f32>(-336f, 662f)), Struct_3(vec2<i32>(1i, 1i), vec2<f32>(-1079f, 904f)), Struct_3(vec2<i32>(-1i, 74151i), vec2<f32>(-1037f, 316f)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    global0 = array<Struct_1, 20>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), ~vec3<u32>(u_input.c.x, u_input.e, ~_wgslsmith_div_u32(u_input.d, u_input.c.x)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> i32 {
    var var_0 = vec2<bool>(false, arg_1.x);
    let var_1 = Struct_2(u_input.b.x, Struct_1(359f, ~_wgslsmith_sub_vec3_u32(u_input.c.zxy, vec3<u32>(u_input.d, u_input.e, 36u)) >> (abs(vec3<u32>(u_input.d, 0u, u_input.c.x)) % vec3<u32>(32u))));
    var var_2 = Struct_4(Struct_2(abs(abs(firstLeadingBit(-7933i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a, 1000f) * _wgslsmith_f_op_f32(step(arg_2.x, -1152f))), u_input.c.www)), var_1.a, ~abs(u_input.a), _wgslsmith_f_op_f32(627f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(317f)), 843f, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))) - arg_2.x)));
    let var_3 = arg_0.zwz;
    var var_4 = var_0.x;
    return var_3.x << (abs(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_2.a.b.b.x), vec2<u32>(var_1.b.b.x, var_1.b.b.x), arg_1.x), ~u_input.c.yx)) % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = select(vec2<bool>(all(select(!vec2<bool>(arg_3, arg_3), select(vec2<bool>(arg_3, false), vec2<bool>(arg_3, true), arg_3), arg_0.d <= -176f)), true), select(vec2<bool>(arg_3, ~arg_0.a.b.b.x > _wgslsmith_div_u32(0u, 11077u)), !select(vec2<bool>(false, arg_3), !vec2<bool>(arg_3, arg_3), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, arg_3)), !vec2<bool>(true, arg_3), vec2<bool>(arg_3, arg_3)), !select(arg_3, false, true) | !select(arg_3, false, true)));
    let var_1 = global0[_wgslsmith_index_u32(~45646u, 20u)];
    global1 = array<Struct_3, 21>();
    var var_2 = Struct_4(Struct_2(_wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(-33030i, -3974i, arg_1, 1i))), vec4<i32>(arg_2.x, countOneBits(u_input.b.x), func_3(vec4<i32>(-30048i, u_input.b.x, 1i, 2889i), vec2<bool>(true, true), vec2<f32>(832f, arg_0.a.b.a)), -24519i)), Struct_1(_wgslsmith_f_op_f32(arg_0.a.b.a - _wgslsmith_f_op_f32(-var_1.a)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(13079u, u_input.d, 1558u), vec3<u32>(arg_0.a.b.b.x, 79577u, var_1.b.x), var_1.b), arg_0.a.b.b << (vec3<u32>(arg_0.a.b.b.x, 1u, 1u) % vec3<u32>(32u)), !vec3<bool>(false, var_0.x, arg_3)))), min(select(arg_0.a.a, ~62784i, true), arg_0.c), arg_0.b, arg_0.d);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, 4294967295u, 0u, var_2.a.b.b.x), u_input.c, u_input.c), vec4<u32>(arg_0.a.b.b.x, 57636u, 36606u, 4294967295u) >> (vec4<u32>(1862u, var_2.a.b.b.x, 0u, 4294967295u) % vec4<u32>(32u))), select(u_input.c, u_input.c, vec4<bool>(var_0.x, false, arg_3, arg_3)), _wgslsmith_sub_vec4_u32(select(u_input.c, vec4<u32>(var_1.b.x, 1u, 46817u, u_input.e), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<u32>(u_input.e, u_input.d, 4294967295u, 12598u) | vec4<u32>(u_input.e, arg_0.a.b.b.x, 4294967295u, 44019u)))) & (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.b.x, 4294967295u, 12893u), vec3<u32>(49444u, 32152u, var_1.b.x))) | _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), u_input.c.x)), 20u)];
    return Struct_4(Struct_2(arg_2.x, Struct_1(_wgslsmith_f_op_f32(-var_1.a), vec3<u32>(_wgslsmith_clamp_u32(arg_0.a.b.b.x, 9209u, 1u), reverseBits(u_input.e), ~42274u))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(arg_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, arg_0.a.a), arg_2.xxz) & ~(-2147483647i), u_input.b.x, abs(-15073i)), reverseBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_2.x, arg_0.c), vec4<i32>(2147483647i, 1i, 1i, -96i)), ~vec4<i32>(var_2.b, u_input.a, -2147483647i, -2147483647i)))), 44448i, _wgslsmith_f_op_f32(f32(-1f) * -1916f));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = min(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.c.xwz, u_input.c.wzy, vec3<bool>(true, true, false)), vec3<u32>(u_input.e, u_input.e, 45564u) | vec3<u32>(2487u, u_input.c.x, 4294967295u)), ~(~vec3<u32>(12916u, u_input.d, 2871u))), vec3<u32>(u_input.e, 31918u, 1u)) << (vec3<u32>(u_input.d, u_input.e, 4294967295u) % vec3<u32>(32u));
    let var_1 = func_4(Struct_4(Struct_2((-18833i ^ arg_0) << (var_0.x % 32u), func_2(-1121f, -214f, u_input.b.x)), ~0i, _wgslsmith_mod_i32(~arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1504f * -472f))))), -2147483647i, _wgslsmith_div_vec4_i32(vec4<i32>(func_3(~vec4<i32>(0i, u_input.b.x, arg_0, -2147483647i), vec2<bool>(true, true), vec2<f32>(-709f, 1949f)), u_input.a, arg_0, arg_0), reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, arg_0, 1i, arg_0), select(vec4<i32>(1i, 1i, u_input.b.x, 1i), vec4<i32>(-31781i, u_input.a, arg_0, u_input.a), vec4<bool>(false, false, false, true))))), true);
    global0 = array<Struct_1, 20>();
    global1 = array<Struct_3, 21>();
    global0 = array<Struct_1, 20>();
    return ~select(_wgslsmith_mult_u32(1u ^ ~var_1.a.b.b.x, _wgslsmith_div_u32(u_input.c.x >> (u_input.d % 32u), 64140u)), ~var_1.a.b.b.x, !(!any(vec3<bool>(false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1120f, ~vec3<u32>(abs(u_input.e) ^ 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(76217u, u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, u_input.d), u_input.c.xw)), func_1(u_input.b.x)));
    var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-374f * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.a))))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(2323f - _wgslsmith_f_op_f32(var_0.a - -1275f)))), func_3(~(~select(vec4<i32>(0i, 5900i, -2147483647i, -4500i), vec4<i32>(2147483647i, -2147483647i, u_input.b.x, u_input.a), vec4<bool>(true, true, false, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(1186f, 488f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), var_0.a))));
    global0 = array<Struct_1, 20>();
    var_0 = func_2(_wgslsmith_f_op_f32(-145f + 375f), -608f, -_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(u_input.a >> (4294967295u % 32u), u_input.a)));
    var var_1 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, u_input.c.yzx << (func_2(var_0.a, func_4(func_4(Struct_4(Struct_2(-2147483647i, Struct_1(var_0.a, u_input.c.ywz)), -2147483647i, u_input.a, var_0.a), -25481i, vec4<i32>(u_input.a, u_input.b.x, u_input.a, 1i), true), 2147483647i, vec4<i32>(55417i, u_input.a, -2147483647i, u_input.a), true).d, -(~u_input.b.x)).b % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, -(~1i)), reverseBits(countOneBits(min(vec4<i32>(-1i, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.a, u_input.a, -18225i)) ^ reverseBits(vec4<i32>(24679i, 1i, 31589i, u_input.b.x)))), ~4294967295u);
}

