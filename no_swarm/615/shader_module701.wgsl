struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 22> = array<u32, 22>(4294967295u, 47506u, 0u, 53297u, 34915u, 35417u, 1u, 0u, 57182u, 74590u, 1u, 63184u, 1u, 4294967295u, 0u, 1u, 14171u, 0u, 0u, 4294967295u, 4294967295u, 41459u);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_1(vec3<f32>(1181f, -422f, 858f), 0u, 947f, vec4<bool>(true, false, false, true), 1665f), Struct_3(-2079f, vec4<f32>(427f, -1070f, -605f, -900f))), Struct_5(Struct_1(vec3<f32>(1340f, 1055f, 345f), 14007u, -766f, vec4<bool>(true, true, true, false), -1463f), Struct_3(918f, vec4<f32>(-273f, 350f, 1325f, -546f))), Struct_5(Struct_1(vec3<f32>(-1551f, 2359f, -500f), 70034u, 1211f, vec4<bool>(true, false, false, false), -1049f), Struct_3(630f, vec4<f32>(-1137f, -1078f, -186f, -698f))), Struct_5(Struct_1(vec3<f32>(-1000f, 637f, 1074f), 95212u, -2457f, vec4<bool>(false, false, false, false), -1015f), Struct_3(-930f, vec4<f32>(1376f, 594f, -1711f, -2001f))), Struct_5(Struct_1(vec3<f32>(1019f, -1023f, 1000f), 93819u, -1275f, vec4<bool>(false, true, true, true), 502f), Struct_3(-1000f, vec4<f32>(923f, 263f, -138f, 136f))), Struct_5(Struct_1(vec3<f32>(495f, -413f, 735f), 25127u, 531f, vec4<bool>(false, true, false, false), -599f), Struct_3(-183f, vec4<f32>(-1367f, -282f, 220f, 1043f))), Struct_5(Struct_1(vec3<f32>(-560f, 1096f, -101f), 16821u, 836f, vec4<bool>(false, false, false, false), -1378f), Struct_3(-1125f, vec4<f32>(-1000f, 357f, 1035f, -176f))), Struct_5(Struct_1(vec3<f32>(1038f, -1032f, 305f), 146953u, -472f, vec4<bool>(false, false, true, false), 1535f), Struct_3(1070f, vec4<f32>(-560f, 1274f, -539f, -1297f))), Struct_5(Struct_1(vec3<f32>(1225f, -1000f, 1499f), 23446u, 201f, vec4<bool>(true, false, true, false), 1000f), Struct_3(1275f, vec4<f32>(-1468f, 790f, -853f, 677f))), Struct_5(Struct_1(vec3<f32>(269f, 1666f, -400f), 1u, -2333f, vec4<bool>(true, true, false, true), -161f), Struct_3(-1324f, vec4<f32>(-1264f, -1542f, 1671f, 1448f))), Struct_5(Struct_1(vec3<f32>(-1741f, 1000f, -1000f), 48164u, -649f, vec4<bool>(false, true, false, false), 322f), Struct_3(1903f, vec4<f32>(374f, -1573f, -1685f, -584f))), Struct_5(Struct_1(vec3<f32>(-1631f, -1170f, 411f), 4294967295u, -138f, vec4<bool>(true, false, true, false), -259f), Struct_3(-368f, vec4<f32>(-1000f, 135f, 1000f, 279f))), Struct_5(Struct_1(vec3<f32>(582f, 1008f, 1000f), 0u, 1000f, vec4<bool>(false, true, false, true), 148f), Struct_3(456f, vec4<f32>(-496f, -1474f, -754f, 1000f))), Struct_5(Struct_1(vec3<f32>(-620f, 1000f, -469f), 1u, -379f, vec4<bool>(false, false, true, true), -1086f), Struct_3(-2181f, vec4<f32>(-1199f, 1363f, 1734f, -107f))), Struct_5(Struct_1(vec3<f32>(-1000f, 830f, 964f), 0u, -184f, vec4<bool>(true, false, false, true), 534f), Struct_3(-676f, vec4<f32>(612f, 347f, -1031f, 944f))));

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-595f, -460f, 992f), i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_3(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(508f, global0.e, -1227f, -724f))), vec4<f32>(global0.e, global4.a.x, global4.a.x, 1201f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1387f, global0.c, 1000f))))), u_input.d, all(vec4<bool>(true, true, global2.x, true)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(843f, _wgslsmith_f_op_f32(-global4.a.x), global4.a.x))), global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(~global0.b)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f))), !select(select(global0.d, global0.d, false), vec4<bool>(false, true, global2.x, global0.d.x), vec4<bool>(true, true, true, true)), -1944f));
    let var_1 = !all(vec2<bool>(any(!global0.d.xz), global2.x));
    global0 = Struct_1(vec3<f32>(global0.e, _wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(global0.c)))), global0.e), global0.b, global0.c, !var_0.d.d, global4.a.x);
    var var_2 = !(!global0.d);
    var var_3 = var_2.yw;
    return global4.a.x;
}

