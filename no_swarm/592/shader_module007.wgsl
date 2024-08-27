struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(0u, Struct_1(vec4<i32>(-11858i, -18503i, 20625i, -1i)), vec4<u32>(7026u, 41129u, 37606u, 36050u)), Struct_4(4294967295u, Struct_1(vec4<i32>(2147483647i, -1i, -19382i, 2147483647i)), vec4<u32>(13649u, 0u, 0u, 1u)), Struct_4(26565u, Struct_1(vec4<i32>(2147483647i, 0i, 61602i, 1i)), vec4<u32>(8011u, 47200u, 0u, 4294967295u)), Struct_4(1u, Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, 47837i)), vec4<u32>(1u, 0u, 4294967295u, 144359u)));

var<private> global1: i32 = 26037i;

var<private> global2: u32;

var<private> global3: array<Struct_4, 7>;

var<private> global4: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(arg_0.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(20015u, 30890u, 39520u), vec3<u32>(arg_0.a.b, arg_0.a.b, arg_2.b)), 4294967295u, 4294967295u), ~vec4<u32>(arg_2.b, arg_2.a.b, 0u, 18056u), vec4<u32>(_wgslsmith_add_u32(60881u, 18661u), countOneBits(70649u), _wgslsmith_add_u32(arg_2.b, arg_0.a.b), countOneBits(arg_0.b))), vec4<u32>(~arg_2.a.b, arg_2.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(34250u, arg_2.a.b)), ~(arg_0.b << (arg_2.b % 32u)), 4294967295u)), firstLeadingBit(vec4<u32>(~(~15873u), countOneBits(~arg_0.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.b, arg_0.b, arg_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 96660u, arg_0.a.b), vec3<u32>(5403u, 0u, arg_2.b), vec3<u32>(arg_0.a.b, arg_2.b, 45416u))), arg_0.b)));
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    global3 = array<Struct_4, 7>();
    let var_1 = Struct_3(Struct_2(Struct_1(select(~u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 44564i, u_input.b), var_0 || true)), func_3(Struct_3(Struct_2(Struct_1(vec4<i32>(-74415i, -2147483647i, u_input.b, u_input.a.x)), 1u, u_input.a, vec4<f32>(361f, -460f, -2261f, 544f)), firstLeadingBit(6227u)), _wgslsmith_f_op_f32(-1010f + _wgslsmith_f_op_f32(f32(-1f) * -1708f)), Struct_3(Struct_2(Struct_1(u_input.a), 0u, u_input.a, vec4<f32>(935f, -159f, 773f, 560f)), _wgslsmith_div_u32(1u, 9320u)), u_input.a.ywx), u_input.a, vec4<f32>(1f, 1f, 1f, 1f)), min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(14019u, 91522u), ~0u, func_3(Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 22457i)), 17336u, u_input.a, vec4<f32>(-442f, -662f, -598f, 331f)), 4294967295u), 480f, Struct_3(Struct_2(Struct_1(u_input.a), 1u, u_input.a, vec4<f32>(-1347f, -604f, -1307f, -1691f)), 4294967295u), u_input.a.xzw)), ~vec3<u32>(4294967295u, 0u, 4294967295u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(78509u, 0u, 0u), vec3<u32>(37519u, 106334u, 1u), vec3<u32>(49187u, 4294967295u, 0u)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(1029f + -1621f), var_1.a.d.x, 114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.d.x, -771f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(363f, var_1.a.d.x))))));
    let var_3 = global0[_wgslsmith_index_u32(~(1u & (abs(var_1.a.b) >> (~(~var_1.b) % 32u))), 4u)];
    return Struct_3(var_1.a, var_1.b ^ ~var_1.a.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = func_2().a.a;
    let var_1 = Struct_3(func_2().a, arg_0.x);
    let var_2 = var_0.a.x;
    var var_3 = func_2();
    global1 = var_1.a.a.a.x;
    return -1058f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = ~func_3(Struct_3(func_2().a, 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-232f + _wgslsmith_f_op_f32(min(229f, 327f))))), func_2(), -_wgslsmith_mod_vec3_i32(-vec3<i32>(-3941i, u_input.b, u_input.b), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    global0 = array<Struct_4, 4>();
    let var_1 = reverseBits(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)) & ~reverseBits(~vec3<u32>(3616u, 70663u, 0u)));
    var var_2 = var_1.x;
    global3 = array<Struct_4, 7>();
    return global0[_wgslsmith_index_u32(select(func_2().b << (~4294967295u % 32u), firstLeadingBit(_wgslsmith_mod_u32(countOneBits(var_1.x), var_1.x)), any(vec3<bool>(false, select(false, true, true), true)) && (-2147483647i <= u_input.b)), 4u)];
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1156f - -131f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -612f)))), _wgslsmith_f_op_f32(func_4(vec3<u32>(min(11129u, 15531u), ~4294967295u, ~11077u), func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(119f, 1932f)))) + 779f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f - -1390f) + _wgslsmith_f_op_f32(sign(1000f))), -1827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(100f))))));
    global1 = abs(_wgslsmith_div_i32(~_wgslsmith_mult_i32(var_0.b.a.x, 34146i), countOneBits(~u_input.a.x))) << (~((var_0.a << (1u % 32u)) << (countOneBits(~var_0.a) % 32u)) % 32u);
    var var_1 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 0u, var_0.c.x)) << (~abs(~var_0.c.xwx) % vec3<u32>(32u)), var_0.c.xwx, vec3<u32>(var_0.c.x, _wgslsmith_sub_u32(0u, var_0.c.x), var_0.c.x));
    var_0 = func_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1098f), _wgslsmith_f_op_f32(func_4(~vec3<u32>(48964u, 56173u, 27939u), func_2())), 1152f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-840f)), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, 1000f, 1124f, 1222f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, -1164f, 578f, -458f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(608f, 577f, -242f, -1508f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, 507f, _wgslsmith_f_op_f32(ceil(-174f)), _wgslsmith_f_op_f32(-439f + 525f)))));
    var_1 = var_0.c.ywx;
    return func_2().a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = func_1().d.x;
    global2 = firstLeadingBit(17612u);
    var var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(floor(-112f)), _wgslsmith_f_op_f32(round(-524f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d.x, _wgslsmith_f_op_f32(-623f - arg_0.a.d.x)) * _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_u32(arg_1.c.wzz, arg_3.zyz), func_2()))), _wgslsmith_div_f32(1552f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(703f))))), arg_0.a.d).b;
    let var_2 = any(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), !(4294967295u >= arg_3.x)));
    var var_3 = Struct_2(arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 3801u, func_1().b), ~(~arg_3.xzw | min(vec3<u32>(arg_1.c.x, 4523u, 0u), arg_1.c.wzw))), arg_1.b.a | vec4<i32>(-(u_input.a.x ^ arg_0.a.a.a.x), ~(-u_input.b), max(~(-63548i), 2147483647i), max(10739i, _wgslsmith_sub_i32(-2147483647i, -2147483647i))), arg_0.a.d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 7>();
    let var_0 = func_6(Struct_3(func_1(), _wgslsmith_div_u32(0u, func_1().b) | 84510u), Struct_4(~13514u, Struct_1(-vec4<i32>(-2147483647i, u_input.a.x, u_input.b, u_input.b)), (~vec4<u32>(70824u, 1u, 14182u, 1u) << (select(vec4<u32>(93811u, 5856u, 0u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 12029u), vec4<bool>(false, true, true, false)) % vec4<u32>(32u))) | vec4<u32>(~32336u, 99605u, 1u, ~18782u)), ~(~1u), ~(~vec4<u32>(1u, _wgslsmith_add_u32(33550u, 25663u), abs(34185u), _wgslsmith_mult_u32(16207u, 36883u))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(~0i, var_0.a.a.a.x), ~u_input.b, ~func_6(func_6(var_0, func_5(vec4<f32>(var_0.a.d.x, 509f, var_0.a.d.x, 1000f), vec4<f32>(-1642f, -1106f, -1019f, -210f)), ~19337u, ~vec4<u32>(var_0.a.b, var_0.a.b, 21112u, var_0.a.b)), Struct_4(~32192u, Struct_1(vec4<i32>(u_input.a.x, var_0.a.a.a.x, var_0.a.c.x, -1i)), vec4<u32>(var_0.b, var_0.a.b, var_0.a.b, var_0.a.b) | vec4<u32>(4294967295u, var_0.a.b, var_0.b, 1u)), 1u, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(72171u, var_0.b, var_0.b, 13985u), vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b)), max(vec4<u32>(var_0.b, 9186u, var_0.a.b, var_0.a.b), vec4<u32>(4294967295u, 4294967295u, 5198u, 86221u)))).a.a.a.x, var_0.a.c.x);
    global4 = 275f < var_0.a.d.x;
    global0 = array<Struct_4, 4>();
    let var_2 = var_1;
    global1 = func_1().c.x;
    global0 = array<Struct_4, 4>();
    let var_3 = global0[_wgslsmith_index_u32(func_6(Struct_3(func_6(func_6(func_6(var_0, global0[_wgslsmith_index_u32(var_0.b, 4u)], 1u, vec4<u32>(38094u, var_0.a.b, var_0.b, 4294967295u)), func_5(var_0.a.d, var_0.a.d), func_2().b, ~vec4<u32>(var_0.a.b, 1u, var_0.b, var_0.a.b)), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, 1000f)), func_6(var_0, Struct_4(1u, Struct_1(var_1), vec4<u32>(var_0.a.b, var_0.b, 4294967295u, 1u)), var_0.a.b, vec4<u32>(var_0.a.b, var_0.a.b, var_0.b, var_0.b)).a.d), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_0.a.b, 7286u), vec4<u32>(var_0.a.b, var_0.b, var_0.b, 5490u), vec4<u32>(var_0.b, 41589u, 23878u, var_0.b)), _wgslsmith_add_vec4_u32(vec4<u32>(9857u, var_0.a.b, 0u, 4294967295u), vec4<u32>(57623u, var_0.a.b, 48645u, 1u))), reverseBits(vec4<u32>(var_0.a.b, var_0.b, var_0.b, var_0.a.b)) | vec4<u32>(1u, var_0.b, 0u, var_0.a.b)).a, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33482u, var_0.a.b, var_0.b), vec3<u32>(51924u, 83117u, 19578u)), _wgslsmith_div_u32(36867u, 19709u), ~var_0.a.b)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.a.b), 4u)], ~(var_0.a.b | _wgslsmith_clamp_u32(var_0.b, var_0.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(26862u, 70757u, var_0.a.b), vec3<u32>(0u, 30050u, 9984u)))), ~vec4<u32>(var_0.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b, var_0.b), firstTrailingBit(var_0.a.b)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(149655u, var_0.a.b, var_0.b, var_0.a.b), vec4<u32>(var_0.b, var_0.a.b, var_0.a.b, var_0.b)), vec4<u32>(61774u, 1u, 6210u, 4294967295u)), abs(var_0.b))).b, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec2_u32(var_3.c.yw, reverseBits(vec2<u32>(var_3.c.x, var_3.c.x))), var_3.c.xw), vec2<i32>(var_0.a.c.x, _wgslsmith_mod_i32(~(var_0.a.c.x ^ var_0.a.c.x), var_3.b.a.x)), ~func_1().c, _wgslsmith_div_vec2_f32(var_0.a.d.zx, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.d.x, var_0.a.d.x), _wgslsmith_f_op_f32(var_0.a.d.x - var_0.a.d.x))))), vec4<i32>(_wgslsmith_div_i32(var_2.x, 36188i), -30533i, -1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.a.x, 2147483647i, 15806i, var_3.b.a.x), var_3.b.a) << (var_0.a.b % 32u)));
}

