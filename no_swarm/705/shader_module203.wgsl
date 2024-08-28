struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-246f, -289f, 388f, 108f), vec4<f32>(-1350f, -1623f, 985f, -164f), vec4<f32>(-1247f, -751f, -1576f, 139f), vec4<f32>(2480f, 1626f, -1119f, -467f), vec4<f32>(-607f, -373f, 1000f, -1000f), vec4<f32>(-1896f, 407f, -213f, 119f), vec4<f32>(-150f, 471f, 647f, -140f), vec4<f32>(1676f, -1278f, -287f, 951f), vec4<f32>(539f, -649f, 558f, -129f), vec4<f32>(956f, -141f, 1259f, -547f), vec4<f32>(-279f, 1594f, -2004f, -328f), vec4<f32>(639f, -267f, 1000f, -402f), vec4<f32>(2680f, -3742f, 703f, 228f), vec4<f32>(694f, -257f, -148f, -1839f), vec4<f32>(-963f, 1000f, -687f, 1432f));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(713f, 1u, vec4<f32>(-2943f, -1739f, 226f, 200f)), Struct_1(-1246f, 35462u, vec4<f32>(803f, 406f, -140f, 137f)), Struct_1(-1497f, 1u, vec4<f32>(-485f, -297f, 1068f, 2753f)), Struct_1(1151f, 41569u, vec4<f32>(265f, 105f, 1508f, 1086f)), Struct_1(-1038f, 4294967295u, vec4<f32>(-488f, -390f, 1140f, 906f)), Struct_1(-368f, 40731u, vec4<f32>(-669f, -402f, -314f, -372f)), Struct_1(180f, 53318u, vec4<f32>(339f, 331f, -706f, -1474f)), Struct_1(477f, 0u, vec4<f32>(283f, -1523f, 821f, -1637f)), Struct_1(186f, 24796u, vec4<f32>(-522f, 900f, 544f, -1230f)), Struct_1(-875f, 1u, vec4<f32>(-948f, -544f, 635f, 1317f)), Struct_1(-1000f, 11933u, vec4<f32>(-794f, 1398f, -1765f, -709f)), Struct_1(-1060f, 0u, vec4<f32>(1582f, -1508f, -1000f, 603f)), Struct_1(-743f, 4294967295u, vec4<f32>(-322f, -1447f, 1448f, 879f)), Struct_1(-734f, 4294967295u, vec4<f32>(-565f, 992f, 439f, -2438f)), Struct_1(-489f, 0u, vec4<f32>(-1869f, -1000f, -234f, 562f)), Struct_1(-2041f, 4294967295u, vec4<f32>(-603f, 842f, -1235f, 1000f)), Struct_1(-352f, 0u, vec4<f32>(-1000f, -1714f, 1601f, -1016f)), Struct_1(-988f, 61759u, vec4<f32>(-1170f, 1266f, 371f, -1460f)), Struct_1(283f, 0u, vec4<f32>(565f, -1354f, 670f, -1339f)), Struct_1(1489f, 1u, vec4<f32>(-381f, 607f, 1326f, 971f)), Struct_1(-1792f, 52773u, vec4<f32>(1739f, 1000f, -135f, -3039f)));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> bool {
    global0 = array<vec4<f32>, 15>();
    let var_0 = Struct_3(global2.x, global2.x, vec2<f32>(arg_0.x, 1106f), _wgslsmith_clamp_vec3_i32(~reverseBits(max(vec3<i32>(u_input.e, -2147483647i, u_input.e), vec3<i32>(1i, 2147483647i, u_input.e))), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -554i, u_input.e), firstTrailingBit(vec3<i32>(u_input.e, u_input.e, 19021i))), min(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.e, u_input.e, -3613i)), ~vec3<i32>(0i, u_input.e, -34996i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1735i, 28579i, u_input.e), vec3<i32>(u_input.e, 2147483647i, u_input.e))))), global1[_wgslsmith_index_u32(0u, 21u)]);
    let var_1 = _wgslsmith_mod_u32(u_input.d.x, 0u);
    global2 = select(vec2<bool>(!(!var_0.b), global2.x), select(!select(vec2<bool>(false, global2.x), select(vec2<bool>(arg_3, false), vec2<bool>(false, arg_1.e), vec2<bool>(false, true)), arg_3), select(vec2<bool>(var_0.b, true), select(vec2<bool>(true, true), vec2<bool>(arg_3, global2.x), var_0.d.x <= var_0.d.x), vec2<bool>(!global2.x, arg_3)), select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.e, false))), select(!vec2<bool>(true, arg_3), select(vec2<bool>(false, arg_3), vec2<bool>(var_0.b, false), false), true), select(select(vec2<bool>(arg_3, global2.x), vec2<bool>(arg_3, false), global2.x), vec2<bool>(false, true), true))), vec2<bool>(any(!vec4<bool>(var_0.b, global2.x, global2.x, global2.x)), false));
    global0 = array<vec4<f32>, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1075f, 276f)), _wgslsmith_div_f32(636f, arg_0.x))), 420f, any(vec2<bool>(var_0.a, arg_3))))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-749f))));
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2536f))), _wgslsmith_div_u32(abs(0u), 26898u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2602f, 251f, 580f, -691f), global0[_wgslsmith_index_u32(1u, 15u)], vec4<bool>(true, false, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(105f, 955f, -158f, 1384f) * global0[_wgslsmith_index_u32(u_input.d.x, 15u)]))), global1[_wgslsmith_index_u32(u_input.a << (u_input.b % 32u), 21u)], global2.x, u_input.c, !func_3(vec4<f32>(879f, -272f, -915f, 1172f), Struct_2(global1[_wgslsmith_index_u32(0u, 21u)], Struct_1(-1223f, 4294967295u, vec4<f32>(-843f, 1010f, 1131f, 2522f)), global2.x, u_input.c, global2.x), 1323f, true)), Struct_1(-1653f, ~u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(reverseBits(u_input.b), 15u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(1u, 15u)]))))), _wgslsmith_clamp_u32(1u, select(u_input.a, 4294967295u, false) & u_input.a, ~u_input.b), vec3<i32>(-u_input.e, 1i, u_input.e));
    let var_1 = (abs(23633u << (var_0.b.b % 32u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u) << (firstLeadingBit(u_input.d.yw) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.a)) % 32u)) & _wgslsmith_dot_vec3_u32(u_input.d.wxw, ~(u_input.d.xww >> (~u_input.d.yzw % vec3<u32>(32u))));
    var var_2 = 4294967295u;
    let var_3 = Struct_4(Struct_2(var_0.a.a, global1[_wgslsmith_index_u32(20438u, 21u)], !(select(u_input.e, -12810i, global2.x) > min(-2147483647i, var_0.d.x)), var_0.c, true), var_0.b, u_input.b | u_input.d.x, ~reverseBits(~vec3<i32>(-9357i, -31834i, var_0.d.x)));
    var var_4 = var_1;
    return all(vec4<bool>(!any(!vec3<bool>(false, false, global2.x)), true, select(var_3.a.e, global2.x, u_input.d.x != 1u), !func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1159f, var_3.a.a.c.x, 1019f, var_0.b.c.x), vec4<f32>(353f, var_0.b.a, -661f, var_3.a.b.c.x))), var_0.a, _wgslsmith_f_op_f32(2000f - 605f), all(vec3<bool>(var_0.a.c, true, false)))));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = select(vec4<bool>(-39314i >= _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-8952i, 30181i), vec2<i32>(u_input.e, u_input.e)), -vec2<i32>(1i, 32476i)), true, func_2() | select(all(vec4<bool>(global2.x, arg_0, false, false)), func_3(vec4<f32>(-340f, -1200f, 284f, 281f), Struct_2(Struct_1(-679f, 2323u, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global2.x, u_input.d.x, true), 602f, global2.x), global2.x), global2.x), select(!select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, global2.x, false), true), vec4<bool>(true, true, global2.x, false), !arg_0), vec4<bool>(true, func_2(), arg_0, !arg_0), !vec4<bool>(!global2.x, arg_0, global2.x, arg_0)), select(all(vec3<bool>(false, false, true)) | !all(vec3<bool>(global2.x, arg_0, arg_0)), (global2.x && true) | any(!vec3<bool>(global2.x, false, false)), (~u_input.e == countOneBits(13408i)) && ((u_input.e ^ -2716i) == _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -29591i, u_input.e), vec4<i32>(2147483647i, u_input.e, u_input.e, u_input.e)))));
    var var_1 = (_wgslsmith_sub_i32(max(0i, _wgslsmith_mult_i32(u_input.e, u_input.e)), u_input.e) << (firstTrailingBit(~select(u_input.d.x, 27267u, false)) % 32u)) == ~(-13919i >> (1u % 32u));
    global2 = var_0.ww;
    var var_2 = firstTrailingBit(vec3<i32>(-u_input.e, max(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23076i, u_input.e), vec2<i32>(-7616i, -1i)), u_input.e), -1i), ~(-u_input.e & ~u_input.e)));
    var var_3 = arg_0;
    return var_0.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1282f);
    let var_1 = u_input.d;
    global2 = select(!(!(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, true), vec2<bool>(global2.x, false)))), select(!func_1(false), select(select(vec2<bool>(true, global2.x), select(vec2<bool>(false, false), vec2<bool>(global2.x, global2.x), vec2<bool>(true, false)), u_input.e == u_input.e), !select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), true), global2.x), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(global2.x, false), true), vec2<bool>(true, true)), func_1(!global2.x), true)), !((u_input.e < u_input.e) | global2.x));
    var var_2 = firstTrailingBit(~abs(vec4<i32>(u_input.e, -2147483647i, u_input.e, -7323i) & vec4<i32>(-2147483647i, 7276i, u_input.e, u_input.e))) & vec4<i32>(-1i, u_input.e, abs(i32(-1i) * -1i), min(_wgslsmith_mult_i32(-2147483647i, abs(u_input.e)), _wgslsmith_add_i32(_wgslsmith_div_i32(-19261i, u_input.e), -75504i)));
    let var_3 = 0u;
    global2 = select(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i) & var_2.zy, firstTrailingBit(vec2<i32>(-53949i, u_input.e))) == -1i, global2.x), !func_1(global2.x), true);
    var var_4 = Struct_2(Struct_1(420f, var_1.x, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(1f, _wgslsmith_mult_u32(38880u, 34959u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(abs(4294967295u), 15u)], vec4<f32>(122f, -112f, 1000f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-143f * -527f))))), !func_2(), 0u, !(_wgslsmith_clamp_i32(var_2.x, -1i, countOneBits(var_2.x)) > 1i));
    global2 = !vec2<bool>(false, !(!(var_4.b.c.x < var_4.b.c.x)));
    let var_5 = _wgslsmith_sub_vec2_u32(var_1.zw, select(vec2<u32>(47051u, u_input.d.x), vec2<u32>(var_4.a.b, ~(var_1.x | 70370u)), var_4.c | false));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

