struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, true, false, false, true, false, false, false, false, false, true, true, true, true, true, true, true, true, true, false, false, true, true, false, true, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_0 = Struct_3(arg_2.d, Struct_1(arg_2.e.c, !(!(!vec4<bool>(true, false, false, arg_3.x))), arg_2.e.c, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.a.yw, arg_2.c.zy)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1377f, arg_2.a.x)))))), Struct_2(_wgslsmith_f_op_vec4_f32(min(arg_2.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, arg_2.c.x, 590f, -264f))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-312f, arg_2.a.x, arg_2.e.e.x, arg_2.c.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(594f, 357f, -835f, 2135f))), true))), arg_2.e, Struct_1(_wgslsmith_mult_u32(12137u, 63586u), !select(arg_2.e.b, vec4<bool>(true, arg_2.b, global0[_wgslsmith_index_u32(arg_2.e.c, 30u)], arg_3.x), global0[_wgslsmith_index_u32(arg_2.e.c, 30u)]), min(0u, 48680u), vec2<i32>(firstLeadingBit(arg_2.d.d.x), abs(arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, arg_2.d.e.x) - vec2<f32>(-684f, 1446f))))), select(vec2<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.d.a, 30u)])), any(select(vec3<bool>(arg_3.x, global0[_wgslsmith_index_u32(65723u, 30u)], arg_3.x), arg_2.e.b.wxw, vec3<bool>(true, true, arg_1)))), vec2<bool>(arg_0 != arg_0, true), true || select(true, !arg_1, all(arg_2.e.b.zz))));
    let var_1 = -1474f;
    return select(!(!arg_3), vec2<bool>(var_0.a.b.x, arg_3.x), false);
}

