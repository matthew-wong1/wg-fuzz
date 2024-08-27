struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: u32 = 26942u;

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-54126i, 2147483647i), vec2<i32>(-53780i, 2147483647i), vec2<i32>(15544i, 2147483647i), vec2<i32>(0i, 30237i), vec2<i32>(-7889i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-7162i, 1i), vec2<i32>(-65663i, -7991i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 25380i), vec2<i32>(36059i, -26028i), vec2<i32>(0i, -16812i), vec2<i32>(0i, 13429i), vec2<i32>(-53288i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-9072i, i32(-2147483648)), vec2<i32>(-15621i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(9549i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -85128i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -3701i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, -72754i), vec2<i32>(-17109i, 1i), vec2<i32>(-25266i, -1i), vec2<i32>(-663i, -26843i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = !any(vec4<bool>(all(vec2<bool>(true, true)), true, false, any(vec4<bool>(true, false, false, true)) || (u_input.e != 0i)));
    global0 = array<Struct_1, 16>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~73057u) | firstLeadingBit(_wgslsmith_clamp_u32(~u_input.c, 1u, ~1u)), 32u)];
    var var_2 = max(0u, u_input.b.x);
    let var_3 = Struct_2(_wgslsmith_add_u32(~firstTrailingBit(u_input.b.x), ~u_input.c), Struct_1(41603u, vec4<f32>(arg_0, _wgslsmith_f_op_f32(trunc(-1393f)), _wgslsmith_f_op_f32(round(1674f)), arg_0), vec4<i32>(~_wgslsmith_div_i32(u_input.d, var_1.x), ~reverseBits(-20624i), min(1i, ~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(65079i, u_input.d, 2147483647i), reverseBits(vec3<i32>(1i, u_input.e, u_input.e)))), ~(~7361u)), true);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.d & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_3.a, 0u), vec4<u32>(var_3.b.a, var_3.b.a, var_3.a, u_input.c)) >> (1u % 32u)), var_3.a, firstTrailingBit(u_input.c << (var_3.b.d % 32u)) | ~var_3.a, 76280u >> (~(u_input.b.x >> (u_input.c % 32u)) % 32u)), firstTrailingBit(~(~vec4<u32>(var_3.a, var_3.a, u_input.b.x, var_3.b.d))) & _wgslsmith_mod_vec4_u32(max(firstTrailingBit(vec4<u32>(64871u, u_input.b.x, 14051u, 12218u)), max(vec4<u32>(var_3.a, var_3.a, u_input.b.x, u_input.c), vec4<u32>(36083u, var_3.a, u_input.b.x, 73967u))), ~firstLeadingBit(vec4<u32>(var_3.a, 0u, var_3.b.a, 18043u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_2 {
    global1 = array<vec3<i32>, 14>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(func_3(2393f), ~(~vec4<u32>(arg_1.x, 4294967295u, 14864u, 4294967295u)) >> (abs(vec4<u32>(arg_1.x, u_input.b.x, 2762u, 9114u)) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1354f)), -1387f, true))), _wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f, _wgslsmith_f_op_f32(515f + 782f)), -u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, u_input.b.x, 48085u, arg_1.x), ~vec4<u32>(arg_1.x, u_input.c, arg_1.x, 1u)), _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), arg_1.x | arg_1.x), arg_1.x, _wgslsmith_mult_u32(arg_1.x, ~0u)), ~(~vec4<u32>(arg_1.x, 49672u, 2630u, 0u))));
    var var_1 = Struct_3(Struct_1(min(~119223u, ~var_0.d), _wgslsmith_f_op_vec4_f32(exp2(var_0.b)), vec4<i32>(20337i, 67324i, u_input.e, (-2147483647i ^ arg_0.x) & arg_0.x), var_0.a));
    var_1 = Struct_3(Struct_1(var_1.a.a, vec4<f32>(-530f, -375f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), vec4<i32>(u_input.e, abs(2147483647i >> (var_0.a % 32u)), 0i, _wgslsmith_div_i32(var_0.c.x, 2147483647i) ^ countOneBits(-56700i)), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 1u), arg_1), firstTrailingBit(1u | u_input.c))));
    var var_2 = -432f;
    return Struct_2(_wgslsmith_mult_u32(firstLeadingBit(~27297u), abs(55315u)), Struct_1(~(~u_input.c) | 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2141f, -489f, var_0.b.x, -274f))) + vec4<f32>(172f, 1000f, -2549f, _wgslsmith_f_op_f32(round(-717f)))), vec4<i32>(-1i, ~0i, 1i, -(~u_input.e)), ~(~min(32329u, 4788u))), false);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 16u)];
    let var_1 = arg_0.c;
    var var_2 = func_2(vec4<i32>(var_0.c.x, countOneBits(_wgslsmith_div_i32(-1i, u_input.a.x)), _wgslsmith_add_i32(u_input.d >> (u_input.c % 32u), -2147483647i), -firstTrailingBit(-19913i)) >> (vec4<u32>(~min(arg_0.b.d, u_input.b.x), countOneBits(_wgslsmith_mult_u32(68234u, arg_2)), ~6424u, 18824u) % vec4<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, arg_0.a, u_input.c, 9561u), vec4<u32>(48607u, arg_2, 1u, 54591u)), ~vec4<u32>(u_input.b.x, 1u, 27507u, arg_0.b.d)), select(1u, _wgslsmith_add_u32(var_0.a, 1u), select(arg_3, arg_0.c, true)), var_0.d) ^ ~select(vec3<u32>(u_input.b.x, arg_2, arg_2), vec3<u32>(24853u, 38334u, 1u) & vec3<u32>(4077u, arg_0.a, var_0.d), arg_3), !(!(!(!vec3<bool>(var_1, var_1, false)))));
    let var_3 = arg_0.b.b.x;
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(func_2(vec4<i32>(-8783i, var_0.c.x, -2147483647i, 24061i), vec3<u32>(u_input.b.x, 0u, var_2.a), vec3<bool>(false, true, var_2.c)).b.c.zwx, vec3<i32>(arg_0.b.c.x, var_2.b.c.x, -17606i)), var_2.b.c.x >> (68789u % 32u)) & 496i, 29367i, arg_0.b.c.x, i32(-1i) * -(~func_2(vec4<i32>(u_input.d, u_input.a.x, u_input.e, -32455i), vec3<u32>(var_2.a, arg_0.a, var_2.a), vec3<bool>(false, true, arg_0.c)).b.c.x));
    return Struct_3(func_2(min(~min(arg_0.b.c, vec4<i32>(-2147483647i, var_4.x, 45576i, var_0.c.x)), -vec4<i32>(31426i, var_4.x, var_4.x, var_0.c.x)), ~(vec3<u32>(68561u, 960u, arg_2) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, arg_0.a, var_2.b.d), vec3<u32>(var_2.b.d, var_2.a, 46091u))), vec3<bool>(any(select(vec4<bool>(true, var_1, false, arg_3), vec4<bool>(true, false, arg_0.c, true), true)), !arg_3 || true, !any(vec3<bool>(false, var_2.c, true)))).b);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_3(func_1(Struct_2(u_input.b.x, Struct_1(1u, arg_2.a.b, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(arg_2.a.c.x, 8582i, 1i, u_input.e)), ~arg_2.a.a), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.b.xzz - func_2(vec4<i32>(arg_2.a.c.x, arg_1.x, -2147483647i, u_input.a.x), vec3<u32>(0u, arg_2.a.a, u_input.c), vec3<bool>(arg_0, false, true)).b.b.zxx) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.b.x, 590f, -827f), _wgslsmith_f_op_vec3_f32(-arg_2.a.b.wxx), vec3<bool>(false, true, arg_0)))), firstTrailingBit(arg_2.a.a), true).a);
    let var_1 = func_2(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.a.c.x, var_0.a.c.x, u_input.e, 1i), select(u_input.a & arg_2.a.c, -vec4<i32>(-18685i, u_input.a.x, arg_2.a.c.x, arg_2.a.c.x), !vec4<bool>(arg_0, false, true, true))), vec4<i32>(arg_1.x, -55385i, arg_1.x >> (arg_2.a.a % 32u), -5846i)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, 28062u), u_input.b), u_input.b.x, 0u, _wgslsmith_div_u32(18002u, 15520u)), firstTrailingBit(vec4<u32>(u_input.c, var_0.a.d, u_input.b.x, var_0.a.a) << (vec4<u32>(50891u, var_0.a.a, 63757u, 1u) % vec4<u32>(32u)))), countOneBits(0u ^ arg_2.a.d) | 16040u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.a.d, 0u, 52640u, 1u), ~vec4<u32>(var_0.a.a, var_0.a.a, 4294967295u, var_0.a.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(67601u, 60357u, u_input.c, 34203u), vec4<u32>(63755u, 60616u, 65892u, 17966u), vec4<u32>(arg_2.a.a, u_input.b.x, 39584u, var_0.a.d)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_2.a.a, 24361u, arg_2.a.a), vec4<u32>(23582u, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u)))), select(!vec3<bool>(!arg_0, arg_0, arg_0), select(vec3<bool>(true, func_2(arg_2.a.c, vec3<u32>(77595u, 3268u, 6942u), vec3<bool>(true, false, arg_0)).c, any(vec2<bool>(arg_0, arg_0))), select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, true), arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, arg_0)), true), select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, true))), true));
    var var_2 = Struct_2(abs(~u_input.c), Struct_1(func_2(min(func_2(var_0.a.c, vec3<u32>(arg_2.a.d, 4294967295u, var_1.a), vec3<bool>(true, true, var_1.c)).b.c, ~vec4<i32>(64561i, 15596i, var_0.a.c.x, -20051i)), vec3<u32>(29197u, var_1.b.a, var_1.b.a), vec3<bool>(arg_2.a.b.x < 791f, arg_0, true)).a, vec4<f32>(var_1.b.b.x, var_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1506f), _wgslsmith_f_op_f32(f32(-1f) * -1357f)), vec4<i32>(abs(~arg_1.x), u_input.a.x, ~u_input.a.x, _wgslsmith_sub_i32(-2147483647i, arg_2.a.c.x)), countOneBits(~_wgslsmith_sub_u32(arg_2.a.a, var_0.a.a))), any(vec4<bool>(!all(vec2<bool>(arg_0, false)), arg_0, var_1.c, arg_0)));
    let var_3 = -6298i;
    let var_4 = countOneBits(-1087i);
    return vec3<bool>(false, true, var_1.c);
}