fn func_2() -> i32 {
    global2 = global0.d.xw;
    global3 = array<Struct_5, 15>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - _wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(-global4.a.x)))));
    var var_1 = !vec2<bool>(!global2.x, _wgslsmith_f_op_f32(1709f - -809f) == _wgslsmith_f_op_f32(-global0.a.x));
    global2 = select(global0.d.wz, select(vec2<bool>(global0.d.x, any(global0.d)), !global0.d.xw, !var_1.x), global0.d.zw);
    return ~(~2147483647i);
}

fn func_1() -> Struct_5 {
    var var_0 = global0.d.wzx;
    let var_1 = select(-vec3<i32>(2147483647i, u_input.e, _wgslsmith_clamp_i32(global4.b, -12692i, -1i)), -vec3<i32>(_wgslsmith_mult_i32(u_input.e, select(2147483647i, global4.b, false)), _wgslsmith_mult_i32(u_input.a.x, -1i) ^ ~(-1i), 1i), (func_2() == _wgslsmith_sub_i32(-u_input.c.x, abs(u_input.a.x))) && !(var_0.x & all(global0.d.yxz)));
    var_0 = select(select(global0.d.yyx, !global0.d.zxw, vec3<bool>(false, false, global2.x)), !global0.d.ywz, select(global0.d.xzx, !global0.d.xyw, vec3<bool>(select(!global0.d.x, !var_0.x, !global2.x), any(global0.d.zw), true)));
    let var_2 = Struct_4(Struct_3(734f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c)) + 194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * global4.a.x)), _wgslsmith_f_op_f32(sign(1f)))), 80094u, true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_div_f32(global0.a.x, -1721f), -111f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.a, vec3<f32>(-1295f, 1712f, global4.a.x), global0.d.wwx)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x)))), select(global0.d, !vec4<bool>(false, false, true, global0.d.x), global0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-239f)), -776f))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)), ~1u, global4.a.x, select(!vec4<bool>(any(var_2.d.d.xzw), global2.x, global0.d.x || true, global0.d.x), global0.d, all(!vec3<bool>(var_0.x, true, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(479f, _wgslsmith_f_op_f32(f32(-1f) * -1568f), false)) - global0.e));
    return Struct_5(var_2.d, var_2.a);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~arg_3.b;
    let var_1 = func_1().a.d.zxy;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e))), 413f);
    var var_3 = Struct_5(Struct_1(global0.a, ~4294967295u >> (~(0u << (global0.b % 32u)) % 32u), arg_3.c, vec4<bool>(true | (var_1.x & global0.d.x), true, any(!vec4<bool>(true, true, true, global2.x)), true && any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(floor(global0.e))), arg_2.b);
    var var_4 = any(vec2<bool>(arg_1.x, var_1.x));
    return var_3.b;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_1();
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global0.a)), -_wgslsmith_mod_i32(-25030i, _wgslsmith_add_i32(39699i, _wgslsmith_mult_i32(16706i, 47043i))));
    global2 = var_0.a.d.xw;
    let var_1 = vec3<f32>(144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * -853f)), any(global0.d)))), global0.a.x);
    let var_2 = func_1().a;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec2<bool>(global2.x, global2.x), global0.d.zw, !select(vec2<bool>(global2.x, true), vec2<bool>(true, true), select(global0.d.xw, global0.d.zw, false)));
    var var_0 = func_5(all(!select(global0.d.xx, global0.d.xz, select(global0.d.zw, vec2<bool>(true, false), vec2<bool>(global0.d.x, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(max(-240f, -1711f))), _wgslsmith_f_op_f32(abs(1000f)))), func_4(~(1u << (global0.b % 32u)) & ~(~1u), !vec2<bool>(!global0.d.x, true), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.a.x, -1314f) + global0.a)), 28810u, _wgslsmith_f_op_f32(-global4.a.x), vec4<bool>(true, global0.d.x && global0.d.x, true, true), global0.c)));
    let var_1 = vec3<u32>(global0.b, _wgslsmith_sub_u32(31321u, firstLeadingBit(1u)), ~_wgslsmith_mod_u32(max(global1[_wgslsmith_index_u32(global0.b & 1u, 22u)], 1u), 4294967295u));
    global0 = func_1().a;
    var_0 = func_5(var_0.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global4.a))), func_1().b);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - global0.e), 1073f, _wgslsmith_f_op_f32(abs(global4.a.x))))) + _wgslsmith_f_op_vec3_f32(floor(global4.a))), 90672u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2074f - -157f) + var_0.a.x), !(!global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.a.x))) + -489f));
    let var_2 = vec2<bool>(any(select(vec2<bool>(var_0.d.x & var_0.d.x, var_0.d.x || true), select(vec2<bool>(false, false), !vec2<bool>(global2.x, var_0.d.x), var_0.d.xx), !(!global2.x))), false);
    var var_3 = _wgslsmith_mult_u32(u_input.b.x, global1[_wgslsmith_index_u32(33822u, 22u)]) >> (firstTrailingBit(select(~1u, ~var_0.b, true)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1317f, 1145f)), -select(u_input.c, vec2<i32>(global4.b, -14329i), func_5(var_2.x, var_0.a, Struct_3(global4.a.x, vec4<f32>(global4.a.x, var_0.c, 1173f, -635f))).d.yy));
}

