struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(4294967295u, 38757u, 0u), vec3<u32>(71655u, 47181u, 0u), vec3<u32>(1u, 32554u, 4294967295u), vec3<u32>(38731u, 51425u, 4294967295u), vec3<u32>(1u, 50785u, 0u), vec3<u32>(4356u, 0u, 1584u), vec3<u32>(4294967295u, 87178u, 17113u), vec3<u32>(22060u, 57888u, 1u), vec3<u32>(0u, 12029u, 45769u), vec3<u32>(29651u, 1u, 0u), vec3<u32>(41995u, 7674u, 32202u), vec3<u32>(4294967295u, 72123u, 20316u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(30938u, 4691u, 201u));

var<private> global2: Struct_2;

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1545f, 216f, -1284f), vec3<f32>(274f, 923f, 1210f), vec3<f32>(1566f, 1472f, -707f), vec3<f32>(-1305f, 1000f, 1228f), vec3<f32>(-2010f, -347f, 1812f), vec3<f32>(427f, 2093f, -1053f), vec3<f32>(1402f, -998f, -954f), vec3<f32>(479f, -593f, -1000f), vec3<f32>(1261f, -922f, -2086f), vec3<f32>(424f, -538f, 1712f), vec3<f32>(-1092f, -759f, 131f), vec3<f32>(-184f, -2523f, -276f), vec3<f32>(1000f, -1280f, -493f), vec3<f32>(101f, -566f, 465f), vec3<f32>(246f, -346f, 1405f), vec3<f32>(-294f, -280f, 824f), vec3<f32>(1414f, 694f, -491f), vec3<f32>(-856f, -1966f, -2539f), vec3<f32>(-591f, -737f, -864f), vec3<f32>(-1538f, 702f, -1011f), vec3<f32>(-1698f, 1245f, -334f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(~(~_wgslsmith_mult_vec2_i32(u_input.b.yw, u_input.b.wx)));
    let var_1 = Struct_1(-var_0.a);
    global2 = Struct_2(global2.a);
    let var_2 = Struct_2(var_1);
    let var_3 = u_input.e.x <= 35326u;
    return !(!select(vec4<bool>(true, true, all(vec4<bool>(var_3, false, false, var_3)), !var_3), !vec4<bool>(var_3, var_3, false, false), vec4<bool>(var_3 || true, false, all(vec3<bool>(true, var_3, false)), all(vec3<bool>(true, true, var_3)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = !select(func_3(), func_3(), ~1u <= firstTrailingBit(1u));
    var var_1 = Struct_1(~vec2<i32>(-60271i, -1i));
    var var_2 = ~vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 4294967295u) >> (vec3<u32>(24540u, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, 0u) ^ vec3<u32>(0u, u_input.e.x, 26696u)), u_input.e.x ^ _wgslsmith_div_u32(u_input.d.x, u_input.d.x & u_input.d.x));
    var var_3 = arg_0.x;
    var var_4 = -1000f;
    return Struct_2(Struct_1(max(vec2<i32>(arg_2, u_input.b.x) << (var_2.zz % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, global2.a.a.x) << (vec2<u32>(7781u, 14902u) % vec2<u32>(32u)), countOneBits(var_1.a)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = 1u;
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.a.a, global2.a.a), abs(vec2<i32>(arg_0.a.a.x, arg_2.a.x))), arg_0.a.a), vec2<i32>(-reverseBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a.x, -996i), arg_2.a) | (arg_2.a.x >> (0u % 32u)))) < arg_1;
    global2 = arg_0;
    let var_2 = vec3<u32>(~(_wgslsmith_clamp_u32(~u_input.e.x, ~var_0, ~u_input.a) >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(u_input.a, var_0))) % 32u)), u_input.d.x, 4294967295u);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(-1088f * -501f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-477f + -1044f)), -1085f))), vec4<f32>(803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(521f, _wgslsmith_f_op_f32(-1000f * -785f), all(vec4<bool>(false, var_1, true, var_1))))), 686f, 608f));
    return _wgslsmith_sub_i32(func_2(var_3.wwx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1435f)) - _wgslsmith_f_op_vec2_f32(var_3.ww - vec2<f32>(-1085f, var_3.x))), ~(-5492i), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 0i, arg_1, 7650i), u_input.b)).a.a.x, _wgslsmith_mod_i32(arg_2.a.x, -2147483647i)) < 1i;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = -1247f;
    var var_1 = vec4<i32>(u_input.b.x, u_input.c.x, abs(u_input.b.x), global2.a.a.x);
    var var_2 = vec4<u32>(28041u, ~(~22652u), firstTrailingBit(max(1u, ~4294967295u)), arg_0) << (vec4<u32>(~u_input.d.x, 9629u, 1u, 1u) % vec4<u32>(32u));
    let var_3 = func_2(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(arg_0 | arg_0), var_2.x), 21u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(200f, _wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, arg_1))))), -_wgslsmith_add_i32(20827i, firstTrailingBit(var_1.x)), reverseBits(_wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.x, var_1.x, 21410i, var_1.x), countOneBits(vec4<i32>(u_input.b.x, u_input.c.x, -2147483647i, var_1.x)), -u_input.b)))).a.a;
    var var_4 = u_input.e.yx;
    return abs(~vec4<u32>(firstLeadingBit(reverseBits(0u)), u_input.a, 1u, 4294967295u));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = vec4<u32>(~(~4294967295u), u_input.d.x, u_input.d.x, 0u);
    var_0 = func_5(var_0.x, 836f, vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(arg_1, false), vec2<bool>(arg_0, true))) && false, func_4(func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(436f, 852f, 1946f), global3[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, 1000f)), global2.a.a.x, -u_input.b), -firstLeadingBit(-1i), global2.a, -17101i), arg_1, !(!any(vec2<bool>(false, false)))));
    global3 = array<vec3<f32>, 21>();
    global3 = array<vec3<f32>, 21>();
    let var_1 = select(select(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, arg_1), true), select(vec3<bool>(true, true, !arg_1), select(!vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_1)), vec3<bool>(any(vec2<bool>(false, true)), func_4(Struct_2(global2.a), u_input.c.x, global2.a, global2.a.a.x), any(vec3<bool>(arg_1, false, arg_1)))), !(!all(vec3<bool>(false, false, false)))), func_3().xzz, arg_0);
    return Struct_2(global2.a);
}

