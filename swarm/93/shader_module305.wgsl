struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-624f, 781f, 1536f, 1051f), false, 56358u), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-1961f, 442f, -568f, -1699f), true, 16509u), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(1190f, -1706f, -120f, 108f), true, 0u), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(1104f, 1000f, 157f, -835f), true, 4294967295u), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(383f, -615f, 1776f, -1000f), true, 0u), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(671f, -1451f, -142f, 1000f), true, 4294967295u), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(1161f, 1022f, -890f, 286f), true, 20960u), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(429f, 268f, 297f, -2480f), true, 1u), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(717f, -3471f, 724f, 668f), true, 1u), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(558f, -488f, 1273f, 1603f), true, 1u), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-586f, -1230f, 429f, -192f), true, 9737u), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(1000f, -894f, -657f, 1109f), false, 0u), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-445f, -597f, -227f, 302f), false, 1u), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-313f, 638f, 1600f, -454f), true, 14715u), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(1711f, 1921f, 1728f, 840f), true, 1u));

var<private> global1: array<i32, 30>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(242i, 1i, 2147483647i, -17639i), vec4<i32>(0i, 1i, 22867i, 0i), vec4<i32>(-19951i, 2147483647i, 17482i, -1i), vec4<i32>(-5475i, 2147483647i, -44622i, -23112i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 22715i), vec4<i32>(-26719i, 3767i, 12097i, 2147483647i), vec4<i32>(2147483647i, -1i, -19616i, -1i), vec4<i32>(-59017i, 38454i, 1i, 2147483647i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = ~global3[_wgslsmith_index_u32(abs(4294967295u), 8u)];
    global2 = vec4<bool>(select(any(!vec3<bool>(false, global2.x, true)), true, all(global2.yyz)), global2.x, !select(any(select(global2.yx, global2.xy, global2.x)), all(vec4<bool>(global2.x, false, false, global2.x)), true), global2.x || !(!any(vec3<bool>(global2.x, global2.x, global2.x))));
    var_0 = global3[_wgslsmith_index_u32(~(~countOneBits(~u_input.c.x)), 8u)];
    let var_1 = select(vec4<bool>(true, all(select(vec3<bool>(true, true, true), !global2.ywy, any(vec3<bool>(true, global2.x, global2.x)))), all(!global2.yw), true), !select(select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, true, true, true), true), vec4<bool>(true, true, all(global2.yy), any(vec4<bool>(global2.x, true, false, global2.x))), true), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.a, 30u)] > (i32(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 30u)]), global2.x, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f - -1572f)) + _wgslsmith_f_op_f32(round(-1998f)))));
    return 0u;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 12508i, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(arg_0, 30u)])), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], ~global1[_wgslsmith_index_u32(arg_0, 30u)], 1i, global1[_wgslsmith_index_u32(arg_0, 30u)] ^ -52728i)), firstTrailingBit(_wgslsmith_mult_vec4_i32((global3[_wgslsmith_index_u32(arg_0, 8u)] << (vec4<u32>(1u, 54913u, 4294967295u, u_input.c.x) % vec4<u32>(32u))) ^ (vec4<i32>(82004i, global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(arg_0, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]) & vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 30u)], -1i, 1i)), select(-global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global2.x && global2.x))));
    let var_1 = Struct_3(vec2<u32>(4294967295u, ~(~1u)), global0[_wgslsmith_index_u32(arg_0, 15u)], true && global2.x, vec3<bool>(false, global2.x, true), Struct_2(global0[_wgslsmith_index_u32(80511u, 15u)], -1i));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.d, 4294967295u, u_input.c.x, 10446u), u_input.c), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(var_1.e.a.d, var_1.e.a.d, 0u, 4294967295u))), func_3()) | ~firstTrailingBit(~var_1.a), Struct_1(!var_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1612f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) * var_1.e.a.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(var_1.b.b.x + var_1.e.a.b.x))), _wgslsmith_f_op_f32(var_1.b.b.x * _wgslsmith_f_op_f32(exp2(var_1.b.b.x)))), false, var_1.b.d), true, var_1.e.a.a.wxy, Struct_2(Struct_1(!(!vec4<bool>(false, var_1.b.c, var_1.c, var_1.e.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.e.a.b)), !(1000f > var_1.e.a.b.x), ~1u), _wgslsmith_clamp_i32(13331i, abs(-2147483647i), 0i)));
    return vec4<bool>(any(select(select(var_1.b.a.wz, !vec2<bool>(global2.x, false), vec2<bool>(false, var_2.d.x)), vec2<bool>(true, !var_1.d.x), select(!var_2.d.yx, !global2.wy, select(var_2.e.a.a.yz, global2.xw, false)))), var_1.e.a.a.x, var_1.b.c, select(!var_1.d.x, false, any(select(vec3<bool>(true, var_2.d.x, true), var_2.e.a.a.xzx, global2.xyx))));
}

