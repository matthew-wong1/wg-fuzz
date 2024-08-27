struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 34383u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(81809u, 75226u, 4294967295u), vec3<u32>(1u, 55500u, 0u), vec3<u32>(4294967295u, 19920u, 0u), vec3<u32>(454u, 34760u, 29180u), vec3<u32>(32632u, 736u, 32524u), vec3<u32>(16788u, 4294967295u, 138016u), vec3<u32>(33613u, 62661u, 30650u), vec3<u32>(38214u, 1u, 17027u), vec3<u32>(4294967295u, 9643u, 39196u), vec3<u32>(36740u, 1u, 1u), vec3<u32>(24444u, 35315u, 39197u), vec3<u32>(62014u, 36649u, 1u), vec3<u32>(12774u, 4294967295u, 32922u), vec3<u32>(62301u, 61037u, 1u), vec3<u32>(0u, 0u, 37054u), vec3<u32>(4294967295u, 18586u, 63243u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(32004u, 1u, 5668u), vec3<u32>(39819u, 6073u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(53133u, 4294967295u, 0u), vec3<u32>(41092u, 4294967295u, 28541u), vec3<u32>(5218u, 25216u, 32624u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 57487u, 1u), vec3<u32>(18101u, 1u, 0u), vec3<u32>(1u, 10191u, 1u), vec3<u32>(1u, 20326u, 0u), vec3<u32>(7271u, 4294967295u, 33724u));

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-1671f, vec3<f32>(-995f, -337f, 602f), vec2<i32>(-40581i, -45305i)), Struct_1(592f, vec3<f32>(1090f, -654f, -612f), vec2<i32>(0i, 1i)), Struct_1(-1675f, vec3<f32>(1842f, 1051f, -1000f), vec2<i32>(2147483647i, -1i)), Struct_1(-279f, vec3<f32>(-710f, -117f, 749f), vec2<i32>(2147483647i, 0i)), Struct_1(192f, vec3<f32>(1790f, -507f, 125f), vec2<i32>(-40797i, 2147483647i)));

var<private> global3: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-491f, 215f, 166f, -1944f), vec4<f32>(-345f, -2192f, -1604f, 232f), vec4<f32>(2392f, 675f, 1401f, 401f), vec4<f32>(-1029f, -696f, 2056f, 535f), vec4<f32>(-1000f, -863f, 120f, 2260f), vec4<f32>(1000f, 1000f, -1002f, 556f), vec4<f32>(-304f, -1000f, -1478f, -554f), vec4<f32>(1694f, 2330f, 1000f, -1000f), vec4<f32>(-1487f, 1653f, 1818f, 1688f), vec4<f32>(292f, 402f, -196f, 469f), vec4<f32>(-621f, -817f, -800f, -594f), vec4<f32>(1021f, 995f, -2571f, -1000f), vec4<f32>(-778f, -639f, 1105f, -895f), vec4<f32>(1020f, -1000f, 1812f, 1594f), vec4<f32>(-1029f, -203f, -690f, 296f), vec4<f32>(-530f, -1492f, 262f, -950f), vec4<f32>(-1181f, 201f, -231f, -2221f), vec4<f32>(1000f, 1106f, -1255f, -1272f), vec4<f32>(-338f, 1405f, -427f, -307f), vec4<f32>(918f, 2342f, -685f, -255f));

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 5>();
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(793f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.x * global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), _wgslsmith_div_f32(-762f, global4.x)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.x, global4.x, global4.x, 1504f), global3[_wgslsmith_index_u32(33754u, 20u)])), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(15213u, 20u)] * vec4<f32>(415f, 1711f, global4.x, -432f))))), vec4<f32>(global4.x, global4.x, -1494f, global4.x))));
    let var_0 = global2[_wgslsmith_index_u32(22272u, 5u)];
    global0 = array<vec3<u32>, 32>();
    global2 = array<Struct_1, 5>();
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~max(max(vec2<u32>(6940u, u_input.b), vec2<u32>(1u, 31249u)), abs(vec2<u32>(u_input.a, u_input.b))), countOneBits(~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, 25451u)))), 5u)];
}