fn func_6(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(822f, -522f, -636f, -1001f), vec4<f32>(459f, 1440f, -1306f, -1944f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, 777f, -190f, 643f) * vec4<f32>(-169f, 1419f, -115f, -132f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1632f), -1718f, _wgslsmith_f_op_f32(f32(-1f) * -1114f), 416f))));
    global3 = array<vec3<f32>, 21>();
    return true;
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = true;
    let var_0 = firstTrailingBit(-51290i);
    global1 = array<vec3<u32>, 14>();
    let var_1 = global2.a;
    var var_2 = firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.a, 11843u), vec4<u32>(27700u, arg_0.x, 1u, arg_0.x))), reverseBits(~u_input.e.x)));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = func_7(u_input.e.yz, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_6(func_1(false, true)), false)), func_1(~func_5(0u, 1302f, vec4<bool>(false, true, true, false)).x != u_input.a, true && !(13212u <= u_input.e.x)), -996f);
    let var_2 = ~reverseBits(~u_input.e.x | u_input.e.x);
    let var_3 = _wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_sub_i32(countOneBits(_wgslsmith_div_i32(32047i, -56447i) >> (var_2 % 32u)), ~0i));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + -382f) + 1f), _wgslsmith_f_op_f32(1715f + _wgslsmith_div_f32(-482f, 1000f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1624f)), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f + 1569f)) * _wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(trunc(2492f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2381f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(855f, 1180f)) - 452f)))), _wgslsmith_f_op_f32(step(-160f, -610f)));
    var_0 = Struct_1(firstLeadingBit(func_7(~(~vec2<u32>(u_input.a, u_input.e.x)), vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_vec3_f32(-var_4.yww), _wgslsmith_f_op_vec2_f32(-var_4.xw), ~u_input.c.x, u_input.b), _wgslsmith_div_f32(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(step(-181f, var_4.x)))).a));
    var_0 = func_1(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_4.xz)))) - _wgslsmith_div_vec2_f32(vec2<f32>(-465f, var_4.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-772f, 1000f) + vec2<f32>(-462f, var_4.x)))) + var_4.xx), global3[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(810f)))))), 1000f), -1209f);
}

