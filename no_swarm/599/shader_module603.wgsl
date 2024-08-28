struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), 63054i, -35704i), vec3<f32>(-2127f, 312f, -2015f), -77i), vec4<u32>(9522u, 53353u, 82936u, 37829u), Struct_2(vec3<f32>(1192f, -1587f, -1873f), Struct_1(-1i, vec3<i32>(0i, 0i, 47292i), vec3<f32>(-946f, -1095f, -430f), 3498i), vec4<u32>(29757u, 20358u, 47785u, 0u)));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_4;

var<private> global3: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(32841u, -37518i, true, Struct_1(2147483647i, vec3<i32>(0i, 41742i, 0i), vec3<f32>(315f, 286f, 482f), 1i)), Struct_5(49725u, 7347i, false, Struct_1(52884i, vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<f32>(-1428f, -653f, -1132f), 1i)), Struct_5(19569u, 33258i, false, Struct_1(2445i, vec3<i32>(36731i, 14568i, 1i), vec3<f32>(-1240f, 661f, 595f), i32(-2147483648))), Struct_5(30813u, -21516i, true, Struct_1(-1i, vec3<i32>(30144i, -24387i, -9236i), vec3<f32>(2272f, -1797f, -1591f), i32(-2147483648))), Struct_5(44312u, 35008i, false, Struct_1(-24120i, vec3<i32>(0i, 0i, 2474i), vec3<f32>(1536f, -326f, 1162f), 0i)), Struct_5(0u, 52204i, false, Struct_1(4274i, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<f32>(1168f, -1606f, 666f), i32(-2147483648))), Struct_5(997u, 2147483647i, true, Struct_1(-12755i, vec3<i32>(1i, -11981i, 1i), vec3<f32>(382f, 1156f, -374f), 41566i)), Struct_5(7865u, -1i, false, Struct_1(-1i, vec3<i32>(14163i, -45456i, 1168i), vec3<f32>(-470f, -510f, -642f), 9956i)), Struct_5(36128u, -10883i, false, Struct_1(-9612i, vec3<i32>(5950i, 0i, -1i), vec3<f32>(-137f, -740f, -1000f), 2147483647i)), Struct_5(15250u, -822i, false, Struct_1(0i, vec3<i32>(0i, 1i, 57909i), vec3<f32>(1313f, 1206f, -438f), -1i)), Struct_5(27455u, 0i, true, Struct_1(-31268i, vec3<i32>(-28117i, 2147483647i, -10449i), vec3<f32>(926f, -126f, 2301f), -12912i)), Struct_5(4294967295u, -1i, false, Struct_1(-18746i, vec3<i32>(-1i, -22958i, 29310i), vec3<f32>(1000f, -1000f, 833f), 10715i)), Struct_5(1u, 1i, false, Struct_1(-12626i, vec3<i32>(-25791i, i32(-2147483648), 0i), vec3<f32>(1847f, 199f, 184f), -9636i)));

