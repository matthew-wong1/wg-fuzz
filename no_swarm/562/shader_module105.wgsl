struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(60396i, -744i, -19104i, 39470i, -12916i, -10411i, 17722i, 12158i, -59006i, i32(-2147483648), 21372i, -1i, i32(-2147483648), 0i, -30660i, 21382i, 0i, 0i, 2147483647i, 20668i, -1i, 2147483647i, 8967i, -8563i, -7947i, 2429i, 70018i, 7939i, -6681i, i32(-2147483648), 0i, 0i);

var<private> global1: array<i32, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<bool>(arg_2.e.x, select(arg_2.e.x, true, _wgslsmith_mod_u32(min(arg_2.c.x, 28594u), u_input.a) < firstTrailingBit(~arg_2.c.x)), !arg_2.e.x, false);
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), u_input.c.x, -1i, 29242i), ~countOneBits(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 16u)], -1676i, global1[_wgslsmith_index_u32(arg_2.b, 16u)]))), vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~u_input.d, 32u)], global1[_wgslsmith_index_u32((43291u << (u_input.d % 32u)) ^ (u_input.d | arg_2.b), 16u)]), 1i, global0[_wgslsmith_index_u32(arg_2.b, 32u)], _wgslsmith_add_i32(abs(1i), firstLeadingBit(2147483647i))));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return arg_2.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(565f, 684f, 703f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1654f, 1033f, 303f) - vec3<f32>(-739f, -1067f, 1013f)))), func_3(vec4<f32>(-586f, 249f, 354f, 363f), true, Struct_1(vec3<f32>(-1362f, 1717f, -215f), u_input.b.x, vec2<u32>(1u, 12147u), false, vec2<bool>(false, false))) >> (10295u % 32u), vec2<u32>(1u >> ((u_input.a >> (u_input.d % 32u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) << (~0u % 32u)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), vec2<bool>(select(false, true, true), any(vec4<bool>(true, true, true, true)))), u_input.c.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-8963i, -global0[_wgslsmith_index_u32(36554u, 32u)], -1i << (_wgslsmith_add_u32(u_input.b.x, u_input.a) % 32u)), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 32u)], -1i), u_input.c.x, 2147483647i))), 0u, firstLeadingBit(vec4<u32>(51024u, 4294967295u, u_input.d, u_input.b.x)));
    var var_1 = select(u_input.c, -(u_input.c | vec3<i32>(-u_input.c.x, select(-59873i, -3528i, false), 0i)), select(vec3<bool>(var_0.a.d, -u_input.c.x <= firstLeadingBit(global1[_wgslsmith_index_u32(1u, 16u)]), var_0.a.e.x && var_0.a.e.x), vec3<bool>(-global0[_wgslsmith_index_u32(var_0.d, 32u)] != countOneBits(u_input.c.x), true, true), !vec3<bool>(select(false, true, true), any(vec3<bool>(var_0.a.d, true, false)), var_0.c < -1i)));
    let var_2 = max(u_input.b, ~vec3<u32>(0u, 16156u, var_0.d >> (min(0u, var_0.e.x) % 32u)));
    var var_3 = var_0.a;
    var var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a), u_input.b.x, vec2<u32>(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_4.e, vec4<u32>(7285u, var_3.c.x, u_input.d, var_4.a.c.x)), ~var_0.d) & (var_3.c.x & ~0u)), !all(var_4.a.e), !(!select(select(vec2<bool>(false, true), vec2<bool>(var_4.a.e.x, true), var_4.a.d), vec2<bool>(true, var_0.a.e.x), true)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = array<i32, 32>();
    let var_0 = func_2();
    let var_1 = Struct_4(arg_0, true);
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = arg_1.a.a.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1039f, -1000f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(ceil(1691f)))))));
    global1 = array<i32, 16>();
    var var_2 = -390f;
    let var_3 = _wgslsmith_f_op_f32(func_1(Struct_3(arg_1.e, func_1(arg_1), vec4<f32>(_wgslsmith_f_op_f32(-995f + -458f), _wgslsmith_f_op_f32(f32(-1f) * -1198f), -1000f, func_1(Struct_3(arg_1.a, arg_1.a.a, vec4<f32>(-329f, arg_0, arg_0, var_1.x), arg_1.b.e.x, arg_1.a)).a.x), all(vec3<bool>(arg_1.b.e.x, arg_1.e.a.d, arg_1.a.a.d)), Struct_2(func_1(Struct_3(Struct_2(Struct_1(var_1, 4294967295u, vec2<u32>(u_input.a, arg_1.e.a.b), true, vec2<bool>(false, arg_1.b.e.x)), u_input.c.x, 2147483647i, 63254u, vec4<u32>(4294967295u, 70378u, u_input.b.x, arg_1.a.a.c.x)), arg_1.b, arg_1.c, arg_1.d, arg_1.e)), -1i, 6891i | global1[_wgslsmith_index_u32(var_0, 16u)], 15409u, vec4<u32>(0u, 0u, arg_1.b.b, 26593u)))).a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(552f, arg_0), _wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(854f * var_1.x))));
    return Struct_4(Struct_3(Struct_2(func_2(), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(9760u, 16u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), u_input.c), vec3<i32>(arg_1.a.c, 0i, 2147483647i) ^ u_input.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0, 32u)], 0i, 0i, global0[_wgslsmith_index_u32(arg_1.a.e.x, 32u)]), vec4<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(6314u, 16u)], global1[_wgslsmith_index_u32(2999u, 16u)])), (33436u | u_input.a) ^ 0u, arg_1.a.e), arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.c - _wgslsmith_f_op_vec4_f32(min(arg_1.c, arg_1.c)))), !arg_1.a.a.d || true, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-741f, 571f, arg_0), arg_1.a.a.a)), firstTrailingBit(arg_1.b.b), arg_1.b.c << (arg_1.b.c % vec2<u32>(32u)), !arg_1.b.e.x, arg_1.b.e), global0[_wgslsmith_index_u32(44272u >> (arg_1.e.d % 32u), 32u)] | reverseBits(global0[_wgslsmith_index_u32(1u, 32u)]), i32(-1i) * -2147483647i, 7888u, vec4<u32>(~4294967295u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.a.c.x, arg_1.a.d), arg_1.a.a.c), max(25116u, 28363u)))), any(arg_1.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(309f * 1000f), Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(258f, -1651f, 984f), u_input.b.x, vec2<u32>(0u, 1u), true, vec2<bool>(false, true)), -38617i, 0i, u_input.a, vec4<u32>(u_input.d, 1u, u_input.b.x, u_input.d)), Struct_1(vec3<f32>(169f, 1743f, -572f), 14037u, u_input.b.xz, true, vec2<bool>(true, false)), vec4<f32>(-978f, 540f, 1849f, -1436f), false, Struct_2(Struct_1(vec3<f32>(-953f, -223f, -1288f), 12621u, u_input.b.zz, true, vec2<bool>(false, false)), 32707i, 35252i, 10800u, vec4<u32>(u_input.d, 22786u, 4294967295u, 53082u)))), global1[_wgslsmith_index_u32(46220u, 16u)], ~global1[_wgslsmith_index_u32(~101464u, 16u)], u_input.b.x, vec4<u32>(u_input.d, ~u_input.b.x, _wgslsmith_clamp_u32(16559u, u_input.d, u_input.d), u_input.b.x)), func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-593f, 823f, -463f), 0u, vec2<u32>(20425u, 33650u), true, vec2<bool>(false, true)), -2147483647i, 2147483647i, u_input.b.x, vec4<u32>(97286u, 73023u, 48112u, u_input.d)), Struct_1(vec3<f32>(1031f, 477f, -1000f), 0u, vec2<u32>(25398u, u_input.b.x), true, vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-100f, 1000f, 2047f, -350f) - vec4<f32>(1429f, 1534f, 809f, -310f)), true, Struct_2(Struct_1(vec3<f32>(-137f, 824f, 1260f), 45041u, u_input.b.yy, false, vec2<bool>(false, true)), global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 1i, u_input.b.x, vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 0u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(633f, 668f, func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-789f, 948f, 993f), u_input.b.x, u_input.b.zy, true, vec2<bool>(true, true)), 0i, 1i, u_input.a, vec4<u32>(13517u, u_input.b.x, u_input.b.x, 0u)), Struct_1(vec3<f32>(721f, -1224f, 1315f), u_input.a, u_input.b.zy, false, vec2<bool>(false, true)), vec4<f32>(-1487f, -338f, -347f, -2271f), false, Struct_2(Struct_1(vec3<f32>(-390f, 688f, -1474f), u_input.b.x, u_input.b.yz, true, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], 1u, vec4<u32>(u_input.d, u_input.a, 37939u, 97379u)))).a.x, func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-1355f, 1000f, -118f), u_input.d, u_input.b.xx, false, vec2<bool>(true, true)), -27632i, global1[_wgslsmith_index_u32(2516u, 16u)], 0u, vec4<u32>(21728u, u_input.d, u_input.d, 4294967295u)), Struct_1(vec3<f32>(-1779f, 1028f, -533f), u_input.b.x, u_input.b.zx, true, vec2<bool>(true, true)), vec4<f32>(-706f, 543f, -1404f, -272f), false, Struct_2(Struct_1(vec3<f32>(501f, 207f, -643f), 70463u, u_input.b.zx, false, vec2<bool>(false, true)), global0[_wgslsmith_index_u32(u_input.d, 32u)], u_input.c.x, 4294967295u, vec4<u32>(u_input.d, u_input.b.x, u_input.d, 0u)))).a.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2392f, 300f, 1000f, -852f)))), (true && (u_input.b.x > 48462u)) || true, Struct_2(func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(-429f, 1466f, 1647f), 1u, u_input.b.yz, false, vec2<bool>(true, true)), -2147483647i, 43080i, u_input.b.x, vec4<u32>(u_input.a, 18930u, u_input.a, 44080u)), Struct_1(vec3<f32>(154f, -667f, -1246f), u_input.a, vec2<u32>(0u, 22922u), false, vec2<bool>(false, true)), vec4<f32>(505f, 2441f, -1421f, 681f), false, Struct_2(Struct_1(vec3<f32>(-178f, 1000f, 1000f), 4294967295u, u_input.b.yy, true, vec2<bool>(false, true)), global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], 0u, vec4<u32>(u_input.a, 59666u, 1381u, u_input.d)))), -33968i, u_input.c.x, ~u_input.a, select(abs(vec4<u32>(38579u, u_input.b.x, u_input.d, 0u)), ~vec4<u32>(u_input.b.x, u_input.a, u_input.a, 4294967295u), vec4<bool>(true, true, true, true)))));
    var var_1 = select(vec3<bool>(var_0.b, true, !(!(var_0.a.a.a.a.x == var_0.a.e.a.a.x))), select(!vec3<bool>(false, all(vec4<bool>(false, var_0.b, var_0.a.e.a.d, false)), func_2().d), vec3<bool>(true || var_0.a.e.a.e.x, !(var_0.b | false), var_0.b), func_1(func_4(-848f, var_0.a).a).d), !(!select(vec3<bool>(false, var_0.b, var_0.b), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.a.a.a.d, false), var_0.a.b.e.x), vec3<bool>(true, var_0.a.e.a.e.x, var_0.a.d))));
    var_0 = func_4(-754f, func_4(_wgslsmith_f_op_f32(-1305f * var_0.a.b.a.x), Struct_3(Struct_2(func_1(var_0.a), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]), 0i, _wgslsmith_mult_u32(63991u, var_0.a.b.b), ~vec4<u32>(var_0.a.a.e.x, 66013u, var_0.a.a.e.x, u_input.d)), var_0.a.e.a, var_0.a.c, var_0.a.a.a.e.x, Struct_2(var_0.a.a.a, _wgslsmith_mult_i32(-11304i, 0i), 2147483647i, var_0.a.b.c.x, var_0.a.e.e))).a);
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.a.a.x) - var_0.a.e.a.a.x), -u_input.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.a.x) + _wgslsmith_f_op_f32(var_0.a.e.a.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-121f, -342f))))), var_0.a.c.x));
}

