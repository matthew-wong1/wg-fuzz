struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 631f;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(-1165f, true, Struct_1(2147483647i, vec3<f32>(-386f, 1521f, -808f))), Struct_4(320f, true, Struct_1(i32(-2147483648), vec3<f32>(108f, -257f, -158f))), Struct_4(-868f, true, Struct_1(18874i, vec3<f32>(-552f, -1982f, 537f))), Struct_4(872f, true, Struct_1(-39968i, vec3<f32>(-190f, -952f, -1000f))), Struct_4(-2235f, false, Struct_1(-51031i, vec3<f32>(-1220f, 1000f, 728f))), Struct_4(1506f, false, Struct_1(-40728i, vec3<f32>(772f, -2133f, -2132f))), Struct_4(1172f, true, Struct_1(-1i, vec3<f32>(179f, 716f, 475f))), Struct_4(-346f, true, Struct_1(2147483647i, vec3<f32>(-1172f, 1554f, -970f))));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(true, Struct_1(6470i, vec3<f32>(-2263f, 379f, 984f))), Struct_2(false, Struct_1(i32(-2147483648), vec3<f32>(888f, 190f, -1000f))), Struct_2(false, Struct_1(42660i, vec3<f32>(615f, 928f, -1000f))), Struct_2(false, Struct_1(6700i, vec3<f32>(-992f, 1000f, -771f))), Struct_2(false, Struct_1(1i, vec3<f32>(167f, 1196f, -654f))), Struct_2(false, Struct_1(11345i, vec3<f32>(-1000f, -910f, -150f))), Struct_2(false, Struct_1(21903i, vec3<f32>(-947f, 1061f, -114f))), Struct_2(true, Struct_1(0i, vec3<f32>(-2792f, 308f, -213f))), Struct_2(false, Struct_1(69002i, vec3<f32>(-310f, -156f, -1025f))), Struct_2(false, Struct_1(3685i, vec3<f32>(-335f, 698f, 1567f))), Struct_2(false, Struct_1(-8941i, vec3<f32>(-846f, -955f, -514f))), Struct_2(true, Struct_1(-1i, vec3<f32>(1216f, 492f, -491f))), Struct_2(false, Struct_1(2147483647i, vec3<f32>(-243f, -644f, -310f))), Struct_2(false, Struct_1(-19062i, vec3<f32>(-672f, -913f, 483f))), Struct_2(true, Struct_1(44887i, vec3<f32>(-659f, -335f, -261f))), Struct_2(false, Struct_1(-40670i, vec3<f32>(-973f, 888f, -175f))), Struct_2(false, Struct_1(12207i, vec3<f32>(-1000f, -465f, -2236f))), Struct_2(false, Struct_1(-1i, vec3<f32>(644f, 1147f, -548f))), Struct_2(false, Struct_1(1470i, vec3<f32>(842f, 430f, 782f))), Struct_2(false, Struct_1(0i, vec3<f32>(1112f, -1000f, 534f))), Struct_2(false, Struct_1(-10857i, vec3<f32>(1002f, -670f, -859f))));

var<private> global3: array<vec2<f32>, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(-2024f, 1156f)), arg_1, Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, arg_0), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2298f, -1854f, -109f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1195f, 1316f)))))));
    var var_1 = global3[_wgslsmith_index_u32(~(~63726u), 21u)];
    let var_2 = any(select(select(vec4<bool>(!arg_1, true, any(vec2<bool>(false, arg_1)), arg_1), !select(vec4<bool>(true, arg_1, false, var_0.b), vec4<bool>(var_0.b, var_0.b, true, arg_1), vec4<bool>(var_0.b, var_0.b, false, true)), !vec4<bool>(arg_1, arg_1, false, false)), vec4<bool>(arg_1, true, var_0.b, var_0.b), any(!select(vec2<bool>(arg_1, var_0.b), vec2<bool>(true, var_0.b), false))));
    let var_3 = Struct_3(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 13325u)) | (0u >> (u_input.a % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(47640u, 21u)] - vec2<f32>(var_1.x, 1763f)) + vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a, -1206f)), var_0.a))), var_0.c.b.zz, Struct_1(_wgslsmith_mod_i32(-arg_0, ~var_0.c.a) >> (~(~u_input.a) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c.b.x, var_1.x, 1600f))))), _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 40315u, u_input.a, 1u), ~vec4<u32>(0u, u_input.a, 62635u, 27630u), vec4<u32>(16962u, u_input.a, 22175u, u_input.a))), ~select(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 38350u), vec4<u32>(4294967295u, 46767u, u_input.a, 28591u), vec4<u32>(26958u, u_input.a, u_input.a, u_input.a)), var_0.b)));
    global0 = _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x)));
    return max(u_input.a, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 26410u, u_input.a), vec3<u32>(25311u, 4294967295u, 4294967295u)))) >> ((select(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.a, u_input.a), var_3.e.ww), ~var_3.e.xy), 23743u, var_0.b) << (~(~4294967295u) % 32u)) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(trunc(180f))))) <= -1499f);
    global1 = array<Struct_4, 8>();
    let var_1 = global3[_wgslsmith_index_u32(func_3(0i, !var_0.x), 21u)];
    global2 = array<Struct_2, 21>();
    let var_2 = ~u_input.a;
    return -select(vec2<i32>(arg_0, 1i), vec2<i32>(-reverseBits(arg_0), 1i), all(vec4<bool>(!var_0.x, true, true, !var_0.x)));
}