fn func_5(arg_0: u32, arg_1: bool) -> vec3<u32> {
    global3 = array<vec2<i32>, 32>();
    global2 = func_1(Struct_2(countOneBits(~4294967295u) ^ arg_0, Struct_1(~max(48199u, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1117f)), -904f, -156f, _wgslsmith_f_op_f32(ceil(1172f))), vec4<i32>(-39850i, u_input.a.x, _wgslsmith_sub_i32(2147483647i, u_input.e), ~(-1i)), 1u), ((-1i <= u_input.d) | true) & !arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f + 1023f) * _wgslsmith_f_op_f32(582f + -1336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f - 1839f)))), arg_0, arg_1).a.a;
    var var_0 = true && select(arg_1, all(func_4(arg_1, vec3<i32>(u_input.a.x, u_input.a.x, u_input.d), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 16u)]))), func_4(arg_1, ~vec3<i32>(u_input.a.x, -50896i, -3063i), func_1(func_2(u_input.a, vec3<u32>(arg_0, u_input.b.x, arg_0), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(417f, 2955f, -1514f), vec3<f32>(299f, 1573f, -313f))), ~arg_0, !arg_1)).x);
    var var_1 = -max(select(11669i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d, u_input.e), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), all(select(vec2<bool>(true, arg_1), vec2<bool>(true, true), arg_1))), u_input.d);
    let var_2 = select(select(func_4(!arg_1, firstTrailingBit(abs(vec3<i32>(u_input.e, u_input.d, -24826i))), func_1(func_2(u_input.a, vec3<u32>(u_input.c, arg_0, u_input.b.x), vec3<bool>(true, true, true)), vec3<f32>(977f, 500f, 479f), u_input.b.x, arg_1)).xy, vec2<bool>(arg_1, all(select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, false, arg_1)))), !all(vec3<bool>(false, true, false))), select(vec2<bool>(func_4(!arg_1, global1[_wgslsmith_index_u32(~arg_0, 14u)], Struct_3(Struct_1(1u, vec4<f32>(-1328f, -949f, -810f, -1000f), u_input.a, 0u))).x, arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, false)), vec2<bool>(all(!vec2<bool>(arg_1, arg_1)), !arg_1));
    return vec3<u32>(_wgslsmith_mod_u32(arg_0, func_2(u_input.a, func_3(-146f).xyy, vec3<bool>(true, any(var_2), true)).b.a), _wgslsmith_div_u32(9995u, u_input.c), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<u32>(4294967295u, ~u_input.b.x, abs(4294967295u))) | func_5(_wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.b.x, 0u), 0u), any(func_4(true, countOneBits(global1[_wgslsmith_index_u32(1u, 14u)]), func_1(Struct_2(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 16u)], false), vec3<f32>(1250f, -850f, -856f), u_input.c, true))));
    var var_1 = false;
    var var_2 = vec2<bool>(all(vec4<bool>(true, true, true, true)), true);
    let var_3 = -2147483647i;
    global1 = array<vec3<i32>, 14>();
    global1 = array<vec3<i32>, 14>();
    var_2 = !(!(!vec2<bool>(true, var_2.x && true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 653f) * vec2<f32>(560f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))))));
    var var_5 = func_1(Struct_2(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], select(true, -var_3 > _wgslsmith_mod_i32(2147483647i, u_input.e), var_2.x)), vec3<f32>(var_4.x, 1653f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(206f))))), u_input.b.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(~6709u, _wgslsmith_dot_vec3_u32(func_5(u_input.c, var_2.x), vec3<u32>(u_input.b.x, 48989u, 53174u)))));
}

