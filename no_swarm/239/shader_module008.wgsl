struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<u32, 32> = array<u32, 32>(23610u, 10826u, 0u, 4294967295u, 1881u, 40210u, 0u, 26300u, 38188u, 25211u, 0u, 3867u, 1u, 10437u, 4294967295u, 4294967295u, 2735u, 25122u, 0u, 0u, 12440u, 0u, 0u, 31223u, 16163u, 39142u, 0u, 32804u, 53720u, 27921u, 22252u, 0u);

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<u32, 32>();
    global2 = array<Struct_3, 17>();
    var var_0 = max(_wgslsmith_mult_i32(2357i, -1i), arg_2.x);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(0u, 32u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)] % 32u)), 32u)], global1[_wgslsmith_index_u32(0u, 32u)])) << (27793u % 32u), 26u)];
    var_0 = 74547i;
    return Struct_1(arg_1.d, arg_3, vec4<bool>(arg_1.d.x, true, all(!arg_1.d), arg_1.d.x), vec3<bool>(arg_1.c.x, arg_0 <= _wgslsmith_sub_i32(arg_0, -42058i), arg_1.d.x));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = ~select(reverseBits(arg_2.xxz), ~arg_2.wyx, true);
    global0 = array<vec2<u32>, 26>();
    var var_1 = !(!arg_1.e.c.c);
    global0 = array<vec2<u32>, 26>();
    var_1 = select(select(func_1(u_input.a.x, func_1(u_input.a.x, Struct_1(vec3<bool>(true, var_1.x, arg_1.e.e), vec2<f32>(arg_3.b.x, 129f), arg_1.a.c.c, vec3<bool>(true, true, false)), vec3<i32>(-1i, 0i, -20103i) >> (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.x, -130f) + vec2<f32>(arg_3.b.x, -835f))), u_input.a.zyw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a.c.b), _wgslsmith_f_op_vec2_f32(-arg_3.b), true))).c, arg_1.e.c.c, all(arg_0.xz)), arg_1.d.c.c, !arg_3.c.x);
    return -abs(max(_wgslsmith_mod_vec3_i32(arg_1.b, vec3<i32>(1i, 2147483647i, arg_1.d.a.x)), _wgslsmith_mult_vec3_i32(u_input.a.zxx, arg_1.e.a.yww)) >> (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(14411u, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec3<u32>(u_input.b.x, 4294967295u, 40981u), arg_2.wzz), vec3<u32>(69813u, arg_1.e.d.x, 38297u), !vec3<bool>(false, arg_3.d.x, true)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = func_1(firstLeadingBit(-1i) >> (~(~0u << (u_input.b.x % 32u)) % 32u), func_1(arg_1 << (u_input.b.x % 32u), func_1(6801i, func_1(arg_1, func_1(u_input.a.x, arg_0, vec3<i32>(u_input.a.x, -35144i, u_input.a.x), vec2<f32>(-1014f, arg_0.b.x)), u_input.a.yzw, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.x, -773f), vec2<f32>(-1221f, arg_0.b.x)))), ~vec3<i32>(1i, arg_1, -32065i), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 1165f)), func_3(arg_0.a, Struct_3(Struct_2(vec4<i32>(u_input.a.x, -70833i, u_input.a.x, u_input.a.x), arg_0.b.x, arg_0, vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 32u)], 1u), true), vec3<i32>(arg_1, u_input.a.x, 22495i) & vec3<i32>(2147483647i, arg_1, arg_1), vec3<bool>(true, arg_0.d.x, arg_0.a.x), Struct_2(vec4<i32>(arg_1, u_input.a.x, arg_1, -24567i), -2663f, arg_0, vec2<u32>(1u, arg_2), arg_0.c.x), Struct_2(vec4<i32>(arg_1, -33051i, u_input.a.x, u_input.a.x), -761f, arg_0, global0[_wgslsmith_index_u32(47998u, 26u)], arg_0.c.x)), ~firstTrailingBit(vec4<u32>(u_input.b.x, 3643u, 81637u, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), Struct_1(arg_0.c.zzx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1172f, arg_0.b.x)), !arg_0.c, arg_0.a)), vec2<f32>(1f, 1f)), vec3<i32>(-25948i, select(~arg_1, _wgslsmith_add_i32(arg_1, 21006i), arg_0.d.x) >> (max(~u_input.b.x, ~u_input.b.x) % 32u), arg_1), vec2<f32>(677f, arg_0.b.x));
    global2 = array<Struct_3, 17>();
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(~vec4<i32>(-19889i, min(arg_1, _wgslsmith_mult_i32(u_input.a.x, -30556i)), -2147483647i, _wgslsmith_clamp_i32(0i, arg_1 & -2147483647i, _wgslsmith_mod_i32(-42424i, u_input.a.x))), 1f, func_1(-1i, func_1(-10748i, Struct_1(vec3<bool>(true, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec2_f32(step(var_0.b, arg_0.b)), vec4<bool>(false, var_0.c.x, arg_0.a.x, arg_0.a.x), !vec3<bool>(false, var_0.c.x, arg_0.d.x)), (u_input.a.xww | vec3<i32>(42631i, 5129i, -51546i)) >> (select(vec3<u32>(103896u, 93953u, 23226u), vec3<u32>(u_input.b.x, 1u, 4294967295u), arg_0.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(340f, arg_0.b.x))))), _wgslsmith_mod_vec3_i32(~u_input.a.xxx, u_input.a.yzz), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1846f, var_0.b.x))))))), vec2<u32>(~_wgslsmith_sub_u32(1u, ~global1[_wgslsmith_index_u32(79852u, 32u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(arg_2, 32u)]), u_input.b), ~max(vec2<u32>(4294967295u, 35503u), u_input.b))), var_0.a.x);
    global1 = array<u32, 32>();
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(!vec3<bool>(!(true | arg_3.d.x), false | func_1(arg_1.e.a.x, arg_1.d.c, vec3<i32>(2147483647i, 1i, 2147483647i), vec2<f32>(-1086f, arg_0.b)).d.x, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(Struct_1(vec3<bool>(arg_0.e, arg_3.a.x, true), arg_1.d.c.b, arg_3.c, vec3<bool>(arg_0.c.c.x, false, arg_1.d.e)), 0i, global1[_wgslsmith_index_u32(0u, 32u)]).b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, arg_0.b))))), select(!arg_0.c.c, func_2(Struct_1(arg_3.d, _wgslsmith_f_op_vec2_f32(floor(arg_0.c.b)), func_1(arg_1.d.a.x, Struct_1(vec3<bool>(arg_3.a.x, true, arg_1.a.e), arg_1.d.c.b, arg_3.c, vec3<bool>(arg_3.d.x, false, arg_0.e)), u_input.a.yxz, vec2<f32>(arg_1.d.c.b.x, 953f)).c, !vec3<bool>(true, true, arg_1.e.e)), 24222i, abs(_wgslsmith_dot_vec2_u32(arg_0.d, vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], 14580u)))).c, vec4<bool>(1u < global1[_wgslsmith_index_u32(0u, 32u)], arg_1.c.x, false, true)), !arg_1.d.c.c.wzy);
    var var_1 = Struct_3(arg_1.d, -vec3<i32>(~arg_1.e.a.x | arg_1.e.a.x, arg_0.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), i32(-1i) * -18695i)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_3.d.x, false), vec3<bool>(var_0.d.x, arg_1.a.c.a.x, var_0.a.x)), vec3<bool>(arg_3.a.x, arg_3.d.x, true), func_1(~(-29759i), func_1(u_input.a.x, Struct_1(arg_1.e.c.a, arg_1.a.c.b, arg_3.c, arg_1.d.c.a), u_input.a.wwy, arg_3.b), select(vec3<i32>(-41437i, arg_1.e.a.x, 1i), arg_1.a.a.wzy, var_0.d.x), vec2<f32>(-274f, arg_0.b)).a), arg_0, arg_1.e);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x | arg_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_add_vec2_u32(abs(arg_1.e.d), vec2<u32>(arg_0.d.x, 12102u) | vec2<u32>(global1[_wgslsmith_index_u32(var_1.a.d.x, 32u)], 1u))) | (42593u | ~countOneBits(_wgslsmith_div_u32(u_input.b.x, 32993u))), 17u)];
    var var_3 = -2147483647i >> ((u_input.b.x << (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(13238u, 4294967295u, 31978u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(35130u, arg_0.d.x, var_1.a.d.x, u_input.b.x), vec4<u32>(arg_0.d.x, 92367u, 1u, 1u)))) % 32u)) % 32u);
    let var_4 = abs(_wgslsmith_div_u32(arg_0.d.x, countOneBits(max(4294967295u, arg_0.d.x))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global2 = array<Struct_3, 17>();
    global1 = array<u32, 32>();
    var var_1 = func_4(Struct_2(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f * 202f)), _wgslsmith_f_op_f32(f32(-1f) * -581f), true)), func_2(func_1(-u_input.a.x, Struct_1(vec3<bool>(true, true, true), vec2<f32>(1359f, -1000f), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_i32(u_input.a.xxx, vec3<i32>(-1i, u_input.a.x, -1i)), vec2<f32>(-2139f, -205f)), 0i, (u_input.b.x >> (global1[_wgslsmith_index_u32(42225u, 32u)] % 32u)) >> (abs(global1[_wgslsmith_index_u32(14408u, 32u)]) % 32u)), ~global0[_wgslsmith_index_u32(32670u, 26u)], false), Struct_3(Struct_2(~abs(u_input.a), _wgslsmith_f_op_f32(floor(1112f)), func_2(func_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(443f, 1036f), vec4<bool>(false, true, true, true), vec3<bool>(false, false, false)), u_input.a.x, u_input.b.x), u_input.a.x ^ u_input.a.x, ~1u), u_input.b, true), max(vec3<i32>(u_input.a.x & u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(-21380i, u_input.a.x)), u_input.a.zxy), func_1(max(~(-2147483647i), _wgslsmith_div_i32(17693i, u_input.a.x)), func_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(366f, -750f), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), 17211i >> (global1[_wgslsmith_index_u32(u_input.b.x, 32u)] % 32u), 65396u), _wgslsmith_clamp_vec3_i32(u_input.a.xxx & vec3<i32>(-1i, u_input.a.x, 124382i), ~vec3<i32>(u_input.a.x, u_input.a.x, -8700i), select(vec3<i32>(-1i, -7379i, u_input.a.x), vec3<i32>(-2147483647i, 37442i, 40512i), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -1794f) - vec2<f32>(-489f, -607f)))).a, Struct_2(-u_input.a, 417f, Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(1114f, -744f), vec2<f32>(383f, 1000f)), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true), Struct_2(-min(u_input.a, vec4<i32>(35114i, 4318i, u_input.a.x, u_input.a.x)), -607f, func_1(-12613i, Struct_1(vec3<bool>(true, true, false), vec2<f32>(318f, 554f), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true)), u_input.a.zxy, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-904f, 2110f)))), ~(~vec2<u32>(global1[_wgslsmith_index_u32(49617u, 32u)], 40335u)), true)), ~select(u_input.a, u_input.a, func_2(Struct_1(vec3<bool>(false, true, true), vec2<f32>(-306f, 491f), vec4<bool>(true, false, false, true), vec3<bool>(true, true, true)), u_input.a.x & -1i, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(12851u, 32u)], u_input.b.x)).a.x), func_1(~(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) ^ u_input.a.x), func_2(func_2(func_2(Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1789f, -228f), vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)), u_input.a.x, u_input.b.x), -27519i, min(global1[_wgslsmith_index_u32(4294967295u, 32u)], 89067u)), u_input.a.x, u_input.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 5181i, 1i), reverseBits(u_input.a.zwy)), 15659i, (u_input.a.x & u_input.a.x) ^ _wgslsmith_add_i32(u_input.a.x, -1i)), vec2<f32>(2549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) - _wgslsmith_f_op_f32(732f - 462f)))));
    var_0 = _wgslsmith_div_u32(~0u, 4986u);
    global0 = array<vec2<u32>, 26>();
    var_1 = func_4(func_4(func_4(func_4(func_4(Struct_2(vec4<i32>(2147483647i, var_1.a.x, u_input.a.x, -1i), -291f, Struct_1(var_1.c.c.yyx, vec2<f32>(394f, 327f), vec4<bool>(false, false, true, var_1.e), var_1.c.a), u_input.b, var_1.e), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.d.x, 32u)], 32u)], 17u)], vec4<i32>(var_1.a.x, var_1.a.x, 1i, -1i), var_1.c), global2[_wgslsmith_index_u32(u_input.b.x, 17u)], ~u_input.a, func_1(32832i, Struct_1(var_1.c.c.zyw, vec2<f32>(155f, 531f), var_1.c.c, var_1.c.d), vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.c.b)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, u_input.b.x, global1[_wgslsmith_index_u32(10607u, 32u)]), vec3<u32>(0u, var_1.d.x, 4294967295u)), global1[_wgslsmith_index_u32(87796u, 32u)] & 4294967295u), 17u)], ~(vec4<i32>(0i, var_1.a.x, u_input.a.x, -20816i) ^ var_1.a), Struct_1(func_1(-1i, Struct_1(var_1.c.a, var_1.c.b, vec4<bool>(var_1.e, var_1.c.c.x, var_1.c.a.x, false), var_1.c.c.yzw), vec3<i32>(var_1.a.x, u_input.a.x, 1i), var_1.c.b).a, _wgslsmith_f_op_vec2_f32(var_1.c.b - vec2<f32>(var_1.c.b.x, -2270f)), func_1(var_1.a.x, var_1.c, u_input.a.wyw, vec2<f32>(var_1.c.b.x, 2057f)).c, var_1.c.a)), global2[_wgslsmith_index_u32(105902u, 17u)], _wgslsmith_mod_vec4_i32(var_1.a, -vec4<i32>(0i, 41490i, u_input.a.x, 1i)) | firstTrailingBit(vec4<i32>(-16774i, -1i, var_1.a.x, 25125i)), var_1.c), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, global1[_wgslsmith_index_u32(1u >> (global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)]), 32u)] % 32u), 32u)]), 17u)], var_1.a, var_1.c);
    global2 = array<Struct_3, 17>();
    let var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_1.d.x, 32u)], select(~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 1u, 0u) ^ vec3<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 61017u, var_1.d.x)) | ~vec3<u32>(38033u, 0u, 0u), vec3<u32>(var_1.d.x, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(31110u, 32u)], 32u)], firstLeadingBit(var_1.d.x)) << (~max(vec3<u32>(0u, u_input.b.x, 50560u), vec3<u32>(1u, 0u, u_input.b.x)) % vec3<u32>(32u)), select(any(var_1.c.a.yx), var_2.a.x, !var_1.e)));
}

