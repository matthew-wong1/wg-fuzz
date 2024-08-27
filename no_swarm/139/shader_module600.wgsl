struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-755f, 160f, 233f, 1970f), vec4<f32>(-1144f, -219f, -221f, -408f), vec4<f32>(-1092f, 1000f, 253f, -499f), vec4<f32>(1000f, -434f, -1249f, 1000f), vec4<f32>(1067f, -2019f, -367f, -1713f), vec4<f32>(1266f, 1125f, 187f, 254f), vec4<f32>(-121f, -1200f, 511f, 965f), vec4<f32>(-211f, -672f, 1035f, 170f), vec4<f32>(165f, 258f, 527f, -782f), vec4<f32>(412f, -190f, -1394f, 169f), vec4<f32>(-654f, -624f, -1648f, 354f), vec4<f32>(-326f, -484f, 267f, -1018f), vec4<f32>(-1475f, 377f, 1258f, 896f), vec4<f32>(363f, -361f, 1000f, 3386f), vec4<f32>(-1187f, 235f, -1363f, -1238f), vec4<f32>(-1740f, 120f, 1134f, 1000f), vec4<f32>(-1425f, 2076f, 2336f, 938f), vec4<f32>(-541f, 1697f, -181f, -1454f), vec4<f32>(-1046f, -566f, -225f, 1716f), vec4<f32>(-741f, -627f, -1500f, 612f), vec4<f32>(725f, 456f, 535f, -454f));

var<private> global1: array<u32, 20> = array<u32, 20>(4163u, 113600u, 0u, 25952u, 88691u, 8483u, 26052u, 8834u, 328u, 78253u, 4294967295u, 68194u, 40450u, 61904u, 0u, 1u, 5890u, 7124u, 22165u, 17556u);

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(-269f, 1000f), -49342i, 717f, vec3<f32>(167f, -1537f, 139f), vec4<bool>(true, false, true, true))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(-244f, 1194f), 1i, -221f, vec3<f32>(186f, 558f, -261f), vec4<bool>(true, false, false, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(-1603f, -197f), 1i, 1051f, vec3<f32>(266f, -766f, 383f), vec4<bool>(true, true, false, false))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(-1000f, 1094f), 1i, -579f, vec3<f32>(-1914f, 318f, -1288f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(1275f, -1000f), -51907i, -321f, vec3<f32>(-1217f, 524f, 879f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(1112f, 315f), 1i, 415f, vec3<f32>(-612f, 627f, -1751f), vec4<bool>(false, true, true, false))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<f32>(-1000f, 2018f), -13104i, -446f, vec3<f32>(533f, 389f, 404f), vec4<bool>(false, false, true, false))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(512f, -103f), -17667i, 192f, vec3<f32>(1444f, 575f, 2121f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-123f, -753f), i32(-2147483648), 2150f, vec3<f32>(916f, -1299f, 1000f), vec4<bool>(true, false, false, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-1820f, -1755f), 0i, 189f, vec3<f32>(214f, -1244f, 2747f), vec4<bool>(true, false, false, true))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(250f, 313f), 0i, 190f, vec3<f32>(809f, 725f, -831f), vec4<bool>(true, false, false, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(328f, 703f), 0i, 216f, vec3<f32>(-839f, 1088f, -751f), vec4<bool>(false, true, true, true))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-252f, -769f), -1i, -338f, vec3<f32>(759f, -313f, 1255f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-615f, -1072f), -35551i, -888f, vec3<f32>(984f, 1260f, 826f), vec4<bool>(true, false, false, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(1796f, -205f), 15942i, 303f, vec3<f32>(-969f, 2709f, 1610f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<f32>(-1000f, -386f), 0i, -570f, vec3<f32>(1395f, -886f, 243f), vec4<bool>(false, true, false, true))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<f32>(-306f, -297f), -52412i, -2399f, vec3<f32>(-407f, -219f, -1411f), vec4<bool>(false, false, true, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(1739f, -214f), 2147483647i, 2356f, vec3<f32>(114f, 435f, 528f), vec4<bool>(true, true, false, true))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-1000f, 1431f), -1i, 296f, vec3<f32>(-954f, 1307f, -237f), vec4<bool>(true, false, false, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<f32>(-1258f, 524f), 0i, -1167f, vec3<f32>(1000f, -1755f, -122f), vec4<bool>(false, false, false, false))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<f32>(849f, 1000f), i32(-2147483648), 630f, vec3<f32>(-287f, 1145f, 450f), vec4<bool>(true, false, false, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(581f, -1937f), -45111i, -738f, vec3<f32>(1000f, 251f, -241f), vec4<bool>(true, false, true, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(348f, 409f), i32(-2147483648), 393f, vec3<f32>(-1000f, -951f, -2236f), vec4<bool>(false, false, false, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(1067f, 987f), 24933i, -555f, vec3<f32>(490f, 1893f, 113f), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(-1016f, -1000f), 0i, 980f, vec3<f32>(881f, -602f, 1114f), vec4<bool>(true, false, false, true))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(2289f, -158f), 0i, 1244f, vec3<f32>(278f, 758f, 548f), vec4<bool>(true, false, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-362f, 251f), 16207i, -947f, vec3<f32>(336f, 159f, 340f), vec4<bool>(true, false, false, true))));

