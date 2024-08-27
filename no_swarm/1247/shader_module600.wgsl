struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(2147483647i, 4338i, 1i, 2147483647i), vec4<i32>(1i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(40872i, 1i, 27426i, -40353i), vec4<i32>(27128i, -54795i, -20861i, -1i), vec4<i32>(8296i, -7884i, i32(-2147483648), 0i), vec4<i32>(37806i, -17354i, -55821i, -91667i), vec4<i32>(2147483647i, 27465i, 0i, 10059i), vec4<i32>(-1i, 42738i, 1i, -55874i), vec4<i32>(-16223i, 26482i, 5104i, -9745i), vec4<i32>(0i, 0i, i32(-2147483648), 0i), vec4<i32>(8872i, 0i, 28204i, -31025i), vec4<i32>(1i, 14850i, -31019i, -30794i), vec4<i32>(-6103i, -14681i, 2147483647i, -12918i), vec4<i32>(1i, -14055i, -20409i, 1i));

var<private> global3: array<u32, 9> = array<u32, 9>(0u, 60308u, 13259u, 70500u, 19072u, 4294967295u, 24436u, 4294967295u, 26912u);

var<private> global4: array<bool, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = any(!vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.c, 13u)]), false));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2492f, 259f, global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -307f, global1.x, 1618f), vec4<f32>(global1.x, -1000f, 1692f, global1.x)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2329f, 1000f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(458f, global1.x, global1.x, -1571f) + vec4<f32>(global1.x, -1000f, -215f, -1269f)))), vec4<bool>(u_input.a != -3752i, false, true, false)))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-321f)))), global1.x, _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(trunc(global1.x)))));
    global3 = array<u32, 9>();
    global0 = array<vec2<bool>, 13>();
    return _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(0u, 14u)] << (vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), ~(~u_input.a), _wgslsmith_sub_i32(reverseBits(_wgslsmith_div_i32(u_input.a, 2147483647i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-2147483647i, 9566i)))) & ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2501i, reverseBits(2147483647i), 2147483647i), u_input.a);
}

fn func_2() -> Struct_3 {
    let var_0 = (-vec4<i32>(func_3(), i32(-1i) * -45667i, -18707i >> (u_input.c % 32u), _wgslsmith_add_i32(u_input.a, 2147483647i)) & firstTrailingBit(countOneBits(vec4<i32>(-1i, -2147483647i, u_input.a, -2147483647i)))) << (_wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 6636u, 99144u, 0u))), vec4<u32>(max(u_input.e, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.c, 9u)], 4294967295u)), global3[_wgslsmith_index_u32(u_input.e, 9u)] << (4294967295u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), u_input.b.yz), max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11096u, 9u)] | 1u, 9u)], ~u_input.e))) % vec4<u32>(32u));
    global4 = array<bool, 25>();
    global4 = array<bool, 25>();
    var var_1 = Struct_3(!select(!select(vec4<bool>(false, false, global4[_wgslsmith_index_u32(3614u, 25u)], false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 9u)], 25u)], true, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 25u)]), vec4<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 25u)], false, false, global4[_wgslsmith_index_u32(u_input.b.x, 25u)])), !vec4<bool>(global4[_wgslsmith_index_u32(54732u, 25u)], global4[_wgslsmith_index_u32(1u, 25u)], true, true), true), global1.x, Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_vec3_f32(-global1.yxz), select(vec2<bool>(global4[_wgslsmith_index_u32(65089u, 25u)], global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(global4[_wgslsmith_index_u32(17225u, 25u)], true), !global0[_wgslsmith_index_u32(0u, 13u)]), 41862i), Struct_1(var_0.x, global1.x, global1.wxw, global0[_wgslsmith_index_u32(62073u, 13u)], -13364i), max(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.c, global3[_wgslsmith_index_u32(23157u, 9u)]), vec4<u32>(52192u, u_input.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], global3[_wgslsmith_index_u32(u_input.e, 9u)])), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.e, u_input.e), vec4<u32>(47967u, u_input.e, 34937u, 3687u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], global3[_wgslsmith_index_u32(u_input.d, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 4294967295u, 1u))), _wgslsmith_sub_u32(1u, u_input.c)));
    var var_2 = any(vec2<bool>(var_1.c.a.d.x, !(all(var_1.a.zz) || true)));
    return Struct_3(!vec4<bool>(true, !(var_1.b != -228f), false, global4[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(var_1.c.c.x, 9u)]), 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1276f))), Struct_2(var_1.c.b, Struct_1(var_1.c.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), 1501f, _wgslsmith_f_op_f32(1368f + var_1.c.a.b)), !(!global0[_wgslsmith_index_u32(48841u, 13u)]), -(~5410i)), reverseBits(var_1.c.c), u_input.e));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_2().c.b;
    global3 = array<u32, 9>();
    global0 = array<vec2<bool>, 13>();
    let var_1 = func_2().c.a;
    var_0 = arg_2.c.b;
    return func_2().c;
}

