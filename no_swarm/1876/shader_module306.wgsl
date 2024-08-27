struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-1i, -31436i), vec2<i32>(-8838i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -18850i), vec2<i32>(-1i, 2427i), vec2<i32>(0i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, -130969i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, -20387i), vec2<i32>(60943i, -31988i), vec2<i32>(15466i, 1024i), vec2<i32>(2147483647i, -2134i), vec2<i32>(-10429i, 21196i), vec2<i32>(19477i, 2147483647i));

var<private> global3: bool = true;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), true);
    let var_1 = ~((~(~vec2<u32>(1u, u_input.b.x)) >> (vec2<u32>(20284u, _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(4294967295u, u_input.d))) % vec2<u32>(32u))) & vec2<u32>(~(1u ^ u_input.b.x), u_input.d));
    var var_2 = !select(!vec3<bool>(u_input.b.x >= 55543u, var_0.x, all(vec4<bool>(false, false, var_0.x, true))), select(!(!vec3<bool>(var_0.x, false, true)), !(!vec3<bool>(var_0.x, var_0.x, true)), true), true);
    global1 = array<Struct_2, 31>();
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-348f + 1755f), _wgslsmith_f_op_f32(599f - -2080f))), _wgslsmith_f_op_f32(-1361f - -1046f))), Struct_3(!var_2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f * _wgslsmith_f_op_f32(930f + 1027f)) + -328f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.a.x)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    global3 = true;
    let var_0 = Struct_4(arg_1.a.a, Struct_3(select(~u_input.d <= abs(arg_1.b.x), 478f <= _wgslsmith_f_op_f32(func_3()), !(arg_1.d.x >= arg_1.d.x))));
    return _wgslsmith_f_op_f32(floor(377f));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = -2352i;
    let var_1 = all(vec3<bool>(any(vec3<bool>(arg_1.a || arg_1.a, all(vec2<bool>(arg_1.a, arg_1.a)), any(vec3<bool>(false, true, arg_1.a)))), arg_1.a, arg_1.a));
    var var_2 = ~select(1i, ~u_input.a, true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1173f, _wgslsmith_f_op_f32(arg_2 + 474f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1237f, arg_2)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(801f, arg_0), vec2<f32>(-632f, arg_0))), !vec2<bool>(true, var_1)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1781f), vec2<f32>(118f, arg_0), arg_1.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 361f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1076f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-645f, arg_0, 1000f, 623f))) + vec4<f32>(arg_2, 665f, _wgslsmith_f_op_f32(arg_0 * arg_2), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1645f, -1000f, arg_2, -977f) - vec4<f32>(817f, arg_2, -642f, arg_0))))))), ~reverseBits(_wgslsmith_mod_vec2_u32(min(u_input.b.zw, vec2<u32>(9394u, u_input.b.x)), u_input.b.xx)), u_input.d);
    let var_4 = !arg_1.a || !var_1;
    return var_3;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(sign(359f)), Struct_3(false), _wgslsmith_f_op_f32(func_2(u_input.c, Struct_2(Struct_1(vec2<f32>(-894f, 865f), 762f, vec4<f32>(-709f, 216f, 1218f, 1358f), vec2<u32>(1u, u_input.d), 80553u), ~vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 17492u), u_input.c, vec4<i32>(19379i, u_input.a, 2147483647i, 2147483647i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(~global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(u_input.d, 17u)] >> (vec2<u32>(49782u, 44354u) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(102357u, 17u)], global2[_wgslsmith_index_u32(u_input.b.x, 17u)]) | (u_input.a >> (31136u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.e), vec3<i32>(u_input.e, 0i, 17839i)), _wgslsmith_div_i32(u_input.c, u_input.a), abs(-18355i)), -28204i)), max(vec4<u32>(u_input.b.x >> (16645u % 32u), 2052u >> (u_input.d % 32u), _wgslsmith_mod_u32(u_input.b.x, 60818u), 1u) << (~u_input.b % vec4<u32>(32u)), u_input.b), ~(-u_input.e) >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.b.x, 7844u), u_input.b.wyy) % 32u), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, select(~u_input.c, u_input.c, true), 33090i, min(~u_input.a, u_input.c | -13675i)), ~(~(~vec4<i32>(u_input.c, -2147483647i, -17239i, 76333i))), abs(~vec4<i32>(2147483647i, 1i, u_input.c, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 43668u, u_input.b.x), u_input.b) % vec4<u32>(32u))));
    var var_1 = var_0.d.x;
    let var_2 = vec2<bool>(all(vec2<bool>(false, _wgslsmith_mod_i32(var_0.c, var_0.c) < reverseBits(-2147483647i))), !any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    global3 = true;
    let var_3 = _wgslsmith_f_op_f32(floor(var_0.a.c.x));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(~0i, Struct_2(var_0.a, u_input.b, u_input.e, var_0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(-1i, Struct_2(var_0.a, var_0.b, var_0.d.x, vec4<i32>(var_0.c, -45918i, u_input.c, var_0.c)))), 1549f)), 851f, var_3)), var_0.a, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(f32(-1f) * -185f))), Struct_3(var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -127f)))), var_0.d).c.zxx, !(~1u == abs(u_input.b.x << (4294967295u % 32u))));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>) -> vec2<u32> {
    global2 = array<vec2<i32>, 17>();
    let var_0 = false;
    var var_1 = Struct_2(func_4(arg_0.a.x, Struct_3(arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(f32(-1f) * -932f))), _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -27479i, 1i, arg_1.x), vec4<i32>(u_input.e, u_input.a, -33431i, -2147483647i)), countOneBits(vec4<i32>(arg_1.x, arg_1.x, 0i, -2147483647i)))), ~(~max(firstLeadingBit(vec4<u32>(55573u, 0u, 0u, 4294967295u)), vec4<u32>(40769u, u_input.b.x, u_input.d, 4294967295u))), u_input.c, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -83026i, arg_1.x, arg_1.x), vec4<i32>(u_input.a, arg_1.x, -21776i, 0i)), (vec4<i32>(33942i, arg_1.x, u_input.c, u_input.c) & vec4<i32>(arg_1.x, -29529i, arg_1.x, -1i)) << (~u_input.b % vec4<u32>(32u))), ~(select(vec4<i32>(u_input.c, u_input.c, -1i, arg_1.x), vec4<i32>(0i, -16468i, u_input.e, 2147483647i), vec4<bool>(arg_0.d, false, arg_0.d, false)) ^ (vec4<i32>(arg_1.x, 1i, arg_1.x, 7337i) | vec4<i32>(-16247i, u_input.a, 4580i, u_input.e)))));
    let var_2 = select(!(!select(!vec3<bool>(var_0, true, var_0), vec3<bool>(false, arg_0.d, true), select(vec3<bool>(true, true, var_0), vec3<bool>(true, true, arg_0.d), vec3<bool>(var_0, true, arg_0.d)))), select(!vec3<bool>(!arg_0.d, !var_0, all(vec3<bool>(arg_0.d, arg_0.d, var_0))), select(vec3<bool>(var_0, 1u != arg_0.b.d.x, arg_0.d), select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_0.d), true), vec3<bool>(arg_0.d, false, true)), true), all(vec3<bool>(all(vec2<bool>(true, var_0)), var_0, var_1.b.x > 0u))), select(!(!vec3<bool>(arg_0.d, var_0, true)), select(!select(vec3<bool>(var_0, true, true), vec3<bool>(true, false, var_0), vec3<bool>(arg_0.d, var_0, true)), vec3<bool>(true, !var_0, any(vec4<bool>(var_0, true, true, var_0))), vec3<bool>(-386f > var_1.a.a.x, var_1.a.b > var_1.a.a.x, false)), !(!select(vec3<bool>(true, true, var_0), vec3<bool>(false, arg_0.d, false), vec3<bool>(false, true, arg_0.d)))));
    var var_3 = arg_0.b.c.zyw;
    return vec2<u32>(84860u, 88337u);
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = Struct_3(false);
    global2 = array<vec2<i32>, 17>();
    global0 = func_1().d;
    var var_1 = -1i;
    var var_2 = arg_3.a;
    return var_2.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(1u, 17u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6((all(vec2<bool>(true, true)) & any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false))) | !(all(vec4<bool>(false, false, false, true)) != all(vec2<bool>(true, true))), func_5(func_1(), firstLeadingBit(-(vec2<i32>(19397i, -2642i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1174f, 1454f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(124f)))))), Struct_3(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(477f * _wgslsmith_f_op_f32(f32(-1f) * -1205f)), -vec4<i32>(u_input.e, 2147483647i, 14146i, _wgslsmith_add_i32(-17871i, 0i))), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-480f, 158f, 887f, -127f), vec4<f32>(1143f, 888f, -690f, 194f))) - func_4(-114f, Struct_3(false), _wgslsmith_f_op_f32(select(2108f, 375f, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(1233i, 20i, u_input.c, u_input.c), vec4<i32>(var_0.x, -1i, 42278i, var_0.x))).c), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(252f)), 768f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1169f * 1023f) * _wgslsmith_f_op_f32(func_2(var_0.x, Struct_2(Struct_1(vec2<f32>(-326f, -1433f), 257f, vec4<f32>(-547f, -2017f, 1679f, -955f), vec2<u32>(u_input.d, u_input.b.x), 4294967295u), u_input.b, 23060i, vec4<i32>(u_input.c, 2147483647i, 2147483647i, -9143i))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-170f, -1117f, -1655f, -1000f))), u_input.b.zw, _wgslsmith_sub_u32(~47250u, max(u_input.d, u_input.d))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(537f, -142f, -669f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(533f, 1147f, -1000f))))))), !(var_0.x >= var_0.x))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(func_4(1000f, Struct_3(u_input.b.x >= u_input.b.x), var_1.x, -vec4<i32>(var_0.x, var_0.x, -46071i, var_0.x)).a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_1().c.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -715f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1130f, 443f), vec2<f32>(-1731f, 1000f))))))));
    var var_2 = _wgslsmith_mult_u32(u_input.d >> (u_input.d % 32u), _wgslsmith_clamp_u32(~u_input.b.x, ~u_input.d, u_input.b.x)) << (25468u % 32u);
    var var_3 = Struct_5(vec4<f32>(-1666f, 148f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_div_f32(764f, var_1.x)))), 1370f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(func_2(abs(~1i), Struct_2(func_1().b, vec4<u32>(u_input.d, u_input.d, 111438u, 0u), -21849i, select(vec4<i32>(u_input.e, 0i, u_input.e, u_input.e), vec4<i32>(1i, var_0.x, var_0.x, var_0.x), true)))), vec4<f32>(140f, -1101f, -327f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(341f, var_1.x))), countOneBits(firstLeadingBit(vec2<u32>(18656u, u_input.d))) << (~(~vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u)), 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(213f, -2685f, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -339f, var_1.x) + vec3<f32>(var_1.x, var_1.x, var_1.x))))), true);
    var var_4 = ~u_input.b.zwz;
    let var_5 = false;
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1638u, var_3.b.e, var_3.b.d.x), vec3<u32>(var_4.x, 1u, 34634u))), abs(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b))), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1801f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) * 2193f)))), 1000f, 1f);
}

