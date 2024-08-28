struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(38895u, 42291u, 4294967295u));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_3(1688u, vec3<bool>(true, true, false), true), -5590i, Struct_2(vec4<bool>(true, true, true, false), true, Struct_1(-133f, true, vec4<f32>(-1000f, 839f, -451f, -975f)), 5031i, 732f), vec2<u32>(65999u, 58737u), Struct_3(0u, vec3<bool>(true, true, false), false)), Struct_4(Struct_3(13128u, vec3<bool>(true, false, true), true), 0i, Struct_2(vec4<bool>(false, true, true, true), false, Struct_1(-206f, true, vec4<f32>(756f, 1123f, 590f, 1000f)), -65413i, -546f), vec2<u32>(15514u, 0u), Struct_3(0u, vec3<bool>(false, true, true), true)), Struct_4(Struct_3(22419u, vec3<bool>(false, false, true), true), -1162i, Struct_2(vec4<bool>(true, false, false, true), false, Struct_1(655f, false, vec4<f32>(-1352f, -840f, -4337f, -287f)), -11049i, 1837f), vec2<u32>(47485u, 1u), Struct_3(83630u, vec3<bool>(true, false, false), true)), Struct_4(Struct_3(1u, vec3<bool>(true, false, false), true), -32806i, Struct_2(vec4<bool>(true, true, false, true), false, Struct_1(-1000f, false, vec4<f32>(-452f, -932f, 1396f, 515f)), 33912i, -1000f), vec2<u32>(0u, 4294967295u), Struct_3(74937u, vec3<bool>(true, false, false), true)), Struct_4(Struct_3(4294967295u, vec3<bool>(true, false, false), false), 0i, Struct_2(vec4<bool>(true, false, false, true), false, Struct_1(-512f, true, vec4<f32>(-1329f, 1071f, 2516f, 580f)), 0i, -947f), vec2<u32>(17098u, 46561u), Struct_3(1u, vec3<bool>(false, true, true), false)), Struct_4(Struct_3(11720u, vec3<bool>(true, false, false), false), -78266i, Struct_2(vec4<bool>(false, true, true, false), false, Struct_1(-261f, true, vec4<f32>(-341f, -1295f, 1594f, -1930f)), 1154i, 1424f), vec2<u32>(51234u, 11262u), Struct_3(30684u, vec3<bool>(true, true, true), true)), Struct_4(Struct_3(0u, vec3<bool>(false, true, false), false), -1i, Struct_2(vec4<bool>(true, true, true, false), true, Struct_1(1715f, true, vec4<f32>(-181f, -300f, 1074f, -177f)), 1755i, 705f), vec2<u32>(4294967295u, 1u), Struct_3(1u, vec3<bool>(true, false, true), false)), Struct_4(Struct_3(40589u, vec3<bool>(true, false, true), false), -57917i, Struct_2(vec4<bool>(true, true, true, false), false, Struct_1(1000f, true, vec4<f32>(1130f, -653f, 1009f, -1137f)), 22543i, 578f), vec2<u32>(26288u, 32408u), Struct_3(1u, vec3<bool>(true, false, true), true)), Struct_4(Struct_3(4294967295u, vec3<bool>(false, false, false), false), -44507i, Struct_2(vec4<bool>(false, true, true, true), false, Struct_1(-316f, false, vec4<f32>(1000f, 521f, 194f, 536f)), 2147483647i, -243f), vec2<u32>(11049u, 81258u), Struct_3(0u, vec3<bool>(true, true, false), true)), Struct_4(Struct_3(17108u, vec3<bool>(true, false, false), false), 6342i, Struct_2(vec4<bool>(true, true, false, false), true, Struct_1(-1029f, false, vec4<f32>(155f, -1000f, -605f, -1242f)), 0i, 1321f), vec2<u32>(0u, 0u), Struct_3(4294967295u, vec3<bool>(false, true, false), true)), Struct_4(Struct_3(1u, vec3<bool>(false, true, true), true), -28927i, Struct_2(vec4<bool>(false, true, true, true), true, Struct_1(-528f, false, vec4<f32>(1000f, -851f, -1000f, 610f)), 2147483647i, 1905f), vec2<u32>(4294967295u, 0u), Struct_3(0u, vec3<bool>(true, true, false), true)), Struct_4(Struct_3(1u, vec3<bool>(false, true, true), false), 14022i, Struct_2(vec4<bool>(true, false, true, false), true, Struct_1(-1316f, false, vec4<f32>(849f, 2349f, 200f, 287f)), 46102i, -134f), vec2<u32>(32281u, 14570u), Struct_3(4294967295u, vec3<bool>(true, false, false), false)), Struct_4(Struct_3(0u, vec3<bool>(false, false, false), false), 43259i, Struct_2(vec4<bool>(false, false, false, true), false, Struct_1(-320f, false, vec4<f32>(438f, -125f, 1291f, 452f)), 1i, 1347f), vec2<u32>(0u, 4294967295u), Struct_3(26963u, vec3<bool>(false, false, true), false)), Struct_4(Struct_3(2555u, vec3<bool>(true, true, false), false), 2147483647i, Struct_2(vec4<bool>(false, true, true, true), true, Struct_1(104f, true, vec4<f32>(-435f, 1000f, 1000f, -662f)), 2147483647i, -414f), vec2<u32>(24595u, 0u), Struct_3(4294967295u, vec3<bool>(true, true, false), false)), Struct_4(Struct_3(85801u, vec3<bool>(true, true, true), true), 1i, Struct_2(vec4<bool>(true, true, true, true), false, Struct_1(-872f, false, vec4<f32>(-1188f, -647f, -390f, 775f)), -15807i, -173f), vec2<u32>(89642u, 4294967295u), Struct_3(15158u, vec3<bool>(true, false, true), true)), Struct_4(Struct_3(87434u, vec3<bool>(false, true, true), false), 36210i, Struct_2(vec4<bool>(true, false, true, true), true, Struct_1(1000f, false, vec4<f32>(-1809f, -831f, 1129f, 857f)), -63285i, 1103f), vec2<u32>(21881u, 1u), Struct_3(6359u, vec3<bool>(false, true, true), false)), Struct_4(Struct_3(49986u, vec3<bool>(false, false, false), false), 36544i, Struct_2(vec4<bool>(false, true, false, true), true, Struct_1(-580f, true, vec4<f32>(-1000f, 288f, -814f, -973f)), 46356i, 1218f), vec2<u32>(1u, 1u), Struct_3(56889u, vec3<bool>(false, true, false), true)), Struct_4(Struct_3(39064u, vec3<bool>(false, false, true), false), 2147483647i, Struct_2(vec4<bool>(false, true, false, false), false, Struct_1(-1005f, false, vec4<f32>(1000f, 729f, -522f, -1189f)), -14463i, -1904f), vec2<u32>(0u, 1u), Struct_3(4393u, vec3<bool>(true, true, false), false)), Struct_4(Struct_3(8956u, vec3<bool>(true, true, false), true), 26464i, Struct_2(vec4<bool>(true, true, true, true), false, Struct_1(712f, true, vec4<f32>(164f, 1000f, 1383f, 454f)), -36897i, 737f), vec2<u32>(1u, 39685u), Struct_3(0u, vec3<bool>(true, true, false), true)), Struct_4(Struct_3(223u, vec3<bool>(false, false, false), true), 40016i, Struct_2(vec4<bool>(true, true, true, true), false, Struct_1(1509f, true, vec4<f32>(328f, 161f, -526f, 894f)), 38373i, 742f), vec2<u32>(4294967295u, 1u), Struct_3(1u, vec3<bool>(true, false, true), false)), Struct_4(Struct_3(23229u, vec3<bool>(false, true, true), true), -859i, Struct_2(vec4<bool>(true, true, true, true), true, Struct_1(797f, true, vec4<f32>(553f, 325f, -1292f, -792f)), 21422i, -1000f), vec2<u32>(3660u, 1u), Struct_3(20200u, vec3<bool>(true, false, true), false)), Struct_4(Struct_3(145912u, vec3<bool>(false, false, false), true), -12058i, Struct_2(vec4<bool>(true, true, false, false), false, Struct_1(-214f, false, vec4<f32>(-640f, 1000f, 186f, 270f)), 1i, 297f), vec2<u32>(27450u, 7969u), Struct_3(14699u, vec3<bool>(true, true, true), false)), Struct_4(Struct_3(1u, vec3<bool>(true, true, true), false), -1i, Struct_2(vec4<bool>(false, false, false, false), true, Struct_1(582f, true, vec4<f32>(-1190f, 402f, -121f, 1000f)), 2147483647i, -189f), vec2<u32>(1u, 648u), Struct_3(39347u, vec3<bool>(false, false, true), true)), Struct_4(Struct_3(4294967295u, vec3<bool>(false, true, true), true), -5323i, Struct_2(vec4<bool>(true, true, false, true), true, Struct_1(827f, false, vec4<f32>(1782f, -1000f, -945f, 447f)), 38732i, 1601f), vec2<u32>(53600u, 42909u), Struct_3(37587u, vec3<bool>(true, true, false), true)), Struct_4(Struct_3(0u, vec3<bool>(true, true, true), true), 0i, Struct_2(vec4<bool>(false, false, true, false), true, Struct_1(476f, false, vec4<f32>(1153f, 1432f, 284f, 2301f)), 50800i, 497f), vec2<u32>(1u, 10560u), Struct_3(1683u, vec3<bool>(true, true, true), true)), Struct_4(Struct_3(0u, vec3<bool>(true, false, true), true), -7422i, Struct_2(vec4<bool>(false, false, false, true), true, Struct_1(288f, false, vec4<f32>(1132f, -188f, 121f, 756f)), i32(-2147483648), -1140f), vec2<u32>(3139u, 4294967295u), Struct_3(43622u, vec3<bool>(false, false, false), false)), Struct_4(Struct_3(4294967295u, vec3<bool>(true, false, false), true), 0i, Struct_2(vec4<bool>(false, true, true, true), false, Struct_1(-1111f, false, vec4<f32>(437f, -1921f, 1000f, 1214f)), -39704i, -146f), vec2<u32>(4294967295u, 7248u), Struct_3(4294967295u, vec3<bool>(true, false, false), true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = -(~34205i);
    let var_1 = min(~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(48844u, u_input.c, 4294967295u), global1[_wgslsmith_index_u32(u_input.c, 1u)]), global1[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 1u)], abs(global1[_wgslsmith_index_u32(u_input.a, 1u)]))), min(global1[_wgslsmith_index_u32(u_input.c, 1u)], countOneBits(~vec3<u32>(55295u, u_input.c, 0u))));
    let var_2 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(-(arg_1.x ^ -2147483647i), -42360i)), -(i32(-1i) * -4181i), max(-u_input.b, ~firstLeadingBit(_wgslsmith_mult_i32(-15026i, u_input.b))), 2147483647i);
    let var_3 = vec3<i32>(-1i, max(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -2147483647i), 0i) & _wgslsmith_sub_i32(max(u_input.b, -1i), arg_1.x)), -8104i);
    var var_4 = 14356i;
    return !select(select(!(!vec3<bool>(global0.x, global0.x, true)), select(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, true)), vec3<bool>(global0.x, global0.x, true), !vec3<bool>(true, global0.x, false)), vec3<bool>(false, all(vec2<bool>(global0.x, true)), false)), vec3<bool>(global0.x, false || global0.x, global0.x), false);
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global3 = array<Struct_4, 27>();
    let var_0 = arg_0.x > (firstTrailingBit(u_input.a) >> (_wgslsmith_mod_u32(38563u, ~_wgslsmith_add_u32(4294967295u, u_input.c)) % 32u));
    let var_1 = Struct_1(1072f, global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -759f, global2.x, global2.x)))));
    let var_2 = vec2<f32>(-1071f, 361f);
    var var_3 = firstLeadingBit(firstLeadingBit(0u));
    return Struct_3(~11610u, select(!func_3(_wgslsmith_f_op_f32(var_1.a * global2.x), ~vec2<i32>(-35069i, 22837i)), !(!(!vec3<bool>(var_1.b, false, global0.x))), func_3(_wgslsmith_f_op_f32(step(1107f, _wgslsmith_f_op_f32(ceil(var_2.x)))), vec2<i32>(u_input.b, ~(-73247i)))), var_1.b);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec2<u32>(u_input.a, ~(~(~u_input.c))));
    var var_1 = func_2(vec2<u32>(~(~max(var_0.a, 4294967295u)), firstLeadingBit(min(0u, var_0.a) ^ var_0.a)));
    var var_2 = _wgslsmith_clamp_vec3_i32(~(abs(vec3<i32>(12815i, u_input.b, u_input.b) >> (global1[_wgslsmith_index_u32(var_1.a, 1u)] % vec3<u32>(32u))) << (~vec3<u32>(var_0.a, 137974u, 0u) % vec3<u32>(32u))), vec3<i32>(~2147483647i, -6276i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(min(1i, _wgslsmith_clamp_i32(-65528i, u_input.b, u_input.b)), select(1i, u_input.b, true) | (i32(-1i) * -2147483647i), u_input.b), ~(-abs(vec3<i32>(u_input.b, u_input.b, -14792i))), ~countOneBits(~vec3<i32>(38535i, u_input.b, 16077i))));
    var var_3 = global0.x;
    let var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(step(global2.x, global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(global2.x)))))), !(!(var_0.b.x || (var_0.a < 103337u))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-2009f - _wgslsmith_f_op_f32(trunc(global2.x))), -1752f, _wgslsmith_f_op_f32(round(-1237f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(abs(0u | (_wgslsmith_dot_vec2_u32(vec2<u32>(34039u, 4294967295u) >> (vec2<u32>(3969u, u_input.a) % vec2<u32>(32u)), max(vec2<u32>(42675u, u_input.c), vec2<u32>(0u, 8482u))) ^ u_input.c)), 27u)];
    var var_1 = _wgslsmith_f_op_f32(-var_0.c.e);
    var var_2 = func_1();
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1609f * 820f), _wgslsmith_f_op_f32(round(-1306f))));
    global0 = func_3(1f, vec2<i32>(-1i, u_input.b)).zz;
    global2 = var_0.c.c.c.wzw;
    let var_3 = var_0.c.c;
    global1 = array<vec3<u32>, 1>();
    var_1 = -393f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(-(~vec4<i32>(u_input.b, -14531i, u_input.b, var_0.c.d)))), vec2<f32>(-172f, var_2.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.c.zw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, var_0.c.e)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.c.xx))))), 62064u, firstLeadingBit(80154u));
}