fn func_1() -> bool {
    global2 = select(func_2((1u >> (~u_input.c.x % 32u)) & _wgslsmith_dot_vec2_u32(u_input.c.xw << (u_input.c.xx % vec2<u32>(32u)), ~u_input.c.wx)), vec4<bool>(any(vec3<bool>(global2.x, global2.x, true)), any(!vec4<bool>(global2.x, global2.x, global2.x, true)), global2.x, any(!(!vec4<bool>(global2.x, false, false, global2.x)))), select(!func_2(0u), vec4<bool>(true, any(select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, true, false, global2.x))), true, global2.x), true));
    let var_0 = Struct_4(Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(u_input.b, 0u)), global0[_wgslsmith_index_u32(u_input.a, 15u)], all(vec3<bool>(all(vec2<bool>(global2.x, global2.x)), true, !global2.x)), func_2(u_input.c.x).yzz, Struct_2(Struct_1(vec4<bool>(true, false, true, global2.x), vec4<f32>(605f, -257f, 716f, -2522f), any(global2.yw), ~u_input.b), global1[_wgslsmith_index_u32(39683u, 30u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1559f), 739f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1813f, -1902f)), -468f))))), Struct_2(Struct_1(!vec4<bool>(global2.x, global2.x, global2.x, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -286f, 1250f, -545f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, -1000f, 361f, -268f))), (u_input.c.x != u_input.c.x) != true, abs(max(61689u, u_input.c.x))), -firstLeadingBit(global1[_wgslsmith_index_u32(~1u, 30u)])), u_input.c);
    var var_1 = Struct_2(Struct_1(select(select(var_0.a.e.a.a, var_0.a.b.a, vec4<bool>(global2.x, false, false, false)), var_0.a.b.a, vec4<bool>(all(global2.xxw), 7093u < u_input.b, true, -567f >= var_0.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.b.x, 145f, -780f, 814f), var_0.a.e.a.b))))), func_2(~var_0.c.a.d).x, 0u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(var_0.c.a.d, 30u)], 9287i)), ~(-vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.b.d, 30u)], 1i, -1i, global1[_wgslsmith_index_u32(u_input.a, 30u)]))), select(i32(-1i) * -11678i, _wgslsmith_dot_vec3_i32(vec3<i32>(-4064i, var_0.c.b, global1[_wgslsmith_index_u32(64170u, 30u)]), max(vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.e.a.d, 30u)], -2147483647i, var_0.a.e.b), vec3<i32>(1i, 1i, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]))), _wgslsmith_f_op_f32(round(2279f)) > -403f)));
    global2 = !var_1.a.a;
    var var_2 = var_0.a.d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(!select(vec4<bool>(false, true, true, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-313f, -1729f, -217f, 1244f) * vec4<f32>(292f, -766f, 904f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, -1747f, 1154f, -490f) * vec4<f32>(-1258f, -789f, 1115f, -793f)), func_1())))))), 15375i == global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u) << (u_input.b % 32u), 30u)], ~(~u_input.b));
    let var_1 = global2.x;
    var var_2 = Struct_3(min(u_input.c.xy, firstLeadingBit(u_input.c.xw | select(vec2<u32>(1532u, u_input.a), u_input.c.zx, global2.yx))), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 734f, -997f), vec4<f32>(var_0.b.x, -1561f, 1000f, var_0.b.x)))) * var_0.b), !(!select(global2.x, global2.x, global2.x)), var_0.d), any(select(!var_0.a, select(select(var_0.a, var_0.a, false), var_0.a, global2.x), !vec4<bool>(global2.x, var_0.c, false, global2.x))), func_2(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zw), min(var_0.d, u_input.a), _wgslsmith_dot_vec3_u32(u_input.c.xyy, u_input.c.xwz))).zyw, Struct_2(var_0, -2147483647i));
    var var_3 = Struct_2(Struct_1(vec4<bool>(true, !all(var_0.a.zx), any(!vec4<bool>(var_2.e.a.c, global2.x, var_2.b.a.x, var_2.b.a.x)), _wgslsmith_f_op_f32(abs(var_2.b.b.x)) == 1955f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-118f, var_2.e.a.b.x, -295f, -1574f) + var_2.e.a.b) * var_2.e.a.b))), !var_0.c, 4294967295u), -2147483647i);
    global3 = array<vec4<i32>, 8>();
    var_3 = Struct_2(Struct_1(select(var_3.a.a, func_2(max(var_0.d, 50413u)), var_2.e.a.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, 2240f, _wgslsmith_f_op_f32(-var_0.b.x), var_2.e.a.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.a.b.x, var_0.b.x, -406f, var_0.b.x))), !var_0.a)), var_0.a.x, var_2.b.d), _wgslsmith_mult_i32(-_wgslsmith_div_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_3.a.d, 30u)], var_2.e.b), 0i), var_2.e.b));
    var var_4 = func_2(var_2.e.a.d).zz;
    var var_5 = !func_2(abs(~var_0.d) ^ var_0.d).wy;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~max(~1u, ~_wgslsmith_mult_u32(var_2.e.a.d, var_0.d)), 30u)]);
}

