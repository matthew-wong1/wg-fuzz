struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<f32>(744f, 193f, -116f, -431f), vec3<u32>(4294967295u, 0u, 106153u), true);

var<private> global1: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(i32(-2147483648), -16451i, -56923i), vec3<i32>(2147483647i, -12392i, -13479i), vec3<i32>(-38912i, 1i, i32(-2147483648)), vec3<i32>(83814i, -1i, 2147483647i), vec3<i32>(1i, 7465i, 45622i), vec3<i32>(2147483647i, 21046i, 19887i), vec3<i32>(1i, 36153i, -8699i), vec3<i32>(-75534i, 21365i, -1i), vec3<i32>(52807i, -17785i, 36601i), vec3<i32>(46499i, -8729i, i32(-2147483648)), vec3<i32>(25746i, 15396i, 39181i), vec3<i32>(i32(-2147483648), -20697i, -21263i), vec3<i32>(-6016i, 37997i, 0i), vec3<i32>(0i, -1i, 9701i), vec3<i32>(-405i, -1i, 0i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(1i, -6088i, 1i), vec3<i32>(i32(-2147483648), 29705i, 60350i), vec3<i32>(-49009i, 0i, 11486i), vec3<i32>(1i, 2147483647i, 66747i), vec3<i32>(0i, 15711i, 91627i));

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(1u, 0u), vec2<u32>(1u, 17066u), vec2<u32>(0u, 0u), vec2<u32>(27842u, 1u), vec2<u32>(0u, 1u), vec2<u32>(27053u, 4294967295u), vec2<u32>(67102u, 4294967295u), vec2<u32>(21005u, 6310u), vec2<u32>(4294967295u, 28417u), vec2<u32>(0u, 0u), vec2<u32>(57135u, 5433u), vec2<u32>(4294967295u, 1u), vec2<u32>(39251u, 26059u), vec2<u32>(34592u, 49068u), vec2<u32>(27730u, 52195u), vec2<u32>(4294967295u, 15528u), vec2<u32>(28775u, 4294967295u), vec2<u32>(69913u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 13883u), vec2<u32>(77481u, 21539u), vec2<u32>(24934u, 4294967295u), vec2<u32>(4294967295u, 2579u), vec2<u32>(2455u, 60757u), vec2<u32>(28426u, 33089u), vec2<u32>(18445u, 59585u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    global2 = array<vec2<u32>, 26>();
    global1 = array<vec3<i32>, 21>();
    var var_0 = Struct_2(Struct_1(select(global0.a, vec2<bool>(true, true), false), _wgslsmith_f_op_vec4_f32(floor(global0.b)), ~global0.c, true));
    global0 = var_0.a;
    var var_1 = Struct_4(Struct_3(true, Struct_2(var_0.a), !vec2<bool>(true, !global0.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - -1000f)), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(-arg_0.d)))), global0.b.wzx, _wgslsmith_f_op_f32(trunc(-1010f)));
    return var_1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = arg_1.b.a.b.xyx;
    var var_1 = func_2(arg_3, countOneBits(abs(arg_1.b.a.c.x)));
    let var_2 = -60553i;
    var var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(global0.b))));
    return select(vec3<bool>(true, false, global0.a.x), select(vec3<bool>(all(!vec3<bool>(false, arg_2.a.a, arg_2.a.a)), !(!arg_2.a.c.x), !arg_1.c.x != false), select(!vec3<bool>(false, arg_2.a.a, arg_2.a.b.a.a.x), select(vec3<bool>(var_1.c.x, global0.d, arg_1.a), select(vec3<bool>(arg_1.b.a.a.x, true, arg_2.a.c.x), vec3<bool>(arg_1.b.a.a.x, arg_1.c.x, false), vec3<bool>(true, false, arg_1.a)), false), any(vec2<bool>(arg_1.b.a.d, global0.d))), true), any(!select(var_1.c, !arg_1.c, true)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_4 {
    global1 = array<vec3<i32>, 21>();
    var var_0 = Struct_5(_wgslsmith_sub_vec3_u32(select(abs(global0.c), ~global0.c, any(func_3(global0.b, Struct_3(false, Struct_2(Struct_1(vec2<bool>(arg_0.x, global0.d), vec4<f32>(global0.b.x, -1000f, -703f, 889f), vec3<u32>(1u, global0.c.x, global0.c.x), global0.a.x)), vec2<bool>(arg_0.x, true)), Struct_4(Struct_3(arg_0.x, Struct_2(Struct_1(arg_0.xz, global0.b, vec3<u32>(4294967295u, 4294967295u, 3318u), false)), arg_0.yz), vec3<f32>(1000f, 1614f, -1780f), global0.b.wzw, -828f), Struct_5(global0.c, 0u, 50416u, global0.b.x)).zx)), vec3<u32>(57133u, _wgslsmith_sub_u32(18321u, 14260u) >> (u_input.a % 32u), global0.c.x)), global0.c.x, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-658f, 258f, global0.a.x)) * global0.b.x), _wgslsmith_f_op_f32(abs(-431f)))));
    var_0 = Struct_5(~(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 66377u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, global0.c.x)), max(1u, var_0.b)) | _wgslsmith_add_vec3_u32(abs(global0.c), vec3<u32>(111126u, var_0.b, u_input.a))), 11684u, min(firstTrailingBit(max(0u | u_input.a, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.a.x, u_input.a), 1u, 4294967295u) << (~(~49671u) % 32u)), var_0.d);
    let var_1 = ~(~u_input.a);
    let var_2 = true;
    return Struct_4(func_2(Struct_5(~global0.c | firstLeadingBit(vec3<u32>(global0.c.x, var_1, 4294967295u)), ~global0.c.x, 47291u, var_0.d), u_input.a), vec3<f32>(-1511f, var_0.d, 1372f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2155f, var_0.d)), 989f, var_0.d), _wgslsmith_f_op_f32(sign(func_2(Struct_5(global0.c, _wgslsmith_mod_u32(var_0.a.x, 0u), global0.c.x, -1000f), 0u).b.a.b.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> vec3<bool> {
    var var_0 = countOneBits(firstTrailingBit(max(vec4<i32>(-u_input.b, u_input.b, firstTrailingBit(u_input.b), u_input.b), (vec4<i32>(1i, u_input.b, -1891i, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, -2775i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, 1u, 26816u), vec4<u32>(0u, 22347u, arg_2.b.a.c.x, u_input.a)) % vec4<u32>(32u)))));
    let var_1 = func_4(!(!func_3(_wgslsmith_f_op_vec4_f32(sign(global0.b)), func_2(Struct_5(global0.c, global0.c.x, arg_3, 219f), 1u), Struct_4(Struct_3(false, Struct_2(Struct_1(vec2<bool>(global0.a.x, true), vec4<f32>(global0.b.x, global0.b.x, -499f, 1000f), global0.c, false)), vec2<bool>(true, true)), global0.b.ywx, arg_2.b.a.b.xzz, global0.b.x), Struct_5(arg_2.b.a.c, 1u, arg_0, global0.b.x))));
    var var_2 = 1i >= (11297i | min(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2860i), var_0.xz))));
    var var_3 = -1302f;
    let var_4 = -1345f;
    return func_3(arg_2.b.a.b, func_2(Struct_5(~max(var_1.a.b.a.c, vec3<u32>(1u, arg_2.b.a.c.x, 1u)), ~12811u, ~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, var_4)))), 42355u), var_1, Struct_5(~var_1.a.b.a.c, ~18361u, 13938u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.b.a.b.x)) + _wgslsmith_f_op_f32(-var_4)), 136f))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_3(all(vec4<bool>(true, false, !arg_2.a.a.x, any(arg_1))) || true, arg_2, vec2<bool>(any(arg_2.a.a), true));
    var_0 = func_2(Struct_5(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, 21548u, 15809u)), global0.c), 33026u, ~abs(u_input.a << (36010u % 32u)), -1283f), u_input.a);
    let var_1 = Struct_4(func_2(Struct_5(global0.c, _wgslsmith_mult_u32(~global0.c.x, var_0.b.a.c.x >> (arg_2.a.c.x % 32u)), _wgslsmith_sub_u32(32326u | var_0.b.a.c.x, arg_2.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, -997f))), ~4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a.b.x, var_0.b.a.b.x)) - func_4(vec3<bool>(arg_1.x, false, false)).b.x), arg_2.a.b.x, -742f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 1023f) * _wgslsmith_f_op_f32(720f + var_0.b.a.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.b.x * -1394f), -356f)), func_4(!select(vec3<bool>(true, var_0.b.a.d, global0.a.x), arg_1, arg_1)).b)), arg_3.x);
    let var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(20266u, 0u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1607f)))), _wgslsmith_f_op_f32(arg_2.a.b.x * _wgslsmith_f_op_f32(-global0.b.x)), var_1.c.x))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.a.b.x, arg_3.x, 1000f))))), vec3<f32>(_wgslsmith_div_f32(arg_2.a.b.x, arg_2.a.b.x), _wgslsmith_f_op_f32(step(global0.b.x, arg_3.x)), _wgslsmith_f_op_f32(-1505f - var_0.b.a.b.x)))))));
    return true;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    global0 = func_2(Struct_5(vec3<u32>(~abs(100394u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 4294967295u), arg_3), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, 2931u, arg_3.x), vec4<u32>(u_input.a, 4294967295u, global0.c.x, 3477u)), vec4<u32>(global0.c.x, 60502u, 59621u, arg_1.b.a.c.x))), arg_3.x, ~4294967295u, _wgslsmith_f_op_f32(floor(861f))), 1u | reverseBits(global0.c.x)).b.a;
    var var_0 = global0.a;
    global2 = array<vec2<u32>, 26>();
    let var_1 = -global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~61705u, 0u), 21u)];
    var var_2 = Struct_5(_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(global0.c.x, global0.c.x, global0.c.x))), ~reverseBits(vec3<u32>(0u, arg_3.x, arg_1.b.a.c.x))), countOneBits(u_input.a), global0.c.x, arg_0.x);
    return arg_1;
}

