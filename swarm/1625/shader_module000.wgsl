struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32;

var<private> global2: Struct_3;

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<i32>(2147483647i, -26822i, 2147483647i, -14403i), false, Struct_2(vec2<f32>(-1078f, -1739f), Struct_1(true, vec4<f32>(-622f, 882f, -244f, -1140f)), -1539f), vec3<f32>(2698f, 607f, -2111f)), Struct_3(vec4<i32>(29881i, 32895i, 0i, 1i), false, Struct_2(vec2<f32>(185f, 1000f), Struct_1(false, vec4<f32>(-1273f, -863f, -384f, -663f)), -330f), vec3<f32>(434f, -422f, 229f)), Struct_3(vec4<i32>(15000i, i32(-2147483648), 67113i, 2147483647i), true, Struct_2(vec2<f32>(832f, -1402f), Struct_1(false, vec4<f32>(-2798f, 1000f, -616f, -1201f)), -114f), vec3<f32>(306f, 806f, 856f)), Struct_3(vec4<i32>(-20445i, 1i, 11739i, 14194i), true, Struct_2(vec2<f32>(516f, -1008f), Struct_1(false, vec4<f32>(-392f, -1325f, 511f, -456f)), -1070f), vec3<f32>(3977f, 431f, 1000f)), Struct_3(vec4<i32>(-1i, 23333i, 1i, 30000i), true, Struct_2(vec2<f32>(-895f, -281f), Struct_1(true, vec4<f32>(-244f, -1000f, 507f, -1422f)), 480f), vec3<f32>(1323f, -239f, -1000f)), Struct_3(vec4<i32>(i32(-2147483648), -12058i, -45827i, 1i), true, Struct_2(vec2<f32>(-1689f, 775f), Struct_1(false, vec4<f32>(1826f, -1288f, -971f, -820f)), 576f), vec3<f32>(159f, -1000f, 635f)), Struct_3(vec4<i32>(29151i, 12811i, -34664i, 14248i), false, Struct_2(vec2<f32>(-742f, -483f), Struct_1(true, vec4<f32>(558f, 1018f, -901f, 850f)), -1906f), vec3<f32>(-123f, 244f, 1132f)), Struct_3(vec4<i32>(-1i, -15221i, 0i, -32466i), true, Struct_2(vec2<f32>(-1501f, 1447f), Struct_1(false, vec4<f32>(-868f, 871f, 1000f, 2037f)), 1316f), vec3<f32>(209f, -2016f, -262f)), Struct_3(vec4<i32>(i32(-2147483648), 9363i, i32(-2147483648), -1i), false, Struct_2(vec2<f32>(1222f, -1085f), Struct_1(true, vec4<f32>(-613f, 179f, 240f, 2134f)), 1324f), vec3<f32>(494f, 1489f, -266f)), Struct_3(vec4<i32>(2147483647i, -29049i, -54658i, 2184i), true, Struct_2(vec2<f32>(1475f, 885f), Struct_1(true, vec4<f32>(-609f, -660f, 212f, 795f)), -708f), vec3<f32>(-1000f, -869f, -1000f)), Struct_3(vec4<i32>(-20446i, 57898i, -1i, 1i), false, Struct_2(vec2<f32>(-1201f, -1269f), Struct_1(true, vec4<f32>(2032f, 1442f, -152f, -346f)), 945f), vec3<f32>(120f, 2392f, -1315f)), Struct_3(vec4<i32>(-1i, i32(-2147483648), 21220i, 58340i), false, Struct_2(vec2<f32>(-177f, 1712f), Struct_1(true, vec4<f32>(599f, -302f, -483f, -627f)), -1000f), vec3<f32>(179f, -1000f, -261f)), Struct_3(vec4<i32>(-31i, -1i, -17107i, 13020i), false, Struct_2(vec2<f32>(612f, -662f), Struct_1(true, vec4<f32>(765f, -2257f, -465f, 483f)), -1190f), vec3<f32>(-392f, 850f, -243f)), Struct_3(vec4<i32>(0i, -5907i, -21002i, 0i), true, Struct_2(vec2<f32>(-501f, -682f), Struct_1(false, vec4<f32>(446f, -1902f, 132f, -989f)), -496f), vec3<f32>(682f, -643f, -1262f)), Struct_3(vec4<i32>(-1i, -11760i, 33480i, -11622i), true, Struct_2(vec2<f32>(-735f, -871f), Struct_1(false, vec4<f32>(1502f, -710f, 374f, 603f)), -1000f), vec3<f32>(1449f, -1406f, 491f)), Struct_3(vec4<i32>(0i, 0i, -41515i, -10893i), true, Struct_2(vec2<f32>(864f, -477f), Struct_1(false, vec4<f32>(-151f, -428f, 135f, -291f)), -988f), vec3<f32>(408f, 1000f, 311f)), Struct_3(vec4<i32>(-54210i, i32(-2147483648), 2147483647i, 0i), true, Struct_2(vec2<f32>(1000f, 1453f), Struct_1(true, vec4<f32>(1121f, -1279f, 2255f, 265f)), 843f), vec3<f32>(994f, -955f, -670f)), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -5043i), true, Struct_2(vec2<f32>(1260f, -1000f), Struct_1(true, vec4<f32>(-288f, 922f, 1177f, -236f)), 376f), vec3<f32>(789f, 780f, 385f)), Struct_3(vec4<i32>(25239i, 20190i, 48695i, -5431i), false, Struct_2(vec2<f32>(-491f, 155f), Struct_1(false, vec4<f32>(-1365f, 1197f, -273f, -1000f)), 507f), vec3<f32>(798f, -730f, -172f)), Struct_3(vec4<i32>(17115i, -12746i, -6579i, -1i), true, Struct_2(vec2<f32>(552f, 613f), Struct_1(true, vec4<f32>(1190f, 1670f, 1292f, -1000f)), 530f), vec3<f32>(-1134f, 1614f, 377f)), Struct_3(vec4<i32>(0i, -35309i, 2147483647i, -64557i), true, Struct_2(vec2<f32>(1395f, 1000f), Struct_1(true, vec4<f32>(429f, 625f, 675f, -705f)), 260f), vec3<f32>(2497f, 1190f, -1942f)), Struct_3(vec4<i32>(-20218i, 12241i, -27380i, i32(-2147483648)), false, Struct_2(vec2<f32>(480f, 2342f), Struct_1(false, vec4<f32>(668f, 293f, -272f, 1509f)), 819f), vec3<f32>(1000f, -654f, 1833f)), Struct_3(vec4<i32>(-77778i, 4123i, 0i, 23342i), false, Struct_2(vec2<f32>(1000f, -1086f), Struct_1(false, vec4<f32>(-788f, 2145f, -1436f, 955f)), 1085f), vec3<f32>(-1355f, -294f, -1054f)), Struct_3(vec4<i32>(2147483647i, 0i, 1i, -20823i), false, Struct_2(vec2<f32>(-728f, -988f), Struct_1(true, vec4<f32>(331f, -482f, -105f, 868f)), 1267f), vec3<f32>(2612f, 2227f, -529f)), Struct_3(vec4<i32>(1i, 2147483647i, -20684i, -13727i), true, Struct_2(vec2<f32>(-535f, 688f), Struct_1(false, vec4<f32>(489f, -706f, -199f, 342f)), 1000f), vec3<f32>(774f, -1609f, -836f)), Struct_3(vec4<i32>(1293i, -30054i, -1410i, i32(-2147483648)), false, Struct_2(vec2<f32>(-398f, 300f), Struct_1(false, vec4<f32>(-889f, -2739f, 144f, -1865f)), -438f), vec3<f32>(-119f, -411f, 999f)), Struct_3(vec4<i32>(-1i, 2147483647i, -27203i, -1i), false, Struct_2(vec2<f32>(758f, 266f), Struct_1(true, vec4<f32>(309f, 613f, 1000f, 374f)), -514f), vec3<f32>(588f, 935f, 449f)), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 42326i, i32(-2147483648)), false, Struct_2(vec2<f32>(-339f, -2211f), Struct_1(true, vec4<f32>(708f, 1622f, -128f, -1890f)), -274f), vec3<f32>(1120f, -416f, -1061f)), Struct_3(vec4<i32>(1i, 6156i, -19005i, 41177i), false, Struct_2(vec2<f32>(-1557f, 1127f), Struct_1(true, vec4<f32>(-1050f, 1756f, -458f, -390f)), 531f), vec3<f32>(-2016f, -1787f, 233f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = arg_2;
    global1 = 381f;
    let var_1 = ~(u_input.a ^ ~_wgslsmith_add_u32(~global0.x, _wgslsmith_sub_u32(89217u, 32280u)));
    global4 = array<Struct_3, 29>();
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(select(-2147483647i, -1i, true), arg_2.a.x), global2.a.ww ^ -vec2<i32>(arg_2.a.x, 12211i)) << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, arg_0.x, u_input.a, arg_0.x), vec4<u32>(1u, 81879u, 5279u, global0.x))) % 32u), global2.a.x);
    return _wgslsmith_f_op_f32(global3.b.x * -204f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global3 = arg_1;
    var var_0 = arg_0.b.x;
    var var_1 = arg_0;
    global0 = vec2<u32>(abs(u_input.a) & ~(~u_input.a), global0.x) ^ ~(~(~abs(vec2<u32>(u_input.a, 17877u))));
    var var_2 = Struct_2(global3.b.ww, arg_1, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(func_3(~(~vec3<u32>(4294967295u, 4294967295u, 35676u)), Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(877f, arg_1.b.x, -654f, 461f) + vec4<f32>(var_1.b.x, arg_1.b.x, 1820f, global2.c.a.x))), Struct_3(vec4<i32>(-1i, 2147483647i, global2.a.x, -44550i) >> (vec4<u32>(1u, 4294967295u, global0.x, u_input.a) % vec4<u32>(32u)), !global3.a, global2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1719f, -561f, global3.b.x))), global2.a.x))));
    return vec4<i32>(-6722i, -_wgslsmith_mod_i32(~1i, firstLeadingBit(88336i)), abs(global2.a.x) & countOneBits(max(2147483647i, firstLeadingBit(global2.a.x))), global2.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_3(func_2(global2.c.b, global2.c.b), true, Struct_2(_wgslsmith_f_op_vec2_f32(-global3.b.yw), global2.c.b, 1278f), global3.b.wwy);
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-22380i, _wgslsmith_add_i32(-1i, var_0.a.x)), min(var_0.a.x, 40578i), -23556i, _wgslsmith_clamp_i32(61588i, -4196i << (global0.x % 32u), _wgslsmith_div_i32(global2.a.x, 7663i))), ~_wgslsmith_sub_vec4_i32(func_2(global2.c.b, Struct_1(global3.a, vec4<f32>(global2.c.c, 308f, var_0.d.x, -2092f))), var_0.a)), global2.a);
    var_0 = global4[_wgslsmith_index_u32(7240u, 29u)];
    var var_2 = var_0.b;
    return ~min(firstTrailingBit(countOneBits(_wgslsmith_add_vec4_i32(var_0.a, global2.a))), var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> vec2<u32> {
    var var_0 = global2.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(571f, var_0.c) - var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, var_0.a.x))))))), arg_1.c.b, arg_1.c.c);
    var var_2 = 26627i;
    let var_3 = arg_1.c;
    var var_4 = arg_1;
    return vec2<u32>(firstLeadingBit(abs(_wgslsmith_div_u32(global0.x, 1u))) >> (reverseBits(u_input.a) % 32u), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(true, Struct_3(abs(_wgslsmith_add_vec4_i32(func_1(vec2<bool>(false, global3.a), u_input.a), vec4<i32>(global2.a.x, global2.a.x, 0i, global2.a.x))), false, global2.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2.c.a.x, global3.b.x, global3.a)), _wgslsmith_f_op_f32(select(680f, -611f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1509f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -184f, 401f)))), _wgslsmith_f_op_f32(1685f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(global3.b.x + global3.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.b.x, global2.d.x, false)))))), _wgslsmith_f_op_f32(-global3.b.x));
    var var_0 = Struct_3(_wgslsmith_div_vec4_i32(~(vec4<i32>(-1i) * -global2.a), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, ~(-20441i), ~global2.a.x, global2.a.x), -select(global2.a, global2.a, vec4<bool>(false, global3.a, true, global3.a)))), false, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.d.xy + vec2<f32>(global2.d.x, -586f)), global3.b.yz, global3.a | global2.c.b.a)), global2.c.a), global2.c.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1264f * 166f)), 2118f))), vec3<f32>(552f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 600f) * _wgslsmith_f_op_f32(-global3.b.x))));
    var var_1 = Struct_3(min(global2.a, var_0.a) << (select(_wgslsmith_div_vec4_u32(vec4<u32>(2131u, global0.x, global0.x, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 34684u), vec4<u32>(4294967295u, 1u, 59906u, u_input.a), vec4<u32>(global0.x, global0.x, 2966u, global0.x))), countOneBits(firstLeadingBit(vec4<u32>(1u, 0u, u_input.a, global0.x))), !vec4<bool>(false, false, var_0.c.b.a, true)) % vec4<u32>(32u)), global2.c.b.a, Struct_2(vec2<f32>(global2.c.a.x, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(max(-660f, global2.d.x)))), global2.c.b, 2181f), _wgslsmith_f_op_vec3_f32(global2.d - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1867f * -964f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.b.x) + var_0.c.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.c.c)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(150f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - -1000f))), global3.b.x) + _wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(round(469f))));
    global1 = _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1819f));
    let var_2 = Struct_3(var_0.a, false, Struct_2(global2.c.b.b.xy, Struct_1(all(!vec2<bool>(var_0.b, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2010f, 1541f, var_1.c.a.x, var_0.c.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-789f + -1517f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.b.b.zxy)));
    global0 = select(~select(~firstLeadingBit(vec2<u32>(global0.x, global0.x)), ~vec2<u32>(15539u, 50644u) & _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, global0.x)), u_input.a <= _wgslsmith_clamp_u32(56898u, 61350u, 0u)), ~(vec2<u32>(~1u, ~global0.x) & ~func_4(global3.a, global4[_wgslsmith_index_u32(59089u, 29u)], global2.c.b.b.x, -732f)), vec2<bool>(global3.a | !(global2.c.b.a | var_0.c.b.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(36260i, ~(-(var_1.a.x | global2.a.x))));
}

