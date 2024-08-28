struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(-308f, -767f), -7803i, vec4<i32>(1i, 2147483647i, 1i, 54492i), -593f), Struct_1(vec2<f32>(-223f, 1061f), 54248i, vec4<i32>(-30154i, -52923i, 1i, 12199i), -655f));

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-928f, 359f, -107f, -367f), vec4<f32>(-424f, 1459f, 448f, -363f), vec4<f32>(552f, -836f, 914f, -222f), vec4<f32>(1000f, 704f, -1000f, 1301f), vec4<f32>(-533f, -685f, -915f, 152f), vec4<f32>(685f, -916f, -379f, 165f), vec4<f32>(471f, 2051f, -1439f, -234f), vec4<f32>(-1669f, 1186f, 1000f, -408f), vec4<f32>(-269f, 516f, 752f, -350f), vec4<f32>(-715f, -813f, 1621f, 375f), vec4<f32>(581f, 507f, 465f, 873f), vec4<f32>(584f, -1591f, 580f, 444f), vec4<f32>(-1000f, -1075f, -1000f, -1869f), vec4<f32>(-994f, 1000f, -759f, -690f), vec4<f32>(1339f, -2306f, -1000f, 420f), vec4<f32>(1000f, 395f, -2263f, -2867f), vec4<f32>(563f, -175f, 195f, -1453f), vec4<f32>(1563f, 1025f, 1411f, 1191f), vec4<f32>(1579f, -355f, -1503f, -1114f), vec4<f32>(1243f, -409f, -444f, 493f), vec4<f32>(549f, -176f, -474f, 242f), vec4<f32>(-1000f, -2097f, -813f, -519f), vec4<f32>(1280f, -906f, 142f, -583f), vec4<f32>(1271f, -1761f, -1318f, -1627f), vec4<f32>(1654f, 2154f, -811f, 657f), vec4<f32>(514f, -1033f, 104f, 1415f), vec4<f32>(-1331f, 397f, 710f, -667f), vec4<f32>(-1472f, -1747f, 1000f, -315f), vec4<f32>(341f, 2502f, -439f, -1391f), vec4<f32>(1617f, -1848f, -741f, -703f));

var<private> global4: array<f32, 6>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = Struct_4(arg_1.a, global2.a.c.xyy, any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_1.b.a)), i32(-1i) * -abs(1i), min(countOneBits(countOneBits(vec4<i32>(0i, 0i, 1i, 0i))), _wgslsmith_mod_vec4_i32(global2.a.c, _wgslsmith_div_vec4_i32(arg_1.a.c, vec4<i32>(arg_1.b.c.x, -17345i, 124i, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.d, global4[_wgslsmith_index_u32(firstLeadingBit(29582u), 6u)]))), _wgslsmith_f_op_f32(-135f + -1265f));
    let var_1 = global2.b.c.zy ^ var_0.a.c.zz;
    global4 = array<f32, 6>();
    var var_2 = Struct_2(Struct_1(vec2<f32>(global2.a.d, _wgslsmith_f_op_f32(round(1403f))), -2147483647i, global2.b.c, -1566f), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1413f, -472f) + var_0.a.a)))), abs(1i), abs(vec4<i32>(1i | var_1.x, -22994i, 1i, abs(0i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.d, global2.b.a.x))));
    global0 = 1i;
    return var_0.a.a.x;
}