fn func_7(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(step(global0.b, vec4<f32>(2161f, -821f, 1810f, -1356f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(-arg_1.x), 332f, 610f))), func_2(arg_0, _wgslsmith_add_u32(~firstLeadingBit(global0.c.x), func_6(global0.b, Struct_3(global0.d, Struct_2(arg_2.b.a), vec2<bool>(false, arg_2.a)), ~u_input.b, func_4(vec3<bool>(false, true, global0.d)).a.b.a.c.yz).b.a.c.x)), u_input.b, ~select(~vec2<u32>(0u, 4294967295u) << (~global0.c.xz % vec2<u32>(32u)), max(~vec2<u32>(9215u, 33611u), global0.c.yy & global2[_wgslsmith_index_u32(arg_0.a.x, 26u)]), vec2<bool>(func_6(arg_2.b.a.b, arg_2, u_input.b, vec2<u32>(global0.c.x, global0.c.x)).a, true)));
    var var_1 = arg_0;
    let var_2 = func_6(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.a.b.x, 1f, arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d)))), arg_1, vec4<bool>(global0.d, !(!arg_2.b.a.a.x), arg_2.c.x, func_5(true, select(vec3<bool>(global0.a.x, false, false), vec3<bool>(global0.a.x, true, false), arg_2.a), Struct_2(Struct_1(var_0.b.a.a, vec4<f32>(-1682f, 103f, -649f, arg_2.b.a.b.x), var_1.a, false)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 1484f), global0.b.ww))))), func_4(func_1(min(_wgslsmith_clamp_u32(var_0.b.a.c.x, 70488u, 0u), _wgslsmith_div_u32(arg_2.b.a.c.x, global0.c.x)), all(vec4<bool>(var_0.a, var_0.c.x, true, global0.d)) && (arg_2.c.x & var_0.c.x), func_2(Struct_5(vec3<u32>(arg_2.b.a.c.x, var_0.b.a.c.x, arg_0.a.x), u_input.a, 14238u, var_0.b.a.b.x), u_input.a), 1u)).a, -5398i, global0.c.zx);
    let var_3 = Struct_5(vec3<u32>(~22599u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(36604u, global0.c.x), abs(var_0.b.a.c.x), 52146u), u_input.a), var_1.a.x), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.c, arg_2.b.a.c.x, arg_2.b.a.c.x)), select(select(global0.c, vec3<u32>(arg_0.a.x, arg_0.b, var_1.b), arg_2.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b.a.c.x, 39526u, 20388u), var_1.a), !vec3<bool>(arg_2.a, true, false))), ~1u, 1241f);
    let var_4 = ~global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_clamp_u32(var_2.b.a.c.x, u_input.a, 2303u)) << (arg_2.b.a.c.x % 32u), 21u)];
    return Struct_1(func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1274f))), _wgslsmith_f_op_f32(213f - _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-202f)), _wgslsmith_f_op_f32(1668f * global0.b.x)))), Struct_3(arg_0.c <= 4294967295u, func_4(func_1(arg_0.a.x, var_2.c.x, arg_2, var_3.a.x)).a.b, global0.a), firstTrailingBit(-52736i), abs(select(vec2<u32>(arg_2.b.a.c.x, global0.c.x), vec2<u32>(var_1.c, 18831u), vec2<bool>(true, true)) ^ ~var_2.b.a.c.zx)).b.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 302f, -717f, -1156f) + vec4<f32>(-1010f, 163f, 762f, var_0.b.a.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.a.b + _wgslsmith_f_op_vec4_f32(exp2(arg_2.b.a.b))))), vec3<u32>(_wgslsmith_add_u32(0u, func_2(Struct_5(global0.c, var_2.b.a.c.x, 1u, -1229f), 1u).b.a.c.x), 1u, abs(~arg_2.b.a.c.x)) >> (reverseBits(_wgslsmith_div_vec3_u32(func_2(arg_0, 1u).b.a.c, ~vec3<u32>(arg_2.b.a.c.x, var_2.b.a.c.x, 2191u))) % vec3<u32>(32u)), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.b.x)), _wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1746f)), 579f) - global0.b), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, 1u) ^ global0.c, vec3<u32>(72971u, u_input.a, u_input.a)), ~global0.c), all(vec2<bool>(true, true)));
    global2 = array<vec2<u32>, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.xy), vec2<f32>(global0.b.x, global0.b.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.b.wx, global0.b.xx))) + vec2<f32>(-131f, -1000f))));
    var var_1 = func_7(Struct_5(~vec3<u32>(u_input.a, ~global0.c.x, _wgslsmith_sub_u32(54775u, 828u)), 1u, ~33248u, -714f), global0.b, func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) + global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * global0.b)), true)), Struct_3(func_5(global0.a.x, func_1(1u, false, Struct_3(true, Struct_2(Struct_1(global0.a, global0.b, global0.c, false)), vec2<bool>(false, true)), 35781u), func_2(Struct_5(vec3<u32>(27522u, u_input.a, 47484u), u_input.a, 31517u, -1486f), global0.c.x).b, global0.b.wx), Struct_2(Struct_1(global0.a, global0.b, vec3<u32>(32706u, u_input.a, 4294967295u), global0.a.x)), global0.a), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-13642i, -53664i)), vec2<i32>(0i, u_input.b) >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7937u, u_input.a, 6235u, 0u), vec4<u32>(1u, 0u, u_input.a, 2955u)), 26u)] % vec2<u32>(32u))), ~abs(vec2<u32>(4294967295u, 4294967295u))));
    let var_2 = !(!select(vec2<bool>(false || var_1.d, var_1.d & false), vec2<bool>(func_7(Struct_5(vec3<u32>(1u, global0.c.x, var_1.c.x), global0.c.x, 64564u, 1000f), global0.b, Struct_3(var_1.d, Struct_2(Struct_1(vec2<bool>(true, false), vec4<f32>(847f, var_1.b.x, -1114f, 1088f), vec3<u32>(4294967295u, 4294967295u, 7258u), var_1.d)), global0.a)).a.x, select(true, global0.a.x, var_1.a.x)), func_1(1u, any(vec3<bool>(true, true, var_1.d)), func_4(vec3<bool>(false, true, global0.a.x)).a, global0.c.x).yx));
    var var_3 = select(vec4<bool>(true, !func_2(Struct_5(vec3<u32>(1u, 23943u, global0.c.x), 4294967295u, 23863u, 538f), 56575u).c.x, !var_1.a.x, var_1.b.x < _wgslsmith_f_op_f32(f32(-1f) * -688f)), vec4<bool>(-u_input.b > countOneBits(-15453i), var_2.x, func_1(abs(46182u), true, func_6(var_1.b, Struct_3(global0.d, Struct_2(Struct_1(vec2<bool>(var_2.x, false), vec4<f32>(var_1.b.x, var_0.x, var_1.b.x, var_1.b.x), vec3<u32>(1u, 0u, var_1.c.x), var_1.a.x)), var_2), u_input.b, vec2<u32>(105266u, u_input.a) ^ var_1.c.yy), ~1u).x, var_2.x), select(vec4<bool>(!global0.a.x & global0.d, true, -8563i > (-13893i ^ u_input.b), func_1(abs(var_1.c.x), true, Struct_3(global0.d, Struct_2(Struct_1(var_1.a, vec4<f32>(global0.b.x, 679f, var_0.x, var_1.b.x), vec3<u32>(109543u, 0u, 26768u), global0.d)), global0.a), global0.c.x).x), vec4<bool>(select(any(var_1.a), false, true), all(select(vec3<bool>(false, var_2.x, var_1.a.x), vec3<bool>(var_1.d, var_1.a.x, global0.a.x), vec3<bool>(true, true, true))), all(vec2<bool>(var_1.a.x, true)), global0.b.x <= global0.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -(~vec4<i32>(_wgslsmith_div_i32(u_input.b, 2698i), ~16498i, u_input.b, u_input.b)));
}

