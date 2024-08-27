struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = ~min(_wgslsmith_mod_u32(~u_input.c.x, firstLeadingBit(u_input.d.x)), ~66356u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b, reverseBits(15131u), 25276u, 17650u), _wgslsmith_add_vec4_u32(vec4<u32>(54875u, u_input.d.x, 16618u, u_input.b), vec4<u32>(99573u, u_input.d.x, 36388u, 4294967295u)) & ~vec4<u32>(94456u, 1u, u_input.b, 7780u), vec4<u32>(u_input.c.x, ~1u, 53571u, u_input.b ^ 92043u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(13577u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(u_input.d.x, 1u, 55573u, u_input.c.x) << (vec4<u32>(49699u, u_input.c.x, u_input.b, u_input.d.x) % vec4<u32>(32u)))) % 32u);
    global0 = max(select(~firstTrailingBit(countOneBits(u_input.b)), firstLeadingBit(7372u), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true))), u_input.c.x);
    let var_0 = vec2<i32>(~54769i, u_input.a);
    global0 = u_input.c.x;
    let var_1 = -1163f;
    return var_1;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = ~select(countOneBits(u_input.d), vec2<u32>(~12561u, 694u), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)));
    var var_1 = arg_1;
    var var_2 = Struct_1(~(~(~(arg_1 ^ arg_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1240f, 1263f), vec2<f32>(1286f, 327f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(976f, -2780f))))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-853f - var_2.b.x), _wgslsmith_f_op_f32(func_3()))) - -1722f)), -820f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)))));
    return Struct_1(countOneBits(95178u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2331f, 337f), var_2.b)))) * _wgslsmith_f_op_vec2_f32(step(var_2.b, var_3.yz))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 138f) + _wgslsmith_f_op_f32(sign(arg_0.b.x))) - arg_0.b.x)), _wgslsmith_f_op_f32(round(-1000f)), func_2(28047i, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(94091u, u_input.c.x, arg_0.a, 12880u)), ~vec4<u32>(2544u, u_input.b, 523u, 4294967295u)) | countOneBits(19524u), ~((vec4<u32>(arg_0.a, 60267u, arg_0.a, u_input.d.x) | vec4<u32>(1u, 14158u, 0u, 28766u)) >> ((vec4<u32>(u_input.c.x, 1u, u_input.c.x, arg_0.a) ^ vec4<u32>(u_input.b, u_input.d.x, 67925u, 57278u)) % vec4<u32>(32u)))).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f * -121f), _wgslsmith_f_op_f32(-arg_0.b.x)));
    global0 = 1u;
    let var_1 = arg_0.b.x;
    var var_2 = func_2(~u_input.a, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(arg_0.a, 0u), _wgslsmith_clamp_vec2_u32(~u_input.d, select(vec2<u32>(1u, arg_0.a), vec2<u32>(arg_0.a, 0u), vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), u_input.d))), u_input.d), vec4<u32>(abs(42239u), _wgslsmith_div_u32(_wgslsmith_mod_u32(35720u, u_input.c.x << (arg_0.a % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(64679u, 4938u, 1u), vec3<u32>(49780u, arg_0.a, 0u)), _wgslsmith_mult_u32(67070u, 5128u))), 44827u, arg_0.a));
    global0 = ~_wgslsmith_clamp_u32(20194u, var_2.a, 4294967295u);
    return var_2.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> f32 {
    global0 = ~(~func_4(func_2(~u_input.a, firstLeadingBit(u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, arg_0.a, u_input.b, 4294967295u), vec4<u32>(u_input.b, arg_0.a, arg_0.a, arg_0.a))), firstTrailingBit(u_input.a)));
    global0 = ~u_input.c.x & u_input.d.x;
    var var_0 = arg_0;
    var var_1 = arg_0;
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(countOneBits(1u << (u_input.c.x % 32u)), _wgslsmith_mod_u32(4294967295u, 1u & u_input.c.x)), min(0u, 0u << (min(var_0.a, 23400u) % 32u)));
    return _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(173f)))), arg_2.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1((_wgslsmith_add_u32(~arg_1.a, arg_0.a) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a, 0u), vec3<u32>(u_input.d.x, 4294967295u, 29281u)))) | abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.a, 16402u), _wgslsmith_mod_u32(0u, u_input.b))), arg_0.b);
    let var_1 = firstTrailingBit(~41769u);
    let var_2 = select(!vec3<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), true), vec3<bool>(!(!any(vec3<bool>(true, true, false))), false, !any(vec2<bool>(true, true))), true);
    global0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_0.a, 0u), 52386u), countOneBits(abs(countOneBits(arg_1.a)))) & ~var_0.a;
    global0 = 1u;
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1210f, _wgslsmith_f_op_f32(f32(-1f) * -942f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1337f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = u_input.d.x >> (0u % 32u);
    let var_0 = ~(~vec3<u32>(u_input.b, u_input.c.x, _wgslsmith_clamp_u32(~u_input.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, 0u), vec4<u32>(u_input.d.x, 0u, 42174u, u_input.c.x)))));
    let var_1 = vec3<bool>(true, !(!(~u_input.d.x < _wgslsmith_dot_vec2_u32(var_0.zy, var_0.zz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(612f + 806f) + _wgslsmith_f_op_f32(216f + -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(959f, -720f) - _wgslsmith_f_op_f32(round(-1121f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1587f, _wgslsmith_f_op_f32(f32(-1f) * -427f))));
    let var_2 = func_5(Struct_1(u_input.c.x | ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.b, 63034u), vec3<u32>(4294967295u, var_0.x, 24923u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, _wgslsmith_f_op_f32(sign(-737f))))), Struct_1(~3637u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, _wgslsmith_f_op_f32(f32(-1f) * -1645f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -561f) - vec2<f32>(987f, -403f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, vec2<f32>(478f, -498f)), vec2<bool>(var_1.x, true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), var_1.x), vec2<bool>(false, var_1.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -417f))))));
    var var_3 = select(_wgslsmith_mod_vec4_i32(reverseBits(reverseBits(firstLeadingBit(vec4<i32>(u_input.a, -1i, -40828i, -39986i)))), abs(vec4<i32>(select(-7534i, 0i, var_1.x), u_input.a, max(-5452i, u_input.a), u_input.a >> (86922u % 32u)))), _wgslsmith_add_vec4_i32((reverseBits(vec4<i32>(16623i, u_input.a, u_input.a, -64515i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 69662i))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(93304u, u_input.d.x, var_0.x, 1u), vec4<u32>(1u, 69519u, 35474u, u_input.d.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 17250u, u_input.b, var_0.x), vec4<u32>(1u, var_2.a, 13020u, 0u)), ~vec4<u32>(u_input.d.x, 10622u, var_0.x, 25194u)) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)) ^ ((vec4<i32>(0i, 2147483647i, u_input.a, u_input.a) >> (vec4<u32>(18549u, 1524u, var_0.x, var_2.a) % vec4<u32>(32u))) >> (~vec4<u32>(0u, var_2.a, u_input.b, var_0.x) % vec4<u32>(32u)))), select(vec4<bool>(all(vec4<bool>(true, true, false, var_1.x)), var_1.x && true, var_1.x, 3036i == (u_input.a >> (u_input.b % 32u))), vec4<bool>(any(!vec4<bool>(false, var_1.x, false, var_1.x)), select(true, true, var_2.b.x < -220f), var_1.x, (-1i >> (var_2.a % 32u)) > -41785i), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), true)));
    global0 = func_5(var_2, func_5(func_5(Struct_1(41738u, var_2.b), var_2, 1f), func_2(var_3.x >> (_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(33701u, u_input.c.x, 0u)) % 32u), 1u, vec4<u32>(var_2.a, ~var_2.a, 8315u, min(var_2.a, 0u))), func_2(var_3.x, ~(~u_input.c.x), ~vec4<u32>(0u, var_2.a, var_2.a, var_2.a) << (~vec4<u32>(1u, 40195u, var_0.x, 0u) % vec4<u32>(32u))).b.x), _wgslsmith_f_op_f32(-func_5(func_2(~31180i, u_input.c.x & var_0.x, ~vec4<u32>(var_0.x, 0u, var_2.a, var_2.a)), func_5(var_2, Struct_1(101389u, vec2<f32>(688f, var_2.b.x)), _wgslsmith_f_op_f32(-656f + var_2.b.x)), 1f).b.x)).a;
    let var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(abs(u_input.d.x), _wgslsmith_mod_u32(var_0.x, 1u)), 1u), reverseBits(~_wgslsmith_mult_vec2_u32(var_0.xy, ~vec2<u32>(var_0.x, var_2.a))));
    let var_5 = true || var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.x))), var_0.yz, min(u_input.b, select(func_2(var_3.x, var_0.x, vec4<u32>(u_input.d.x, var_0.x, 1u, u_input.d.x)).a, ~5339u, var_5)) >> (~var_0.x % 32u), vec4<i32>(-firstLeadingBit(u_input.a ^ 2147483647i), -_wgslsmith_dot_vec3_i32(-var_3.xxy, countOneBits(vec3<i32>(1i, u_input.a, 1i))), _wgslsmith_mod_i32(u_input.a, ~(-17870i)), -21600i), select(vec2<i32>(-1i) * -var_3.yy, vec2<i32>(35747i, 39813i), !var_1.xy));
}