fn func_1() -> f32 {
    global2 = array<vec4<i32>, 14>();
    let var_0 = func_4(func_2(), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -1075f) * _wgslsmith_f_op_f32(-1571f - global1.x)) * 1f)), Struct_3(func_2().a, _wgslsmith_f_op_f32(floor(global1.x)), func_2().c), func_2().c);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(trunc(var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(766f, -1801f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1743f)), _wgslsmith_div_f32(var_0.a.c.x, 327f)))))));
    let var_1 = !vec4<bool>(global4[_wgslsmith_index_u32(~u_input.b.x, 25u)], func_2().c.a.d.x, -func_3() == firstLeadingBit(reverseBits(5063i)), false);
    global4 = array<bool, 25>();
    return -736f;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = countOneBits(func_2().c.c.x);
    var var_1 = global4[_wgslsmith_index_u32(arg_2, 25u)];
    global1 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1475f, global1.x)), _wgslsmith_f_op_f32(abs(-175f))))), 1265f);
    var var_2 = !vec4<bool>(any(vec3<bool>(false, func_4(Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(39043u, 25u)], false, global4[_wgslsmith_index_u32(10888u, 25u)], global4[_wgslsmith_index_u32(var_0, 25u)]), global1.x, Struct_2(Struct_1(0i, arg_1, global1.yzz, vec2<bool>(false, true), u_input.a), Struct_1(-32386i, global1.x, global1.xxz, vec2<bool>(true, global4[_wgslsmith_index_u32(var_0, 25u)]), u_input.a), vec4<u32>(arg_2, 21035u, u_input.c, 33789u), arg_0)), -2284f, Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(23405u, 25u)], false, global4[_wgslsmith_index_u32(u_input.d, 25u)], false), -466f, Struct_2(Struct_1(-13337i, 1218f, vec3<f32>(arg_1, arg_1, -1326f), global0[_wgslsmith_index_u32(arg_0, 13u)], 28257i), Struct_1(u_input.a, -302f, global1.yzz, vec2<bool>(false, false), u_input.a), vec4<u32>(1u, 4294967295u, 6262u, 0u), 1u)), Struct_2(Struct_1(u_input.a, global1.x, global1.xxw, vec2<bool>(global4[_wgslsmith_index_u32(var_0, 25u)], global4[_wgslsmith_index_u32(53630u, 25u)]), u_input.a), Struct_1(-1i, global1.x, global1.xyz, vec2<bool>(true, true), u_input.a), vec4<u32>(arg_2, global3[_wgslsmith_index_u32(15314u, 9u)], 4294967295u, arg_2), global3[_wgslsmith_index_u32(u_input.e, 9u)])).b.d.x, global4[_wgslsmith_index_u32(~var_0, 25u)])), false, global4[_wgslsmith_index_u32(firstLeadingBit(arg_0), 25u)], !(!global4[_wgslsmith_index_u32(22937u, 25u)]));
    var var_3 = func_2().c;
    return Struct_1(var_3.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(min(var_3.a.c.x, 619f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.b.b))), _wgslsmith_f_op_f32(func_1()), -1039f), func_2().c.a.d, var_3.a.a);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_3(vec4<bool>(1u >= (93570u ^ abs(u_input.c)), arg_1.d.x, !any(vec4<bool>(arg_3.x, false, false, global4[_wgslsmith_index_u32(49594u, 25u)])) || arg_2.x, !(!all(vec3<bool>(false, true, true)))), -954f, func_4(Struct_3(!(!vec4<bool>(true, arg_2.x, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -881f), Struct_2(Struct_1(-1230i, global1.x, vec3<f32>(global1.x, global1.x, 610f), vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.a), Struct_1(-2147483647i, arg_1.c.x, vec3<f32>(131f, 764f, arg_1.b), vec2<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1975u, 9u)], 25u)], global4[_wgslsmith_index_u32(arg_0, 25u)]), -25627i), firstTrailingBit(vec4<u32>(arg_0, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 93182u, arg_0)), func_4(Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(1u, 25u)], arg_1.d.x, false, arg_1.d.x), arg_1.b, Struct_2(arg_1, arg_1, vec4<u32>(u_input.d, u_input.b.x, 4294967295u, 6814u), arg_0)), global1.x, Struct_3(vec4<bool>(false, false, arg_1.d.x, global4[_wgslsmith_index_u32(1u, 25u)]), arg_1.c.x, Struct_2(Struct_1(-1i, arg_1.c.x, arg_1.c, vec2<bool>(false, true), u_input.a), arg_1, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 9u)], 5793u, global3[_wgslsmith_index_u32(27096u, 9u)]), 4294967295u)), Struct_2(Struct_1(arg_1.e, arg_1.c.x, vec3<f32>(global1.x, arg_1.c.x, -1636f), arg_2.xz, arg_1.a), Struct_1(arg_1.a, 850f, vec3<f32>(713f, -459f, 122f), vec2<bool>(arg_1.d.x, arg_1.d.x), u_input.a), vec4<u32>(arg_0, u_input.e, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 9u)]), arg_0)).d)), _wgslsmith_f_op_f32(-arg_1.b), func_2(), Struct_2(arg_1, func_5(abs(arg_0), _wgslsmith_f_op_f32(sign(arg_1.c.x)), u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(30160u, 10490u, 0u, arg_0), vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 9u)], u_input.b.x, 8227u)) | vec4<u32>(arg_0, 1u, arg_0, global3[_wgslsmith_index_u32(1u, 9u)]), 8110u)));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.b.b, arg_1.b), var_0.b)) - _wgslsmith_f_op_f32(-func_2().b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 340f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 1087f, 564f, global1.x), vec4<f32>(var_0.b, arg_1.c.x, 1585f, 255f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-415f, var_0.b, global1.x, var_0.c.b.b), vec4<f32>(-375f, 131f, var_0.c.a.b, -638f))))))));
    var var_1 = Struct_1(func_2().c.b.e, arg_1.c.x, _wgslsmith_f_op_vec3_f32(-var_0.c.a.c), !global0[_wgslsmith_index_u32(~1408u, 13u)], -(~48896i));
    global3 = array<u32, 9>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, var_1.b, var_1.c.x, -509f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-793f, arg_1.b, arg_1.c.x, global1.x), vec4<f32>(1000f, var_0.b, -1642f, var_0.c.a.c.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), var_1.c.x, -931f, var_1.b))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_2().c.a.c.x, func_2().b, _wgslsmith_f_op_f32(-var_1.b), global1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, -1867f, 346f, arg_1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(302f, var_1.b, -419f, var_0.b), vec4<f32>(global1.x, -318f, -1969f, var_1.b))))), false || global4[_wgslsmith_index_u32(_wgslsmith_div_u32(37772u, ~global3[_wgslsmith_index_u32(var_0.c.d, 9u)]), 25u)])));
    return _wgslsmith_clamp_i32(reverseBits(var_1.e), _wgslsmith_sub_i32(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 11883i | u_input.a, 1i, u_input.a ^ var_0.c.a.e), vec4<i32>(i32(-1i) * -1i, -21743i & var_0.c.a.e, u_input.a >> (1293u % 32u), _wgslsmith_clamp_i32(29957i, arg_1.e, -66796i)))), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 9>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, 1384f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, -845f, -1557f, -2274f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-927f, -556f, global1.x, 623f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1150f, 216f) * vec4<f32>(global1.x, -3271f, -1000f, global1.x)))))));
    var var_0 = Struct_1(~func_6(u_input.c, func_5(~4294967295u, _wgslsmith_f_op_f32(func_1()), func_4(Struct_3(vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.d, 25u)], global4[_wgslsmith_index_u32(u_input.c, 25u)]), 1000f, Struct_2(Struct_1(u_input.a, 969f, global1.zwx, global0[_wgslsmith_index_u32(4294967295u, 13u)], 1i), Struct_1(2147483647i, global1.x, vec3<f32>(global1.x, 1167f, global1.x), global0[_wgslsmith_index_u32(4294967295u, 13u)], -43606i), vec4<u32>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(34176u, 9u)], 0u, 1u), 57748u)), -413f, Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(10799u, 25u)], false, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3068u, 9u)], 25u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 25u)]), -1462f, Struct_2(Struct_1(u_input.a, global1.x, global1.yyz, vec2<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4331u, 9u)], 9u)], 9u)], 25u)], false), u_input.a), Struct_1(0i, global1.x, global1.wzx, global0[_wgslsmith_index_u32(u_input.e, 13u)], -2147483647i), vec4<u32>(4294967295u, 3246u, global3[_wgslsmith_index_u32(1u, 9u)], 65896u), u_input.b.x)), Struct_2(Struct_1(u_input.a, global1.x, global1.wzz, global0[_wgslsmith_index_u32(u_input.e, 13u)], u_input.a), Struct_1(2147483647i, global1.x, global1.ywz, global0[_wgslsmith_index_u32(35757u, 13u)], -8232i), vec4<u32>(5075u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 9u)], 9u)], u_input.e, global3[_wgslsmith_index_u32(24094u, 9u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65207u, 9u)], 9u)])).c.x), vec3<bool>(true, all(global0[_wgslsmith_index_u32(9267u, 13u)]), true), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 25u)], true), !global0[_wgslsmith_index_u32(824u, 13u)], vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 25u)], true))), global1.x, global1.xww, global0[_wgslsmith_index_u32(9531u, 13u)], u_input.a);
    var var_1 = var_0.c.zz;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.zx) * global1.wx);
    var var_2 = select(vec3<bool>(any(vec4<bool>(true, true, var_0.d.x, var_0.d.x)) && var_0.d.x, any(select(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), !vec4<bool>(true, false, true, var_0.d.x), any(vec4<bool>(var_0.d.x, var_0.d.x, true, true)))), _wgslsmith_f_op_f32(-func_5(51326u, var_1.x, 2682u).b) > 747f), select(vec3<bool>(false, var_0.d.x, !(!var_0.d.x)), !func_2().a.wxw, vec3<bool>(true, true, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -17246i), vec3<i32>(u_input.a, -1i, u_input.a)) <= var_0.a)), vec3<bool>(false, !(_wgslsmith_f_op_f32(-1360f * global1.x) > -670f), reverseBits(func_2().c.a.a) <= func_4(func_2(), 1315f, func_2(), func_4(Struct_3(vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(4294967295u, 25u)]), var_1.x, Struct_2(Struct_1(-9373i, var_0.c.x, global1.wwz, var_0.d, u_input.a), Struct_1(var_0.e, var_1.x, vec3<f32>(-618f, var_1.x, var_1.x), vec2<bool>(false, true), u_input.a), vec4<u32>(4294967295u, 15709u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6365u, 9u)], 9u)], 0u), 4294967295u)), var_1.x, Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(44286u, 25u)], false, false, var_0.d.x), var_1.x, Struct_2(Struct_1(-41108i, 1105f, vec3<f32>(-1144f, -1259f, -402f), var_0.d, var_0.e), Struct_1(var_0.e, global1.x, global1.www, var_0.d, 0i), vec4<u32>(64372u, global3[_wgslsmith_index_u32(u_input.d, 9u)], 90988u, u_input.b.x), global3[_wgslsmith_index_u32(0u, 9u)])), Struct_2(Struct_1(2147483647i, global1.x, global1.wyw, vec2<bool>(false, false), -29521i), Struct_1(17581i, var_0.c.x, vec3<f32>(166f, -777f, -1000f), global0[_wgslsmith_index_u32(0u, 13u)], -2147483647i), vec4<u32>(u_input.e, global3[_wgslsmith_index_u32(u_input.c, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(u_input.c, 9u)]), u_input.d))).b.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-global1.x), -1000f), vec2<i32>(~func_3(), u_input.a ^ abs(52701i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + func_4(Struct_3(vec4<bool>(false, false, true, var_0.d.x), global1.x, Struct_2(Struct_1(var_0.a, -1911f, vec3<f32>(1678f, var_1.x, -2813f), var_2.zz, var_0.e), Struct_1(u_input.a, var_1.x, vec3<f32>(global1.x, global1.x, var_1.x), vec2<bool>(var_0.d.x, var_2.x), var_0.a), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33895u, 9u)], 9u)], 19358u, 4294967295u, 1u), global3[_wgslsmith_index_u32(55842u, 9u)])), var_0.c.x, Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 25u)], global4[_wgslsmith_index_u32(u_input.c, 25u)], var_0.d.x, var_0.d.x), 733f, Struct_2(Struct_1(-16358i, global1.x, vec3<f32>(global1.x, global1.x, 564f), vec2<bool>(false, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26376u, 9u)], 25u)]), 0i), Struct_1(u_input.a, 845f, global1.yzw, vec2<bool>(global4[_wgslsmith_index_u32(36604u, 25u)], var_2.x), u_input.a), vec4<u32>(55927u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], u_input.b.x), 33871u)), Struct_2(Struct_1(-47997i, var_1.x, vec3<f32>(var_1.x, 999f, -462f), var_2.xy, var_0.a), Struct_1(var_0.a, -2261f, vec3<f32>(1085f, var_0.c.x, global1.x), vec2<bool>(var_0.d.x, true), 14081i), vec4<u32>(15365u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 70716u, u_input.c), u_input.c)).b.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-677f, var_1.x, 1000f), vec3<f32>(565f, var_0.b, var_0.b), any(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 25u)], var_2.x, false)))))));
}