var<private> global4: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<f32>(1834f, -311f, 658f), Struct_1(-53353i, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<f32>(-1728f, 1175f, 1000f), 0i), vec4<u32>(0u, 4294967295u, 7024u, 0u)), Struct_2(vec3<f32>(-422f, 1005f, 1514f), Struct_1(-8011i, vec3<i32>(-1i, -1i, -12839i), vec3<f32>(242f, -525f, 535f), -1i), vec4<u32>(0u, 10649u, 4790u, 19262u)), Struct_2(vec3<f32>(220f, 979f, 1590f), Struct_1(-6609i, vec3<i32>(-1i, 0i, -1i), vec3<f32>(-1865f, -125f, -976f), 27108i), vec4<u32>(73287u, 77279u, 4294967295u, 27897u)), Struct_2(vec3<f32>(687f, 560f, -909f), Struct_1(-73003i, vec3<i32>(29235i, 2147483647i, i32(-2147483648)), vec3<f32>(-139f, -299f, 1479f), 14016i), vec4<u32>(4294967295u, 17029u, 51956u, 4294967295u)), Struct_2(vec3<f32>(-302f, -580f, 101f), Struct_1(37800i, vec3<i32>(2147483647i, 1i, 1i), vec3<f32>(-1828f, -186f, -1500f), 2147483647i), vec4<u32>(4294967295u, 1282u, 0u, 28598u)), Struct_2(vec3<f32>(-1017f, -2274f, -820f), Struct_1(2147483647i, vec3<i32>(51169i, -26801i, 0i), vec3<f32>(-138f, 294f, -113f), 36171i), vec4<u32>(60604u, 0u, 1u, 82417u)), Struct_2(vec3<f32>(618f, -556f, -295f), Struct_1(0i, vec3<i32>(-11504i, -1i, 0i), vec3<f32>(-1323f, 915f, -1000f), 0i), vec4<u32>(11146u, 0u, 32111u, 1u)), Struct_2(vec3<f32>(-512f, 289f, 541f), Struct_1(-13526i, vec3<i32>(-14880i, 1i, 43751i), vec3<f32>(858f, 655f, -285f), 1i), vec4<u32>(75269u, 28306u, 1u, 0u)), Struct_2(vec3<f32>(-1683f, -1294f, -846f), Struct_1(33755i, vec3<i32>(-47407i, i32(-2147483648), -1845i), vec3<f32>(904f, 232f, -617f), i32(-2147483648)), vec4<u32>(26622u, 0u, 4294967295u, 14348u)), Struct_2(vec3<f32>(1000f, -765f, 324f), Struct_1(-36389i, vec3<i32>(-339i, 22265i, 15790i), vec3<f32>(383f, 518f, 1554f), 0i), vec4<u32>(4294967295u, 4294967295u, 1u, 3814u)), Struct_2(vec3<f32>(1986f, 1550f, 186f), Struct_1(-2005i, vec3<i32>(i32(-2147483648), 27289i, 1i), vec3<f32>(-1277f, 1648f, 741f), 1i), vec4<u32>(5854u, 33622u, 62428u, 9840u)), Struct_2(vec3<f32>(-1193f, 2547f, 536f), Struct_1(-13955i, vec3<i32>(-1i, 655i, 35537i), vec3<f32>(733f, 100f, 1929f), -1i), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = vec3<bool>(false || any(vec4<bool>(false, global1.x, true, 350f < global0.c.b.c.x)), all(!vec2<bool>(true, global1.x & true)), true);
    let var_1 = arg_0;
    global4 = array<Struct_2, 12>();
    var var_2 = 0u;
    let var_3 = u_input.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -1487f);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.c.x, -235f, _wgslsmith_f_op_f32(trunc(-366f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1218f, _wgslsmith_f_op_f32(1296f - 1515f), _wgslsmith_f_op_f32(func_3(global0.a, global0.a.b)))))));
    let var_1 = Struct_5(global0.b.x, 28767i, global1.x, global2.b);
    global2 = Struct_4(vec3<i32>(~(_wgslsmith_div_i32(-7787i, global2.e) & var_1.d.b.x), -23458i, global2.e), global0.a, reverseBits(global0.c.c.zyw), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(global2.d.x, global2.c.x, 1u), vec3<u32>(_wgslsmith_mult_u32(0u, global0.b.x), ~var_1.a, var_1.a << (4294967295u % 32u)), !vec3<bool>(false, false, var_1.c)), abs(vec3<u32>(global2.c.x ^ 0u, 1u, ~var_1.a))), -var_1.d.d);
    let var_2 = 69565i;
    let var_3 = Struct_2(var_1.d.c, Struct_1(-26498i, -global2.a, _wgslsmith_f_op_vec3_f32(global0.c.b.c * vec3<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(-var_0.x), global0.c.a.x)), -_wgslsmith_mult_i32(-37217i & var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.b.b.x, var_1.d.b.x, -2147483647i), global2.a))), _wgslsmith_sub_vec4_u32(~global0.b, ~vec4<u32>(reverseBits(u_input.b.x), 0u, ~2586u, ~var_1.a)));
    return select(!(!vec4<bool>(false, var_1.c, true, -33178i > global2.a.x)), select(vec4<bool>(all(!global1.yy), true, (var_1.a <= var_3.c.x) & (var_3.a.x == -991f), false), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true != global1.x), !(_wgslsmith_f_op_f32(f32(-1f) * -560f) <= var_1.d.c.x)), !vec4<bool>(any(vec2<bool>(false, var_1.c)), true, any(select(vec3<bool>(global1.x, false, var_1.c), vec3<bool>(true, var_1.c, true), true)), var_1.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global3 = array<Struct_5, 13>();
    let var_0 = Struct_4(min(abs(~(~arg_0.b.b)), min(~min(vec3<i32>(-39466i, arg_0.b.d, -1i), global0.c.b.b), -arg_0.b.b)), global0.a, _wgslsmith_add_vec3_u32(global2.c, vec3<u32>(_wgslsmith_sub_u32(~4294967295u, max(0u, arg_0.c.x)), abs(global2.d.x | u_input.c.x), 4294967295u)), arg_0.c.xzz, -global0.a.d);
    global1 = select(func_2().yxw, arg_1.zzw, !(~1u <= var_0.d.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(global2.b.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.c.x, global0.c.b.c.x, var_0.b.c.x)))))), global0.c.b, select(~arg_0.c, ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, 24383u, 24441u, 1u), ~global0.b), arg_1.x & any(arg_1.yx)));
    global0 = Struct_3(var_1.b, global0.c.c, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c.x, 533f, global0.c.a.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(331f, -633f, -889f) - vec3<f32>(global2.b.c.x, var_0.b.c.x, -1810f))), vec3<f32>(_wgslsmith_f_op_f32(global0.a.c.x + 566f), 790f, _wgslsmith_f_op_f32(round(-582f)))), var_1.b, ~(~global0.c.c << (reverseBits(arg_0.c) % vec4<u32>(32u)))));
    return global2.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = func_4(global4[_wgslsmith_index_u32(31980u, 12u)], select(select(func_2(), func_2(), vec4<bool>(global2.d.x <= 68836u, global1.x & global1.x, true, true)), vec4<bool>(_wgslsmith_mod_u32(u_input.b.x, arg_2.b.x) >= 23778u, global1.x, false, true), !(36755u <= _wgslsmith_mod_u32(global2.c.x, 1u))));
    let var_1 = vec2<u32>(~global0.b.x ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.x, global0.b.x), u_input.b.zz), global0.c.c.x) & arg_2.c.c.yy;
    global4 = array<Struct_2, 12>();
    let var_2 = max(_wgslsmith_add_vec4_i32(-select(vec4<i32>(var_0.b.x, -50767i, arg_1.x, global0.a.a), vec4<i32>(global2.b.d, 13788i, global2.e, 0i), global1.x) << (~min(global0.b, global0.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-arg_1, arg_1) & arg_1), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, arg_1.x, ~20803i | select(global2.a.x, -2147483647i, false)), _wgslsmith_mult_i32(1i, 0i), _wgslsmith_mult_i32(arg_1.x, u_input.a), select(firstTrailingBit(_wgslsmith_mod_i32(u_input.a, arg_2.a.b.x)), 1i, false)));
    let var_3 = true;
    return _wgslsmith_f_op_f32(func_3(arg_2.a, global2.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.e;
    var var_1 = vec4<i32>(~((-global2.a.x ^ global2.e) | (i32(-1i) * -2147483647i)), 20053i, global2.b.d, ~global0.a.d);
    global1 = vec3<bool>(true, !(!(_wgslsmith_f_op_f32(round(global2.b.c.x)) < _wgslsmith_f_op_f32(func_1(vec2<f32>(global0.a.c.x, global0.a.c.x), vec4<i32>(global2.a.x, 0i, 13024i, -2147483647i), Struct_3(global2.b, vec4<u32>(58029u, 4294967295u, 9564u, global0.c.c.x), global0.c))))), true);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global0.c.a)), Struct_1(global0.a.a, vec3<i32>(select(u_input.e, u_input.d, true), -abs(global2.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.c.b.b.x, 1i), global2.b.b)), vec3<f32>(-563f, global2.b.c.x, 750f), ~(u_input.a ^ -29916i)), ~vec4<u32>(1u, _wgslsmith_mod_u32(firstLeadingBit(51920u), global0.b.x << (u_input.b.x % 32u)), 41305u, countOneBits(61807u)));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, reverseBits(1u), 61109u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(global0.c, vec4<bool>(var_2.c.x != 0u, false, func_2().x, true)).b.x, ~(_wgslsmith_sub_vec4_u32(var_2.c, u_input.b) | ~u_input.b) << ((vec4<u32>(26163u, global2.c.x, 25259u, 79229u) >> (countOneBits(vec4<u32>(4294967295u, global2.d.x, global0.c.c.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.c.x, ~global0.c.b.d);
}