fn func_2() -> vec2<bool> {
    global2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(-global2.a.b, Struct_2(global2.a, global2.a), _wgslsmith_dot_vec2_i32(global2.a.c.ww, global2.a.c.zy))), 637f), ~(-26772i), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, global2.b.c.x, global2.b.c.x, 35528i), _wgslsmith_clamp_vec4_i32(global2.b.c, vec4<i32>(global2.a.b, global2.b.c.x, global2.b.c.x, global2.b.b), vec4<i32>(global2.a.b, -52390i, -29928i, 0i))), 552f), global2.b);
    var var_0 = global2.b.c.wx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(612f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(min(1u, 4294967295u), 6u)] - global4[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 6u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-811f, global2.a.a.x) + global2.b.a)))), var_0.x, _wgslsmith_add_vec4_i32(global2.a.c, -global2.b.c), -231f);
    let var_2 = 340f;
    global4 = array<f32, 6>();
    return !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_mod_i32(global2.b.c.x, ~(-64325i));
    let var_1 = Struct_3(all(select(select(vec4<bool>(false, arg_1.x, true, arg_1.x), !vec4<bool>(false, true, arg_1.x, arg_1.x), any(vec3<bool>(arg_1.x, arg_1.x, false))), vec4<bool>(false, arg_1.x, global2.b.c.x >= -2147483647i, !arg_1.x), true)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(13138u, 6u)], global2.b.d), _wgslsmith_f_op_vec2_f32(-global2.a.a), !vec2<bool>(false, arg_1.x))))), firstTrailingBit(0i ^ global2.b.c.x), -vec4<i32>(_wgslsmith_clamp_i32(30883i, -13858i, global2.a.c.x), ~2147483647i, 1i, _wgslsmith_sub_i32(-1i, global2.a.c.x)), global2.b.d), vec2<i32>(global2.b.b, global2.b.c.x) >> (~arg_0.yx % vec2<u32>(32u)), global2.b, global2.a);
    var var_2 = !(_wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-470f, var_1.e.a.x) - _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(19510u, 6u)] + 1000f))) < var_1.b.d);
    global0 = _wgslsmith_sub_i32(var_1.c.x, _wgslsmith_add_i32(firstTrailingBit(~4029i), global2.b.b));
    var var_3 = u_input.a;
    return 1i;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(arg_0, arg_0, -26597i), select(vec3<i32>(36959i, arg_0, 2147483647i), vec3<i32>(-57561i, arg_2.c.x, 0i), vec3<bool>(false, true, true))), arg_2.c.wyy), -firstLeadingBit(global2.a.c.wxy)) >= select(arg_0, firstTrailingBit(reverseBits(max(-1i, global2.b.b))), false);
    let var_1 = Struct_5(Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(min(global2.a.a, _wgslsmith_div_vec2_f32(vec2<f32>(1051f, global2.a.d), vec2<f32>(arg_2.d, -743f)))), firstLeadingBit(i32(-1i) * -43610i), countOneBits(global2.a.c), global2.a.d), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_0, 11143i), global2.a.c.zz), global2.b, arg_2), min(arg_2.c.xx, _wgslsmith_mod_vec2_i32(global2.b.c.yw, arg_2.c.xz)), vec2<bool>(var_0, false), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 6u)])) + -145f), _wgslsmith_f_op_f32(floor(-790f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 6u)] * global2.b.a.x)))), ~(~(~vec2<u32>(96966u, 58997u))) ^ ~(~reverseBits(vec2<u32>(u_input.a, arg_3))));
    let var_2 = vec2<f32>(1000f, 1778f);
    let var_3 = Struct_3(!var_0, var_1.a.e, vec2<i32>(reverseBits(-2147483647i), arg_0), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1305f, 1143f) * _wgslsmith_f_op_vec2_f32(global2.a.a - vec2<f32>(-132f, var_1.a.d.d)))), ~global2.a.b, -vec4<i32>(-arg_2.b, arg_2.c.x, arg_0, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(global2.b.d))))), arg_2);
    global1 = false;
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.d))), _wgslsmith_f_op_f32(-var_2.x)), 2147483647i, reverseBits(-vec4<i32>(-20866i, global2.b.c.x, 0i, -6655i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-global2.a.a.x))))), var_3.b);
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = func_5(~(-(arg_0.a.b << (4294967295u % 32u))) | _wgslsmith_div_i32(min(global2.a.c.x, -1i), func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_3, u_input.a, arg_3), vec4<u32>(arg_1, u_input.a, 1u, 38922u)), func_2())), u_input.a, global2.b, ~u_input.a);
    let var_1 = arg_0.d;
    global0 = var_0.a.b;
    var var_2 = Struct_5(Struct_3(true, global2.a, -var_1.c.wx, func_5(-_wgslsmith_mult_i32(var_1.b, 1i), abs(~arg_1), global2.a, min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_3, arg_1), vec3<u32>(0u, 22198u, u_input.a)))).b, var_0.a), var_0.b.c.xx, !select(vec2<bool>(false, true), select(!vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), false), func_2()), true), arg_2, ~(~(~vec2<u32>(u_input.a, 0u)) | vec2<u32>(arg_3 >> (u_input.a % 32u), max(4294967295u, 1u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + arg_0.d.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-440f, arg_2.x, arg_0.c)), arg_0.d.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-457f, _wgslsmith_f_op_f32(round(arg_0.e))) - global4[_wgslsmith_index_u32(~arg_1, 6u)])) * arg_2.xyw);
    return global2.a;
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    global1 = true;
    global1 = false;
    global1 = !(!arg_1.a) & !arg_1.a;
    var var_0 = ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 26026u, 1u)), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 41835u, 43239u), vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 16165u, 119593u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), u_input.a), abs(min(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, 0u))), !any(vec3<bool>(arg_1.a, arg_1.a, false))));
    var var_1 = func_5(global2.b.b, 13180u, global2.a, _wgslsmith_sub_u32(49386u, _wgslsmith_sub_u32(~u_input.a, 0u)));
    return func_5(~select(reverseBits(var_1.b.b) & global2.b.c.x, ~(-29113i), false), u_input.a, arg_1.b, var_0.x);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_3((~global2.b.c.x < (1i | arg_0.b.c.x)) || false, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.a, vec2<f32>(arg_0.a.d, 1000f))))), 2147483647i, arg_0.a.c, arg_0.a.a.x), ~vec2<i32>(reverseBits(global2.b.c.x ^ 62470i), arg_0.a.b), func_1(Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-201f, -1707f), vec2<f32>(-917f, -656f), true)), ~arg_0.b.c.x, firstTrailingBit(global2.a.c), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(22378u, 6u)], 1129f))), vec3<i32>(2147483647i << (u_input.a % 32u), _wgslsmith_add_i32(arg_0.a.b, 1i), -arg_0.b.b), !any(vec2<bool>(false, true)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(7785u, 6u)], arg_0.a.d) * arg_0.b.a), arg_0.b.c.x, abs(arg_0.b.c), -1239f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_2.x, 6u)] + -1000f)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_1, arg_2.x), ~4294967295u, 54124u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1699f, 139f), global2.a.d, -106f, _wgslsmith_div_f32(-1000f, 402f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3[_wgslsmith_index_u32(38467u, 30u)])))), min(24227u, _wgslsmith_clamp_u32(u_input.a, 70269u, arg_2.x)) & max(~21123u, countOneBits(arg_2.x))), func_6(-150f, Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.d, 594f))), -1i, -global2.a.c, -1000f), vec2<i32>(2147483647i, _wgslsmith_div_i32(arg_0.a.b, 2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1355f, -1523f)), -4263i, vec4<i32>(global2.a.c.x, -82949i, global2.a.b, 34701i) ^ global2.a.c, _wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.a.x)), arg_0.a)).a);
    var var_1 = 61719i;
    let var_2 = any(vec4<bool>(true, !(!var_0.a), var_0.a, var_0.a));
    global0 = _wgslsmith_dot_vec3_i32(var_0.d.c.yyw, _wgslsmith_sub_vec3_i32(var_0.d.c.xxw, _wgslsmith_mod_vec3_i32(~max(arg_0.b.c.yyx, vec3<i32>(var_0.e.c.x, global2.a.b, 23482i)), global2.a.c.xyx)));
    let var_3 = 427f;
    return vec3<bool>(all(vec4<bool>(true | all(vec2<bool>(var_2, false)), func_2().x, var_2, true)), !(!all(select(vec2<bool>(var_2, var_0.a), vec2<bool>(var_2, var_0.a), vec2<bool>(false, false)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-(~_wgslsmith_mod_i32(global2.b.c.x, global2.b.c.x << (u_input.a % 32u))));
    let var_0 = select(func_7(func_6(global4[_wgslsmith_index_u32(~(~u_input.a), 6u)], Struct_3(false, Struct_1(global2.a.a, -36000i, global2.a.c, global4[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<i32>(-2147483647i, global2.b.b), func_1(Struct_4(global2.a, vec3<i32>(global2.b.b, -10612i, global2.b.b), true, global2.b, -866f), 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 30u)], 0u), Struct_1(vec2<f32>(262f, 165f), global2.a.c.x, global2.a.c, global4[_wgslsmith_index_u32(u_input.a, 6u)]))), 1u | _wgslsmith_sub_u32(max(u_input.a, 6826u), u_input.a), ~reverseBits(~vec3<u32>(u_input.a, 73469u, u_input.a))), vec3<bool>(func_2().x, true, ~(-global2.a.b) > (func_1(Struct_4(global2.a, global2.a.c.yxx, true, global2.b, 689f), 4294967295u, vec4<f32>(1191f, global2.a.d, -672f, 413f), u_input.a).b << (12103u % 32u))), vec3<bool>(!(~u_input.a >= 1u), any(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 6u)] == 221f, false, all(vec3<bool>(false, false, true)), func_7(Struct_2(global2.a, Struct_1(vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 6u)], 460f), 0i, vec4<i32>(global2.a.b, -2147483647i, -1819i, 30653i), 779f)), 4294967295u, vec3<u32>(u_input.a, 57599u, 24414u)).x)), ((global2.b.b <= global2.b.c.x) | any(vec3<bool>(false, false, true))) & (global2.b.c.x >= global2.a.b)));
    let var_1 = Struct_2(global2.b, func_1(Struct_4(global2.b, abs(vec3<i32>(global2.b.c.x, 56838i, 25472i)), !(!var_0.x), Struct_1(_wgslsmith_div_vec2_f32(global2.b.a, vec2<f32>(global4[_wgslsmith_index_u32(1u, 6u)], 1000f)), _wgslsmith_div_i32(15539i, 22176i), vec4<i32>(-1i, 2147483647i, global2.a.b, 1963i) << (vec4<u32>(4294967295u, 1u, 22223u, 1u) % vec4<u32>(32u)), func_1(Struct_4(global2.a, vec3<i32>(-1i, 11164i, -6458i), true, global2.b, 545f), u_input.a, vec4<f32>(-240f, 1000f, global2.a.a.x, global4[_wgslsmith_index_u32(8655u, 6u)]), 0u).a.x), -790f), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(53446u, u_input.a, 27986u, 49259u)), _wgslsmith_sub_vec4_u32(vec4<u32>(65120u, u_input.a, 1u, 0u), ~vec4<u32>(4294967295u, u_input.a, 1u, 22565u))), global3[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a));
    var var_2 = Struct_5(Struct_3(false, func_5(select(global2.a.c.x, var_1.b.b, true), 4294967295u, Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a.a), _wgslsmith_clamp_i32(-2147483647i, -46632i, global2.b.b), -vec4<i32>(-2147483647i, 2147483647i, var_1.b.b, 0i), global2.b.d), 0u).a, _wgslsmith_mod_vec2_i32(-_wgslsmith_clamp_vec2_i32(var_1.a.c.zz, vec2<i32>(var_1.b.b, var_1.a.c.x), vec2<i32>(var_1.a.c.x, global2.a.c.x)), vec2<i32>(global2.b.c.x << (u_input.a % 32u), select(-1i, 22255i, var_0.x))), global2.a, Struct_1(var_1.a.a, _wgslsmith_dot_vec4_i32(func_6(329f, Struct_3(var_0.x, global2.a, global2.b.c.xz, global2.a, var_1.a)).a.c, vec4<i32>(var_1.a.c.x, -50035i, -20615i, -18773i)), vec4<i32>(var_1.a.b, -12165i, 3041i, global2.a.c.x) ^ -var_1.a.c, -376f)), _wgslsmith_mod_vec2_i32(var_1.b.c.zw, var_1.a.c.zz) & select(vec2<i32>(~(-33541i), global2.b.b), -vec2<i32>(var_1.a.c.x, 1i) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), var_0.x), !(!vec2<bool>(var_0.x, false)), _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(~(~(0u & u_input.a)), 30u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_6(231f, Struct_3(false, global2.a, global2.b.c.zy, global2.a, Struct_1(var_1.b.a, -17021i, global2.b.c, global2.a.d))).b.a.x, _wgslsmith_f_op_f32(abs(var_1.b.a.x)), global4[_wgslsmith_index_u32(1u, 6u)], 279f), vec4<f32>(_wgslsmith_f_op_f32(-454f + global2.b.d), _wgslsmith_f_op_f32(948f - -639f), global2.b.d, _wgslsmith_f_op_f32(step(global2.a.d, global4[_wgslsmith_index_u32(u_input.a, 6u)]))), !select(var_0.x, var_0.x, true)))), vec2<u32>(u_input.a, abs(u_input.a)));
    let var_3 = var_2.a;
    global0 = ~var_1.a.b;
    let var_4 = 691f;
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(global2.a.a)))))), -firstTrailingBit(-15857i), var_3.b.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.e.d, _wgslsmith_f_op_f32(sign(252f))) + _wgslsmith_f_op_f32(min(1200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(u_input.a, 6u)])))))));
    var var_6 = Struct_4(Struct_1(var_5.a, ~_wgslsmith_mod_i32(~28770i, -2147483647i), vec4<i32>(-max(var_5.b, -1i), abs(1i), select(var_5.c.x, -8144i, var_0.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.c.x, global2.b.b), var_3.d.c.zw), _wgslsmith_clamp_i32(var_3.c.x, _wgslsmith_add_i32(18820i, 1i), ~1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.d, -970f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.a.x - var_1.b.a.x), _wgslsmith_f_op_f32(global2.a.d * -1883f)))), -_wgslsmith_mult_vec3_i32(var_3.e.c.yyx, ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(var_3.c.x, 37410i, global2.a.b))), any(var_0.zy), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1265f, 203f) - _wgslsmith_div_vec2_f32(vec2<f32>(var_5.a.x, var_2.a.e.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-856f, var_4) - var_5.a))), _wgslsmith_sub_i32(-45516i, -14066i), -var_3.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1314f * global2.b.a.x), -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.d.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1088f * var_2.a.e.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-347f - 1519f), func_1(Struct_4(func_6(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(2379u, 6u)] + 413f), var_2.a).b, _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, var_1.a.b, -1i), max(vec3<i32>(var_1.b.c.x, var_5.b, 251i), vec3<i32>(-2147483647i, 12209i, -28195i))), u_input.a >= _wgslsmith_sub_u32(var_2.e.x, var_2.e.x), Struct_1(var_1.a.a, 0i, firstLeadingBit(vec4<i32>(var_5.c.x, var_5.b, global2.a.c.x, var_2.a.b.b)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_2.e.x, 6u)] * -1853f))), 0u, var_2.d, ~_wgslsmith_add_u32(~var_2.e.x, _wgslsmith_sub_u32(var_2.e.x, u_input.a))).c.www, _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~(countOneBits(0u) | u_input.a), 30u)]));
}

