struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<f32>(-546f, -762f), vec3<i32>(2147483647i, 58785i, -18311i), vec3<i32>(-1i, 0i, -1i)), Struct_3(vec2<f32>(565f, 1230f), vec3<i32>(1i, -575i, 1i), vec3<i32>(37238i, 2147483647i, 1i)), Struct_3(vec2<f32>(-711f, 563f), vec3<i32>(1i, i32(-2147483648), -2598i), vec3<i32>(1i, -16737i, 17646i)), Struct_3(vec2<f32>(-1051f, 1763f), vec3<i32>(-13903i, -6074i, -57768i), vec3<i32>(-16181i, 2147483647i, 1i)), Struct_3(vec2<f32>(1000f, 649f), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(0i, -1i, 6535i)), Struct_3(vec2<f32>(426f, 1381f), vec3<i32>(14627i, -1i, i32(-2147483648)), vec3<i32>(-16790i, 0i, 51351i)), Struct_3(vec2<f32>(813f, -1000f), vec3<i32>(39165i, 1i, 70172i), vec3<i32>(6030i, 2147483647i, -28240i)), Struct_3(vec2<f32>(-384f, -1143f), vec3<i32>(64101i, -19481i, 1i), vec3<i32>(21987i, -33553i, -1900i)), Struct_3(vec2<f32>(-420f, 781f), vec3<i32>(-62002i, 1i, -8980i), vec3<i32>(-2797i, -70355i, -32908i)), Struct_3(vec2<f32>(-546f, -186f), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-32407i, 1i, 1453i)), Struct_3(vec2<f32>(-1061f, -208f), vec3<i32>(0i, 12922i, -17444i), vec3<i32>(-18018i, -37152i, 22204i)), Struct_3(vec2<f32>(1437f, 1000f), vec3<i32>(-1i, 59586i, 2147483647i), vec3<i32>(1i, 13831i, 62316i)), Struct_3(vec2<f32>(-789f, 523f), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(1i, 1i, 38658i)), Struct_3(vec2<f32>(-683f, 2094f), vec3<i32>(8241i, 21935i, 17551i), vec3<i32>(-15652i, 2147483647i, -3157i)), Struct_3(vec2<f32>(-276f, 420f), vec3<i32>(i32(-2147483648), -21774i, 35091i), vec3<i32>(1402i, 1i, i32(-2147483648))), Struct_3(vec2<f32>(238f, -172f), vec3<i32>(1i, -1i, -32196i), vec3<i32>(-57918i, -5694i, 0i)), Struct_3(vec2<f32>(1578f, -1233f), vec3<i32>(32231i, 1i, 33162i), vec3<i32>(45924i, i32(-2147483648), -69389i)), Struct_3(vec2<f32>(764f, 181f), vec3<i32>(-18124i, 1i, 34260i), vec3<i32>(-1i, 14998i, 1i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mod_i32(~2147483647i, max(_wgslsmith_add_i32(40306i, 41579i), 38959i));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-711f)) * 1f)));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1172f, 1f))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - _wgslsmith_f_op_f32(1930f * 1384f)), -486f))) <= -630f;
    let var_3 = -285f;
    return -(u_input.a.x & _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(0i, var_0))), (u_input.d.zz & u_input.d.yy) & vec2<i32>(var_0, var_0)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_3.c)), ~max(-(~u_input.d), u_input.d), u_input.a);
    global0 = array<Struct_3, 18>();
    var_0 = global0[_wgslsmith_index_u32(~20550u, 18u)];
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(10432u, 0u)), 33606u), u_input.c), ~(~firstLeadingBit(~vec2<u32>(u_input.c, u_input.c)))), 18u)];
    let var_1 = Struct_1(select(_wgslsmith_add_u32(u_input.c, 0u) <= u_input.b, all(select(arg_3.d.wzy, select(vec3<bool>(false, true, arg_3.d.x), arg_3.d.www, arg_3.d.xzz), any(vec2<bool>(arg_3.b.x, false)))), !arg_3.d.x & (all(arg_3.b) & arg_3.a)), vec2<bool>(any(vec3<bool>(arg_3.b.x, arg_3.b.x & arg_3.d.x, !arg_3.b.x)), false), 297f, vec4<bool>(!arg_3.a, all(vec3<bool>(false, arg_3.b.x, true)), arg_3.a, ~u_input.b > _wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, 1u), vec3<u32>(u_input.b, 6723u, 0u)))));
    return -4475i;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = 0i;
    global0 = array<Struct_3, 18>();
    var_0 = -(~2147483647i) & func_4(4155i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -148f))), ~func_3(), Struct_1(any(vec4<bool>(true, false, true, true)) | true, vec2<bool>(true, true), 1f, vec4<bool>(true, true, true, true)));
    var var_1 = u_input.c;
    var var_2 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(~u_input.c, ~firstTrailingBit(u_input.c) >> (u_input.c % 32u), (arg_1 << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 12086u), vec2<u32>(14150u, u_input.c) << (vec2<u32>(0u, arg_3.x) % vec2<u32>(32u))) % 32u)) ^ u_input.b, ~66972u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-262f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * _wgslsmith_f_op_f32(min(arg_0, -146f))))))) + _wgslsmith_f_op_f32(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(533f, 573f))))), vec3<i32>(0i, select(-1809i, u_input.e.x, true), 12763i), ~(~vec3<i32>(-11798i, arg_2.x, u_input.d.x))))));
    global0 = array<Struct_3, 18>();
    var var_2 = func_3();
    var_2 = _wgslsmith_dot_vec4_i32(select(-arg_2, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(abs(arg_2), vec4<i32>(u_input.a.x, u_input.d.x, arg_2.x, 54578i)), min(-arg_2, arg_2 ^ vec4<i32>(2169i, 0i, 7881i, arg_2.x))), vec4<bool>(!select(true, false, true), true, arg_2.x == ~arg_2.x, true)), arg_2);
    return Struct_1(false && all(vec4<bool>(true, select(false, false, false), true, 2147483647i <= u_input.d.x)), vec2<bool>(true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(103f)), vec4<bool>(true, all(vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), true)), true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), all(vec3<bool>(true, false, true))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, arg_1.a.x, arg_0.c, 243f));
    let var_1 = 22405i;
    global0 = array<Struct_3, 18>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(-918f)), 1499f, _wgslsmith_f_op_f32(arg_2.c * arg_0.c), _wgslsmith_f_op_f32(round(var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-135f * var_0.x), 1002f, _wgslsmith_f_op_f32(step(arg_1.a.x, arg_0.c)), _wgslsmith_f_op_f32(step(-1000f, 186f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.a.x, arg_2.c, 908f)), vec4<f32>(-130f, var_0.x, arg_2.c, -323f), arg_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1662f, arg_0.c)), func_5(_wgslsmith_f_op_f32(min(1074f, var_0.x)), 47725u, vec4<i32>(arg_1.b.x, -19341i, arg_1.c.x, 0i), ~vec2<u32>(4294967295u, u_input.c)).c, arg_0.c, _wgslsmith_f_op_f32(-arg_1.a.x))));
    var var_2 = arg_1;
    return global0[_wgslsmith_index_u32(76757u << (u_input.b % 32u), 18u)];
}