var<private> global3: u32 = 1u;

var<private> global4: array<bool, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global4 = array<bool, 10>();
    return u_input.e;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1089f * 296f) + _wgslsmith_f_op_f32(round(-498f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1359f), -361f)), false)) * -1717f), -1587f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-290f, var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, var_0.x))))))), func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -289f), 1439f, _wgslsmith_div_f32(-1944f, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), var_0.x, _wgslsmith_f_op_f32(-var_0.x))), select(vec4<bool>(all(vec3<bool>(true, true, global4[_wgslsmith_index_u32(37594u, 10u)])), all(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 10u)], global4[_wgslsmith_index_u32(u_input.c.x, 10u)])), all(!vec2<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], 10u)], true)), any(select(vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 10u)], false), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 10u)], true, true), vec3<bool>(global4[_wgslsmith_index_u32(1u, 10u)], false, false)))), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 10u)], true, global4[_wgslsmith_index_u32(u_input.d, 10u)]), vec4<bool>(global4[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 20u)]), 20u)], 20u)]), 10u)], func_3(vec3<f32>(-578f, -479f, -1602f)) == ~12326i, any(select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 10u)], global4[_wgslsmith_index_u32(u_input.d, 10u)]), vec2<bool>(global4[_wgslsmith_index_u32(56850u, 10u)], true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 10u)], global4[_wgslsmith_index_u32(0u, 10u)]))), _wgslsmith_f_op_f32(floor(425f)) != 2375f)));
    let var_2 = ~var_1.b;
    let var_3 = Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 7878u, 0u) | _wgslsmith_div_u32(u_input.a, 1u), 10u)], true), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(218f * var_1.a.x), _wgslsmith_f_op_f32(min(-428f, -139f))))), func_3(_wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-var_1.d))), -829f, _wgslsmith_f_op_vec3_f32(floor(var_1.d)), !(!(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 10u)], true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45183u, 20u)], 10u)], false)))));
    var var_4 = vec3<u32>(_wgslsmith_clamp_u32(20098u, 35920u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], _wgslsmith_div_u32(78156u | u_input.d, select(0u, 0u, true)))), 60439u, global1[_wgslsmith_index_u32(u_input.d, 20u)]);
    return var_1;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = abs(_wgslsmith_mult_u32(~firstTrailingBit(~39685u), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, 5393u, 0u), 1u)));
    let var_3 = Struct_3(var_0.e.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(var_1.d.zz)), _wgslsmith_f_op_vec2_f32(-var_1.d.yx))))), 1i, 603f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1295f, 544f))) + func_2().d))), vec4<bool>(all(select(var_1.e.xwz, var_0.e.wxw, vec3<bool>(true, var_0.e.x, true))), var_1.e.x, _wgslsmith_div_i32(-2147483647i, 22116i) == ~var_0.b, var_1.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.d.x))), -1369f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1082f, var_1.c, -2246f)), !var_1.e));
    let var_4 = -29959i;
    return var_3;
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.c << (vec3<u32>(select(1u, countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32105u, 20u)], 20u)] ^ global1[_wgslsmith_index_u32(1u, 20u)]), false), u_input.a << (u_input.a % 32u), min(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(44659u, 6278u, u_input.a, u_input.a), vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(13209u, 20u)], 0u, u_input.d)), _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 66882u))), 20u)], ~_wgslsmith_mod_u32(63373u, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))) % vec3<u32>(32u));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-973f, 257f, -392f, _wgslsmith_f_op_f32(trunc(-1018f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 165f, -1418f, 1582f)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)])), vec4<f32>(_wgslsmith_f_op_f32(840f + 295f), _wgslsmith_div_f32(-637f, 409f), _wgslsmith_f_op_f32(-2027f * -2675f), _wgslsmith_f_op_f32(f32(-1f) * -791f)))) - vec4<f32>(742f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1057f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1121f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(657f, -663f)) - _wgslsmith_f_op_f32(f32(-1f) * -572f))));
    global2 = array<Struct_2, 27>();
    var var_1 = global1[_wgslsmith_index_u32(~func_4(func_1()), 20u)];
    global4 = array<bool, 10>();
    var var_2 = global4[_wgslsmith_index_u32(abs(1u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_u32(u_input.c.zz, countOneBits(vec2<u32>(u_input.a, 15092u)), u_input.c.zy), vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(abs(29393u), 10u)])) ^ vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 69416u), 4294967295u), -1i);
}