fn func_3() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-830f, _wgslsmith_f_op_f32(f32(-1f) * -215f), false)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 106f, global4.x))))), abs(~(~vec2<i32>(u_input.c, -36506i)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), global2[_wgslsmith_index_u32(~(37866u << (_wgslsmith_mult_u32(4294967295u, u_input.b) % 32u)), 5u)], func_2(), Struct_1(_wgslsmith_f_op_f32(sign(205f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.x, 244f, 1011f), vec3<f32>(global4.x, global4.x, -425f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(698f, global4.x, global4.x) - vec3<f32>(global4.x, -1610f, 1730f)))), vec2<i32>(~1i, countOneBits(u_input.c))));
    let var_1 = func_2();
    let var_2 = Struct_3(var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(~(~0u), min(min(0u, u_input.a), 1u | u_input.a), ~(~0u), 3111u), _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(11844u, u_input.b, 58664u, 4294967295u)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.b), vec4<u32>(39070u, 0u, 707u, u_input.b)), ~vec4<u32>(u_input.b, u_input.a, 1u, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d.b.x)) * global4.x) + var_0.d.a) - global4.x), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 21937u), ~vec3<u32>(54071u, u_input.a, u_input.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 45065u), vec3<u32>(u_input.a, 4294967295u, 945u)), _wgslsmith_div_vec3_u32(vec3<u32>(3179u, u_input.a, u_input.a), vec3<u32>(u_input.b, 0u, 1u))));
    let var_3 = !select(vec3<bool>(true, var_2.a.b, any(!vec3<bool>(true, true, var_2.a.b))), vec3<bool>(var_0.b, true, var_2.a.b == true), true);
    let var_4 = (i32(-1i) * -reverseBits(_wgslsmith_clamp_i32(var_2.a.d.c.x, u_input.c, 0i))) << (~_wgslsmith_dot_vec4_u32(~(~var_2.b), ~(~var_2.b)) % 32u);
    return Struct_1(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1780f)), _wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(floor(1673f))), func_2().b.x)), abs(-var_0.a.c));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(func_2(), true, func_3(), global2[_wgslsmith_index_u32(~reverseBits(u_input.b), 5u)], Struct_1(_wgslsmith_f_op_f32(-global4.x), global4.zwz, ~(-vec2<i32>(-2147483647i, 0i))));
    global4 = global3[_wgslsmith_index_u32(u_input.a, 20u)];
    var var_1 = func_2();
    let var_2 = global4.x;
    global3 = array<vec4<f32>, 20>();
    return Struct_3(var_0, vec4<u32>(42932u, ~min(~u_input.b, 63704u), ~0u, 52663u), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1086f)))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(max(u_input.b, u_input.b), max(u_input.b, u_input.b), u_input.a), select(1u, ~u_input.a, any(vec3<bool>(false, true, true)))), 32u)] | _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~u_input.a), 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec3<f32> {
    global3 = array<vec4<f32>, 20>();
    let var_0 = func_1();
    let var_1 = ~vec3<u32>(abs(~select(arg_2.b.x, var_0.d.x, arg_3)), arg_2.b.x, 0u);
    global3 = array<vec4<f32>, 20>();
    global1 = var_0.a.d.c.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1106f, var_0.c, arg_1.c) * vec3<f32>(arg_2.c, var_0.c, arg_2.c)), _wgslsmith_f_op_vec3_f32(arg_1.a.a.b + var_0.a.d.b)) - var_0.a.d.b)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3().b - func_1().a.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 20>();
    let var_0 = Struct_1(global4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.zyz, vec3<f32>(191f, 983f, 393f))), max(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c, 47149i), firstTrailingBit(vec2<i32>(-1i, -37375i))), max(vec2<i32>(u_input.c, -1i) & vec2<i32>(u_input.c, 23667i), ~vec2<i32>(u_input.c, u_input.c))) << (_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 40696u)), vec2<u32>(u_input.b, 4346u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u)));
    var var_1 = Struct_1(global4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.xzz, _wgslsmith_f_op_vec3_f32(-global4.ywy), true)))), -countOneBits(vec2<i32>(firstLeadingBit(u_input.c), var_0.c.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-713f))) + -1000f);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(u_input.a, func_1(), Struct_3(Struct_2(global2[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 5u)], func_1().a.b, Struct_1(func_3().a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, var_0.a, -1070f)), var_0.c), func_1().a.c, global2[_wgslsmith_index_u32(7242u, 5u)]), ~max(vec4<u32>(u_input.a, 4294967295u, u_input.b, 65101u) | vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(ceil(-858f)), global0[_wgslsmith_index_u32(28019u, 32u)]), true));
    var_1 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_1.a, -1410f)), var_0.b))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), 1607f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.x - global4.x))))), min(-_wgslsmith_add_vec2_i32(-vec2<i32>(var_0.c.x, 0i), vec2<i32>(u_input.c, -54600i)), _wgslsmith_clamp_vec2_i32(select(_wgslsmith_sub_vec2_i32(var_1.c, vec2<i32>(87553i, 6740i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(28965i, -20979i)), true), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, u_input.c), abs(var_0.c)), vec2<i32>(-1i, var_0.c.x))));
    var_2 = _wgslsmith_f_op_f32(265f + var_1.a);
    var var_5 = func_1().a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.b, ~_wgslsmith_sub_u32(u_input.b, u_input.a), 24264u, ~1u), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-func_2().b.x)), -abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_5.c.x, 1i, u_input.c, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(18230i, 2147483647i, var_5.c.x, 1i), vec4<i32>(2147483647i, 11809i, var_4.c.x, 1i)))), vec3<i32>(~var_4.c.x, var_4.c.x, countOneBits(~var_1.c.x)));
}