fn func_2() -> Struct_4 {
    global3 = array<vec2<f32>, 21>();
    var var_0 = func_4(2147483647i, select(!vec2<bool>(any(vec4<bool>(true, false, false, false)), true), !vec2<bool>(true, select(false, true, false)), true), _wgslsmith_mod_vec3_i32(vec3<i32>(3449i, 1i, ~(-18975i)) >> (vec3<u32>(func_3(15426i, false), ~1u, abs(25825u)) % vec3<u32>(32u)), vec3<i32>(0i, 1i, _wgslsmith_div_i32(abs(-35502i), 25839i))));
    global2 = array<Struct_2, 21>();
    let var_1 = vec2<bool>(true, false);
    let var_2 = 2147483647i;
    return global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.a, 57941u), u_input.a) ^ _wgslsmith_add_u32(2070u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 87237u, 1u, 0u), vec4<u32>(u_input.a, 67406u, 8381u, 1u)), u_input.a))), 8u)];
}

fn func_5(arg_0: Struct_4) -> u32 {
    global2 = array<Struct_2, 21>();
    let var_0 = firstLeadingBit(_wgslsmith_mod_i32(1i, arg_0.c.a));
    let var_1 = -2147483647i;
    let var_2 = !arg_0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b.x, arg_0.a, _wgslsmith_f_op_f32(step(arg_0.c.b.x, 1834f)), _wgslsmith_f_op_f32(f32(-1f) * -158f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, -714f, -2249f, arg_0.c.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2252f, arg_0.c.b.x, arg_0.a, arg_0.c.b.x))))), all(select(vec3<bool>(true, arg_0.b, var_2), !vec3<bool>(arg_0.b, arg_0.b, false), select(vec3<bool>(arg_0.b, false, true), vec3<bool>(false, false, true), vec3<bool>(var_2, true, false)))))));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_5(Struct_3(_wgslsmith_add_u32(func_5(func_2()), _wgslsmith_mod_u32(u_input.a, ~4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-100f, arg_1.x)))), arg_1.x), arg_1.wx, func_2().c, reverseBits(~(~vec4<u32>(u_input.a, u_input.a, 12529u, u_input.a)))), global2[_wgslsmith_index_u32(54219u, 21u)], 732f);
    let var_1 = func_2();
    var var_2 = Struct_5(Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, var_1.a)))), arg_1.xw, func_2().c, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.e.x, var_0.a.e.x, 26203u, var_0.a.e.x) << (select(var_0.a.e, vec4<u32>(1u, 25131u, u_input.a, 4294967295u), vec4<bool>(var_0.b.a, var_0.b.a, arg_0, false)) % vec4<u32>(32u)), vec4<u32>(var_0.a.a, 80235u, ~var_0.a.e.x, _wgslsmith_div_u32(var_0.a.a, 4294967295u)))), Struct_2(true, Struct_1(4346i, vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c, -489f)), var_0.b.b.b.x, var_0.a.b.x))), -472f);
    global1 = array<Struct_4, 8>();
    global2 = array<Struct_2, 21>();
    return select(select(!(!vec3<bool>(false, false, var_2.b.a)), vec3<bool>(abs(var_1.c.a) == var_1.c.a, true, !func_2().b), true), !(!select(select(vec3<bool>(var_0.b.a, true, var_1.b), vec3<bool>(true, var_1.b, var_1.b), arg_0), vec3<bool>(true, var_0.b.a, arg_0), true)), vec3<bool>(true, arg_0, false));
}

fn func_6(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = Struct_4(func_2().c.b.x, true, Struct_1(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1341f, -2111f))), _wgslsmith_f_op_f32(-789f - -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_div_f32(-144f, -863f), !arg_0.x)))));
    let var_1 = var_0.b;
    var_0 = Struct_4(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 381f)), var_0.a), any(vec4<bool>(false, arg_0.x || arg_0.x, true, all(arg_0))))), true, Struct_1(var_0.c.a, var_0.c.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c.b);
    var var_3 = 0u;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1561f, var_2.x), var_2.x, 425f, -1000f))), _wgslsmith_add_vec3_u32(min(vec3<u32>(30268u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(32449u, 44984u, u_input.a) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 44191u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a))) ^ vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.a, u_input.a)), 4145u, 0u), vec4<f32>(-513f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2284f)) - -2083f)), 3748f), firstTrailingBit(vec2<u32>(func_5(global1[_wgslsmith_index_u32(u_input.a & 21720u, 8u)]), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, 81963u, u_input.a), vec4<u32>(11840u, 4294967295u, 54518u, u_input.a)))), _wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(u_input.a, 1u), vec2<u32>(15445u, u_input.a), arg_0.yz)), vec2<u32>(121505u, max(_wgslsmith_mod_u32(u_input.a, u_input.a), ~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(!select(!func_1(true, vec4<f32>(435f, 1162f, 786f, 980f), vec3<i32>(1i, 1i, 472i)), vec3<bool>(true, true, true), true));
}