fn func_2() -> u32 {
    var var_0 = !func_3(-2793i, ((u_input.a.x < -30374i) || !global0[_wgslsmith_index_u32(1360u, 30u)]) & true, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1928f, 1000f, 685f, -1409f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, -1531f, 107f, -1000f) * vec4<f32>(-900f, -492f, -650f, -216f))), false, vec4<f32>(_wgslsmith_f_op_f32(893f + -288f), _wgslsmith_f_op_f32(2446f * -1329f), _wgslsmith_f_op_f32(round(-225f)), 1238f), Struct_1(1u, vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 30u)], false), 1u, vec2<i32>(u_input.a.x, 1i), _wgslsmith_div_vec2_f32(vec2<f32>(-183f, -440f), vec2<f32>(-1404f, 1007f))), Struct_1(1u, vec4<bool>(true, global0[_wgslsmith_index_u32(81514u, 30u)], global0[_wgslsmith_index_u32(26494u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 55726u, 0u), vec4<u32>(4294967295u, 10671u, 40816u, 71728u)), ~u_input.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-285f, 246f), vec2<f32>(1232f, -1547f))))), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(58892u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(67916u, 30u)]), global0[_wgslsmith_index_u32(1u, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(2775u, 30u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)]), select(false, false, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false, true)))));
    let var_1 = Struct_3(Struct_1(11262u, select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(12546u, 30u)], var_0.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(19702u, 30u)], var_0.x), vec4<bool>(var_0.x, true, true, false)), select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(1788u, 30u)], false, true), !vec4<bool>(true, var_0.x, true, true), !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, countOneBits(28990u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(54209u, 4294967295u), vec2<u32>(19195u, 14021u))), firstTrailingBit(vec4<u32>(4186u, 1u, 0u, 4294967295u))), ~_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -1i)) | ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<f32>(1f, 1f)), Struct_1(1u, select(vec4<bool>(!var_0.x, !global0[_wgslsmith_index_u32(0u, 30u)], true, true), !vec4<bool>(false, true, var_0.x, true), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(25713u, 30u)], var_0.x)), select(1u, 27327u, select(1u, 1u, true) == 1u), countOneBits(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -1i), -42578i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1508f, 1000f) + vec2<f32>(-1623f, 923f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(555f, 1000f) - vec2<f32>(788f, -325f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1179f, 771f)), _wgslsmith_div_f32(1000f, -1221f), -725f, _wgslsmith_f_op_f32(-566f * 306f))), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1179f), -878f, _wgslsmith_f_op_f32(ceil(-1255f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1581f, -1285f, -514f, 1200f) * vec4<f32>(-1000f, -381f, -710f, 395f)), vec4<f32>(1f, 1f, 1f, 1f)))), Struct_1(firstLeadingBit(1u), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(5085u, 30u)], var_0.x, global0[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)], var_0.x, var_0.x), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)])), 30575u, vec2<i32>(u_input.a.x, u_input.a.x) & -u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(931f, 1965f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, -1021f) + vec2<f32>(-1204f, -1000f)))), Struct_1(~(~0u), vec4<bool>(true, global0[_wgslsmith_index_u32(23557u, 30u)], !var_0.x, select(var_0.x, true, var_0.x)), 230u, u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(644f)), _wgslsmith_div_f32(-1460f, -151f)))), vec2<bool>(true, global0[_wgslsmith_index_u32(abs(9392u), 30u)]));
    let var_2 = _wgslsmith_div_vec2_i32(var_1.b.d, u_input.a);
    var_0 = select(!(!var_1.b.b.xz), vec2<bool>(!all(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(77099u, 30u)], false)), !(!var_1.d.x & var_1.d.x)), select(!vec2<bool>(true, var_1.c.d.d.x <= -9377i), select(!var_1.c.e.b.xy, vec2<bool>(global0[_wgslsmith_index_u32(var_1.b.a, 30u)] || true, global0[_wgslsmith_index_u32(var_1.a.c, 30u)]), var_1.d), func_3(-u_input.a.x | _wgslsmith_mod_i32(u_input.a.x, var_1.a.d.x), true, Struct_2(_wgslsmith_div_vec4_f32(var_1.c.c, var_1.c.a), !var_0.x, vec4<f32>(573f, -1000f, 505f, -115f), var_1.c.e, Struct_1(84990u, var_1.a.b, 72561u, u_input.a, vec2<f32>(var_1.b.e.x, -923f))), select(func_3(40284i, false, Struct_2(var_1.c.c, var_1.a.b.x, vec4<f32>(-697f, var_1.b.e.x, -707f, -1019f), var_1.a, Struct_1(80090u, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, false, var_0.x), 1u, vec2<i32>(-1i, -39529i), vec2<f32>(var_1.a.e.x, -217f))), var_1.c.e.b.yz), select(vec2<bool>(true, var_0.x), var_1.a.b.yx, var_1.c.e.b.xw), !vec2<bool>(true, var_1.b.b.x)))));
    let var_3 = var_1;
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, 98518u), ~var_1.c.e.a, var_3.b.c), vec3<u32>(~19268u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 59356u, var_1.a.a), vec4<u32>(var_1.b.c, 4294967295u, var_3.a.a, 4294967295u)), 16875u) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_1.a.c, 4294967295u), ~vec3<u32>(var_3.b.a, 0u, var_1.b.a)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global0 = array<bool, 30>();
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(func_2() << (arg_3.c.d.c % 32u), 30u)], !(-4920i >= countOneBits(_wgslsmith_add_i32(-36872i, arg_1.x))));
    var_0 = arg_0.e.b.wy;
    let var_1 = arg_0.d;
    var var_2 = -_wgslsmith_div_i32(_wgslsmith_div_i32(arg_3.b.d.x, ~countOneBits(var_1.d.x)), _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(60173i, arg_1.x, arg_0.e.d.x, -1i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1022i, -9438i, arg_2.d.x, -1i), vec4<i32>(var_1.d.x, arg_0.e.d.x, 1i, arg_2.d.x))));
    return select(66437u, var_1.c >> (~(~arg_0.d.a) % 32u), arg_3.a.b.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-140f, -1650f, -218f, arg_0.x), vec4<f32>(arg_0.x, 1000f, arg_0.x, -1373f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 268f, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -323f, -609f, 1009f))))))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) - vec4<f32>(-1289f, arg_0.x, 1066f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_div_f32(681f, arg_0.x), arg_0.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1011f, arg_0.x, 627f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-735f, -1252f, -396f, arg_0.x) + vec4<f32>(arg_0.x, 890f, arg_0.x, arg_0.x))))), Struct_1(1u, select(vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)])), false, any(vec2<bool>(true, arg_2)), !global0[_wgslsmith_index_u32(arg_1.x, 30u)]), vec4<bool>(true, all(vec4<bool>(true, true, arg_2, global0[_wgslsmith_index_u32(4294967295u, 30u)])), all(vec4<bool>(true, false, true, arg_2)), global0[_wgslsmith_index_u32(40099u, 30u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], arg_2, global0[_wgslsmith_index_u32(38510u, 30u)]))), func_1(Struct_2(vec4<f32>(arg_0.x, 956f, -1389f, arg_0.x), true | global0[_wgslsmith_index_u32(arg_1.x, 30u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1199f, arg_0.x, arg_0.x, 1000f), vec4<f32>(arg_0.x, 1256f, arg_0.x, arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(arg_3, 30u)], true, arg_2))), Struct_1(arg_3, vec4<bool>(arg_2, global0[_wgslsmith_index_u32(arg_3, 30u)], arg_2, global0[_wgslsmith_index_u32(arg_3, 30u)]), arg_1.x, vec2<i32>(u_input.a.x, 26606i), vec2<f32>(arg_0.x, arg_0.x)), Struct_1(arg_1.x, vec4<bool>(arg_2, true, true, global0[_wgslsmith_index_u32(0u, 30u)]), arg_3, vec2<i32>(u_input.a.x, -2147483647i), vec2<f32>(arg_0.x, arg_0.x))), vec3<i32>(abs(u_input.a.x), ~(-38734i), abs(19914i)), Struct_1(func_1(Struct_2(vec4<f32>(arg_0.x, 383f, -625f, arg_0.x), global0[_wgslsmith_index_u32(26116u, 30u)], vec4<f32>(347f, arg_0.x, -504f, -817f), Struct_1(41413u, vec4<bool>(false, true, true, arg_2), arg_1.x, vec2<i32>(-28119i, 2147483647i), arg_0.xz), Struct_1(0u, vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], false, true, true), arg_1.x, vec2<i32>(14453i, u_input.a.x), vec2<f32>(420f, arg_0.x))), vec3<i32>(u_input.a.x, u_input.a.x, -1i), Struct_1(0u, vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), arg_3, vec2<i32>(u_input.a.x, u_input.a.x), arg_0.xz), Struct_3(Struct_1(arg_3, vec4<bool>(arg_2, false, true, arg_2), arg_3, vec2<i32>(-1i, u_input.a.x), arg_0.yx), Struct_1(arg_1.x, vec4<bool>(true, false, true, true), arg_1.x, u_input.a, vec2<f32>(-171f, arg_0.x)), Struct_2(vec4<f32>(-429f, arg_0.x, arg_0.x, arg_0.x), false, vec4<f32>(785f, -1073f, arg_0.x, arg_0.x), Struct_1(67525u, vec4<bool>(arg_2, false, global0[_wgslsmith_index_u32(arg_3, 30u)], arg_2), 4294967295u, u_input.a, arg_0.zz), Struct_1(arg_1.x, vec4<bool>(arg_2, global0[_wgslsmith_index_u32(0u, 30u)], false, false), arg_1.x, vec2<i32>(-17031i, 30236i), arg_0.yx)), vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 30u)], true))), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 30u)], false), arg_3, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -41673i)), arg_0.xy), Struct_3(Struct_1(arg_3, vec4<bool>(false, true, false, true), 89452u, u_input.a, vec2<f32>(arg_0.x, arg_0.x)), Struct_1(arg_3, vec4<bool>(arg_2, false, false, false), 4294967295u, vec2<i32>(-2147483647i, 2939i), arg_0.yy), Struct_2(vec4<f32>(766f, 913f, -1435f, arg_0.x), false, vec4<f32>(1000f, 964f, arg_0.x, -1000f), Struct_1(arg_1.x, vec4<bool>(true, arg_2, true, true), arg_3, u_input.a, arg_0.xz), Struct_1(65052u, vec4<bool>(arg_2, arg_2, arg_2, arg_2), 39047u, u_input.a, arg_0.xz)), func_3(u_input.a.x, global0[_wgslsmith_index_u32(0u, 30u)], Struct_2(vec4<f32>(arg_0.x, 617f, -1598f, -2003f), arg_2, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_1(1u, vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], false, false, true), 56686u, vec2<i32>(u_input.a.x, 2147483647i), arg_0.zx), Struct_1(0u, vec4<bool>(true, arg_2, global0[_wgslsmith_index_u32(arg_3, 30u)], true), 4294967295u, u_input.a, vec2<f32>(1242f, arg_0.x))), vec2<bool>(global0[_wgslsmith_index_u32(25928u, 30u)], false)))), _wgslsmith_clamp_vec2_i32(u_input.a, -(~vec2<i32>(1i, -8620i)), vec2<i32>(-38152i, 33646i)), _wgslsmith_f_op_vec2_f32(-arg_0.yx)), Struct_1(arg_3, vec4<bool>(any(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], arg_2)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 45642u, 4736u), vec3<u32>(4294967295u, arg_3, 51570u)), 30u)] & !global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(5384u, 30u)], true), ~(~max(68085u, arg_3)), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(-810f)), true)), _wgslsmith_f_op_f32(trunc(-379f)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.e.x) + _wgslsmith_f_op_f32(1378f + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(883f, 507f))), _wgslsmith_f_op_f32(min(429f, _wgslsmith_f_op_f32(-var_0.c.x)))), var_0.c, !vec4<bool>(!global0[_wgslsmith_index_u32(var_0.d.c, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.a, arg_1.x), 30u)], var_0.d.b.x, func_3(var_0.e.d.x, global0[_wgslsmith_index_u32(arg_3, 30u)], Struct_2(vec4<f32>(532f, 442f, arg_0.x, 181f), false, vec4<f32>(arg_0.x, -210f, 635f, 1787f), var_0.d, var_0.d), var_0.e.b.zw).x))), _wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(91705u, 1u, 5323u))), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(arg_1, arg_1), arg_3)) >= var_0.e.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), var_0.e, var_0.d);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.c))) + vec4<f32>(_wgslsmith_div_f32(var_0.d.e.x, var_0.a.x), _wgslsmith_f_op_f32(arg_0.x * -482f), _wgslsmith_f_op_f32(max(var_0.a.x, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -441f))))), all(select(select(select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(1u, 30u)]), var_0.e.b, var_0.e.b), select(vec4<bool>(true, true, false, arg_2), var_0.d.b, var_0.d.b), var_0.e.b), vec4<bool>(!global0[_wgslsmith_index_u32(30662u, 30u)], arg_2, var_0.b | false, true), !func_3(var_0.e.d.x, true, Struct_2(vec4<f32>(-986f, arg_0.x, var_0.d.e.x, -1111f), global0[_wgslsmith_index_u32(28469u, 30u)], vec4<f32>(819f, 1091f, var_0.d.e.x, -1684f), Struct_1(arg_3, var_0.d.b, var_0.d.c, var_0.e.d, var_0.d.e), var_0.e), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3, 30u)])).x)), var_0.c, var_0.d, Struct_1(~10110u, var_0.e.b, 99438u, vec2<i32>(var_0.d.d.x ^ var_0.d.d.x, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.x, 973f), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = Struct_1(0u, select(var_1.e.b, vec4<bool>(!(!var_0.d.b.x), true, true, all(var_1.e.b)), true), ~max(var_0.e.c, 1u), ~var_0.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1322f, 125f) * vec2<f32>(663f, 1587f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = 1i;
    var var_1 = u_input.a.x;
    let var_2 = abs(arg_0.d.c);
    let var_3 = Struct_3(Struct_1(_wgslsmith_mod_u32(reverseBits(var_2 << (5411u % 32u)), arg_0.d.c), vec4<bool>(!global0[_wgslsmith_index_u32(~arg_0.d.a, 30u)], true, true, all(!vec4<bool>(global0[_wgslsmith_index_u32(36301u, 30u)], arg_0.b, arg_0.b, false))), ~_wgslsmith_mod_u32(abs(arg_0.d.c), ~4294967295u), min(-arg_0.d.d, -arg_0.e.d) >> (vec2<u32>(abs(arg_0.d.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 32675u, var_2), vec3<u32>(var_2, arg_0.d.a, arg_0.e.a))) % vec2<u32>(32u)), arg_0.d.e), arg_0.e, arg_0, !arg_2);
    let var_4 = vec4<u32>(countOneBits(var_2), arg_0.e.a, max(countOneBits(~(arg_0.d.a & var_3.b.c)), ~(~max(86248u, 0u))), _wgslsmith_sub_u32(~reverseBits(arg_0.e.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_3.b.c, 38668u, 91309u), abs(vec4<u32>(4364u, var_3.b.a, var_2, 1u))) ^ var_3.c.d.a));
    return ~(_wgslsmith_mult_u32(18332u, firstLeadingBit(~var_3.a.c)) | abs(~var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = Struct_1(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1187f, 555f, 982f))), reverseBits(vec2<u32>(23586u, 89909u)), global0[_wgslsmith_index_u32(32654u, 30u)] && global0[_wgslsmith_index_u32(48293u, 30u)], func_1(Struct_2(vec4<f32>(-741f, -1289f, 160f, -876f), true, vec4<f32>(-160f, 671f, 1873f, 1112f), Struct_1(84520u, vec4<bool>(global0[_wgslsmith_index_u32(65138u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)]), 30175u, u_input.a, vec2<f32>(719f, 1008f)), Struct_1(7278u, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)], false, false), 0u, u_input.a, vec2<f32>(-112f, -1587f))), vec3<i32>(1i, u_input.a.x, -26103i), Struct_1(0u, vec4<bool>(true, global0[_wgslsmith_index_u32(33866u, 30u)], true, false), 29091u, u_input.a, vec2<f32>(-756f, -1000f)), Struct_3(Struct_1(1u, vec4<bool>(global0[_wgslsmith_index_u32(25505u, 30u)], true, global0[_wgslsmith_index_u32(82832u, 30u)], false), 14439u, u_input.a, vec2<f32>(1000f, -472f)), Struct_1(4294967295u, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, false, global0[_wgslsmith_index_u32(1u, 30u)]), 17751u, u_input.a, vec2<f32>(2117f, -1674f)), Struct_2(vec4<f32>(-391f, 520f, 728f, -953f), global0[_wgslsmith_index_u32(1u, 30u)], vec4<f32>(-398f, 419f, 1000f, 1599f), Struct_1(1u, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], false, global0[_wgslsmith_index_u32(0u, 30u)]), 2461u, u_input.a, vec2<f32>(743f, -602f)), Struct_1(0u, vec4<bool>(global0[_wgslsmith_index_u32(30723u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], false, global0[_wgslsmith_index_u32(17581u, 30u)]), 57034u, u_input.a, vec2<f32>(-191f, -1043f))), vec2<bool>(true, global0[_wgslsmith_index_u32(11997u, 30u)]))))), (global0[_wgslsmith_index_u32(1u, 30u)] || true) | false, vec4<f32>(-580f, _wgslsmith_f_op_f32(ceil(287f)), 523f, _wgslsmith_f_op_f32(-245f * -1082f)), Struct_1(12021u, select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(32352u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(42808u, 30u)], true), global0[_wgslsmith_index_u32(76362u, 30u)]), ~4294967295u, abs(vec2<i32>(u_input.a.x, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-928f, -697f))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 59046u), vec3<u32>(26206u, 30245u, 1u)), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(27185u, 30u)], true), ~4294967295u, ~vec2<i32>(1i, -1739i), _wgslsmith_f_op_vec2_f32(vec2<f32>(417f, 447f) * vec2<f32>(-613f, 105f)))), _wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(1504f, _wgslsmith_f_op_f32(f32(-1f) * -1904f), _wgslsmith_f_op_f32(ceil(-295f))), ~vec2<u32>(15409u, 0u), true, ~1u)).x, !(!vec2<bool>(global0[_wgslsmith_index_u32(59565u, 30u)], false))), vec4<bool>(true, u_input.a.x != _wgslsmith_dot_vec4_i32(-vec4<i32>(6087i, -3920i, u_input.a.x, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -39087i)), true, global0[_wgslsmith_index_u32(~1u, 30u)] | global0[_wgslsmith_index_u32(func_5(Struct_2(vec4<f32>(-1514f, -194f, 135f, 247f), false, vec4<f32>(-963f, 600f, 219f, 130f), Struct_1(90123u, vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 30u)]), 46760u, vec2<i32>(u_input.a.x, 1i), vec2<f32>(-831f, -1422f)), Struct_1(0u, vec4<bool>(true, global0[_wgslsmith_index_u32(39066u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), 4294967295u, u_input.a, vec2<f32>(577f, -341f))), 1404f, func_3(1i, global0[_wgslsmith_index_u32(1u, 30u)], Struct_2(vec4<f32>(-808f, 623f, -2035f, 1150f), true, vec4<f32>(-656f, 1052f, -273f, -150f), Struct_1(1u, vec4<bool>(false, global0[_wgslsmith_index_u32(71369u, 30u)], true, true), 93961u, vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(1318f, -558f)), Struct_1(40624u, vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), 4294967295u, u_input.a, vec2<f32>(-984f, 632f))), vec2<bool>(false, true))), 30u)]), ~(~(27190u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 65714u, 71678u), vec3<u32>(0u, 1u, 4294967295u)))), u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, 825f)))))));
    let var_1 = false;
    var var_2 = Struct_2(vec4<f32>(-241f, _wgslsmith_f_op_f32(f32(-1f) * -565f), var_0.e.x, var_0.e.x), any(vec4<bool>(true, true, !(2147483647i > var_0.d.x), var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2611f, _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(-994f + -665f)), var_0.e.x, -524f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.x, 1348f, -151f, -185f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-747f, 1023f, var_0.e.x, 756f))))), Struct_1(var_0.a, var_0.b, var_0.c, max(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -954i)), firstLeadingBit(countOneBits(vec2<i32>(var_0.d.x, 1i)))), var_0.e), Struct_1(var_0.c | ~(~1u), var_0.b, ~var_0.a, vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(u_input.a.x, -2147483647i)), var_0.d.x), var_0.e));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2.a);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_2.a), global0[_wgslsmith_index_u32(var_0.a, 30u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1406f, -551f, var_3.x, 188f))))), Struct_1(var_0.a, select(select(vec4<bool>(false, false, var_2.b, var_1), select(vec4<bool>(false, var_2.d.b.x, var_2.b, false), vec4<bool>(var_2.b, true, var_2.e.b.x, false), true), true), select(select(var_2.d.b, vec4<bool>(false, var_1, var_2.e.b.x, false), var_0.b.x), !vec4<bool>(false, true, var_0.b.x, global0[_wgslsmith_index_u32(var_0.c, 30u)]), !var_0.b), select(!var_0.b, var_2.d.b, vec4<bool>(var_1, global0[_wgslsmith_index_u32(var_0.c, 30u)], false, var_1))), func_2() >> (var_2.d.a % 32u), vec2<i32>(9435i, -1i), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), var_2.e);
    var var_5 = ~(~reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(26757u, var_2.e.a), vec2<u32>(4294967295u, var_2.d.c)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_2.d.a, 11180u), vec2<u32>(var_0.c, var_2.e.c)) % vec2<u32>(32u))));
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.c.yw)), _wgslsmith_f_op_vec2_f32(trunc(var_2.a.xz)));
    let var_7 = firstLeadingBit((vec4<i32>(var_2.d.d.x >> (4294967295u % 32u), var_4.d.d.x, -48147i, _wgslsmith_sub_i32(-17889i, -1i)) | ~vec4<i32>(var_2.e.d.x, -39657i, var_0.d.x, var_4.d.d.x)) ^ max(~vec4<i32>(1i, u_input.a.x, 2147483647i, var_0.d.x), -(vec4<i32>(var_4.d.d.x, 13185i, 0i, var_2.e.d.x) << (vec4<u32>(var_2.e.c, 1u, var_0.c, 4294967295u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_i32(-u_input.a.x & var_4.e.d.x, var_7.x)), _wgslsmith_sub_u32(~1u, var_4.e.c), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 28397u), vec2<u32>(4294967295u, 10080u)) | var_0.a, ~82747u, var_2.e.c), vec3<u32>(42583u, _wgslsmith_div_u32(var_0.a, var_2.d.c), 4294967295u)), vec2<i32>(~firstLeadingBit(~var_4.e.d.x), -(-var_2.e.d.x ^ _wgslsmith_dot_vec3_i32(var_7.ywy, var_7.xzw))));
}