fn func_1() -> vec2<bool> {
    let var_0 = true;
    global0 = array<Struct_3, 18>();
    var var_1 = Struct_2(vec2<f32>(107f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-690f, -895f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(315f * 560f), _wgslsmith_f_op_f32(f32(-1f) * -823f))))), select(vec3<bool>(select(!var_0, true, true), true, false), !(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0)), !select(!var_0, false, false)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, 30912u), vec3<u32>(u_input.c, 9191u, 0u)))), vec3<u32>(~(~(~11356u)), abs(1u), 24479u));
    let var_3 = func_6(func_5(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(var_1.a.x, var_1.a.x), vec3<i32>(-29077i, u_input.d.x, -15478i), u_input.e ^ vec3<i32>(u_input.e.x, -26482i, 14163i)))), ~_wgslsmith_sub_u32(var_2, 4294967295u) << (var_2 % 32u), ~countOneBits(-vec4<i32>(1i, 1i, 30540i, 2147483647i)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 36857u), vec2<u32>(~var_2, var_2), vec2<u32>(var_2, 30767u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(18423u, var_2), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-334f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-272f, -411f), var_1.a)))), vec3<i32>(-(~u_input.d.x), ~u_input.a.x | -1i, u_input.d.x), abs(-u_input.a)), Struct_1(all(var_1.b.yz), !vec2<bool>(true, any(var_1.b.zx)), 2447f, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f - 221f) + var_1.a.x), u_input.b, -vec4<i32>(-2925i, u_input.a.x, 2147483647i, 10411i) << (firstTrailingBit(vec4<u32>(u_input.c, var_2, var_2, var_2)) % vec4<u32>(32u)), reverseBits(~vec2<u32>(var_2, var_2))).d));
    return !var_1.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(3577i, -u_input.d.x);
    var var_1 = Struct_1(all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), !func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-953f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-870f)) + 847f))), vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(107f)), _wgslsmith_f_op_f32(f32(-1f) * -542f))) < -989f, func_1().x || false, !(1u <= (u_input.c >> (52420u % 32u))), func_5(_wgslsmith_f_op_f32(-1598f - _wgslsmith_f_op_f32(abs(-1623f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 1u, u_input.b), vec4<u32>(15163u, 14692u, u_input.c, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(16082i, -15476i, 44127i, -33567i), vec4<i32>(-1i, -15487i, u_input.d.x, u_input.a.x)), vec2<u32>(99685u, min(45608u, 0u))).a));
    var var_2 = func_6(Struct_1(true, var_1.d.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f))), vec4<bool>(!(!var_1.d.x), all(vec2<bool>(true, var_1.a)), var_1.b.x, !(var_1.b.x && var_1.d.x))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - 1255f), _wgslsmith_f_op_f32(-var_1.c)), vec3<i32>(var_0, u_input.a.x, u_input.e.x), vec3<i32>(var_0, var_0, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_0, 15077i, -1i)), -736i))), func_5(var_1.c, 4294967295u, select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -93374i, var_0, 2147483647i), vec4<i32>(u_input.a.x, u_input.e.x, u_input.e.x, 29942i)), min(countOneBits(vec4<i32>(-11617i, var_0, 0i, 40011i)), vec4<i32>(25477i, 17309i, -55262i, 1i)), var_1.b.x), vec2<u32>(u_input.c, _wgslsmith_mult_u32(~4392u, _wgslsmith_mod_u32(u_input.b, u_input.c))))).a.x;
    let var_3 = -573f;
    var_1 = Struct_1(true, vec2<bool>(false, select(var_1.b.x, all(vec2<bool>(var_1.d.x, true)), var_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(f32(-1f) * -617f)))))), var_1.d);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_5 = _wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(27845u, 30936u, 1u, 31050u) & vec4<u32>(u_input.b, 1u, 4294967295u, 12660u), ~vec4<u32>(7293u, u_input.b, 21807u, 1u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 22463u, u_input.c, u_input.c), vec4<u32>(u_input.b, 1u, u_input.b, 25282u))), vec4<u32>(33805u, 22528u, ~(626u << (u_input.c % 32u)), _wgslsmith_mult_u32(20220u, 33235u))), vec4<u32>(~1u, ~u_input.b, 21117u, reverseBits(27707u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(func_6(Struct_1(true, vec2<bool>(true, var_1.a), -1048f, vec4<bool>(false, false, false, var_1.b.x)), global0[_wgslsmith_index_u32(~60227u, 18u)], func_5(var_3, u_input.b, vec4<i32>(29200i, var_0, -5808i, -18403i), var_5.yw)).a)) + vec2<f32>(var_3, -310f)), var_5.x, ~select((var_5.x >> (u_input.c % 32u)) >> (abs(0u) % 32u), abs(_wgslsmith_sub_u32(103966u, u_input.b)), true), vec4<f32>(253f, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - -757f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(trunc(816f)))));
}

