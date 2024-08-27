struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(31630i, -312f, Struct_2(vec2<i32>(-48672i, 1i), vec2<bool>(true, true), vec3<f32>(-589f, 983f, -787f), vec3<f32>(740f, -170f, -952f))), Struct_5(0i, -491f, Struct_2(vec2<i32>(-12211i, i32(-2147483648)), vec2<bool>(false, false), vec3<f32>(-1149f, -783f, 187f), vec3<f32>(-311f, 770f, -1000f))), Struct_5(-1i, -275f, Struct_2(vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, true), vec3<f32>(-282f, -686f, 953f), vec3<f32>(-425f, -621f, 1357f))), Struct_5(i32(-2147483648), 1000f, Struct_2(vec2<i32>(26765i, 814i), vec2<bool>(true, false), vec3<f32>(-706f, 384f, -280f), vec3<f32>(1107f, -469f, 254f))), Struct_5(-64621i, -1511f, Struct_2(vec2<i32>(-18016i, i32(-2147483648)), vec2<bool>(true, true), vec3<f32>(2180f, 466f, 243f), vec3<f32>(-1531f, -864f, -598f))), Struct_5(2147483647i, -736f, Struct_2(vec2<i32>(1i, -15088i), vec2<bool>(false, false), vec3<f32>(1538f, 288f, 899f), vec3<f32>(-1000f, 256f, 556f))), Struct_5(-40364i, -2886f, Struct_2(vec2<i32>(0i, 1i), vec2<bool>(false, false), vec3<f32>(311f, 910f, 1500f), vec3<f32>(171f, -309f, -1609f))), Struct_5(35725i, -565f, Struct_2(vec2<i32>(128383i, -16976i), vec2<bool>(true, true), vec3<f32>(-462f, 1000f, 714f), vec3<f32>(925f, 1046f, -696f))), Struct_5(1i, -872f, Struct_2(vec2<i32>(18625i, 1i), vec2<bool>(false, true), vec3<f32>(134f, 631f, 288f), vec3<f32>(270f, 1923f, 852f))), Struct_5(60813i, -420f, Struct_2(vec2<i32>(0i, -1i), vec2<bool>(false, false), vec3<f32>(-1000f, -980f, 569f), vec3<f32>(493f, -1000f, 1232f))), Struct_5(1i, -154f, Struct_2(vec2<i32>(16896i, -7839i), vec2<bool>(false, true), vec3<f32>(453f, -182f, -2072f), vec3<f32>(392f, -246f, -1640f))), Struct_5(13659i, -819f, Struct_2(vec2<i32>(-9358i, -38040i), vec2<bool>(false, true), vec3<f32>(129f, -175f, 753f), vec3<f32>(-920f, 1336f, 805f))), Struct_5(2147483647i, -906f, Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true), vec3<f32>(883f, -1000f, -1116f), vec3<f32>(-847f, 555f, 1371f))), Struct_5(2147483647i, -521f, Struct_2(vec2<i32>(-78149i, 2147483647i), vec2<bool>(true, false), vec3<f32>(-876f, 1000f, 216f), vec3<f32>(1177f, -100f, -1637f))), Struct_5(-6549i, -296f, Struct_2(vec2<i32>(27854i, 2147483647i), vec2<bool>(true, false), vec3<f32>(-1886f, -1024f, -672f), vec3<f32>(-901f, -1330f, -331f))), Struct_5(i32(-2147483648), 433f, Struct_2(vec2<i32>(-23220i, -10565i), vec2<bool>(true, false), vec3<f32>(-491f, 1259f, 1298f), vec3<f32>(-1239f, -1000f, 653f))), Struct_5(i32(-2147483648), 1147f, Struct_2(vec2<i32>(2147483647i, 88976i), vec2<bool>(false, false), vec3<f32>(-875f, -538f, -893f), vec3<f32>(-653f, 1000f, 795f))), Struct_5(-1i, 1487f, Struct_2(vec2<i32>(1i, -4119i), vec2<bool>(true, true), vec3<f32>(-604f, -339f, 1041f), vec3<f32>(-1081f, -1000f, -483f))), Struct_5(-75902i, 685f, Struct_2(vec2<i32>(8266i, -25803i), vec2<bool>(false, true), vec3<f32>(1000f, -865f, -336f), vec3<f32>(1127f, -1000f, -2779f))), Struct_5(35212i, 719f, Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, true), vec3<f32>(1125f, -830f, -264f), vec3<f32>(-1000f, 1503f, -1407f))), Struct_5(1i, 524f, Struct_2(vec2<i32>(2147483647i, 0i), vec2<bool>(true, true), vec3<f32>(-1791f, -643f, 898f), vec3<f32>(-1344f, 265f, 1599f))), Struct_5(9474i, 1302f, Struct_2(vec2<i32>(-56882i, 1i), vec2<bool>(false, false), vec3<f32>(469f, 1335f, 740f), vec3<f32>(1105f, 669f, 1825f))), Struct_5(55940i, -1368f, Struct_2(vec2<i32>(-19280i, 4049i), vec2<bool>(true, true), vec3<f32>(534f, -309f, 960f), vec3<f32>(266f, 1942f, -120f))), Struct_5(-38572i, -833f, Struct_2(vec2<i32>(-14074i, 2147483647i), vec2<bool>(true, true), vec3<f32>(1353f, 1280f, 1194f), vec3<f32>(971f, -549f, -596f))), Struct_5(2147483647i, -1603f, Struct_2(vec2<i32>(-27169i, 1i), vec2<bool>(false, true), vec3<f32>(345f, 1471f, 696f), vec3<f32>(1402f, -545f, -322f))), Struct_5(0i, 373f, Struct_2(vec2<i32>(24258i, 13418i), vec2<bool>(true, false), vec3<f32>(135f, 193f, 1222f), vec3<f32>(-1000f, 1067f, -521f))));

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(true, global1.a.a.x != all(!vec2<bool>(global1.a.a.x, true)), any(select(global1.a.a.xx, !global1.a.a.wy, vec2<bool>(true, true))), !select(true, true, global1.a.a.x || true));
    var var_1 = ~global1.a.b;
    var var_2 = var_1.x;
    var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34761u, var_1.x), vec3<u32>(var_1.x, global1.c, var_1.x)), (2050u ^ u_input.a.x) | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global1.c, global1.c, 1u)), abs(~10115u)), abs(vec4<u32>(global1.a.c | var_1.x, 3246u, u_input.d << (global1.a.c % 32u), u_input.d)));
    let var_3 = Struct_5(2147483647i, -160f, Struct_2(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, 2147483647i), 5289i)), global1.a.a.yw, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1084f), global1.d.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.zzz), _wgslsmith_div_vec3_f32(vec3<f32>(-206f, global1.a.d, global1.b), global1.d.wyx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.wxw)))));
    return 1u;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global1 = Struct_4(Struct_1(vec4<bool>(!(u_input.d < 58109u), (true | global1.a.a.x) | all(global1.a.a.yz), arg_0, global1.a.a.x), global1.a.b, ~firstLeadingBit(~26129u), global1.a.d), _wgslsmith_f_op_f32(global1.a.d * _wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_dot_vec2_u32(u_input.a.zx, ~vec2<u32>(func_3(), ~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(460f, global1.b, global1.d.x, 1000f), global1.d) - vec4<f32>(-641f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-global1.d.x), 851f))));
    global0 = array<Struct_5, 26>();
    let var_0 = ~(~(35198u & func_3()));
    var var_1 = select(global1.a.a, select(!select(!global1.a.a, global1.a.a, any(global1.a.a.zzy)), global1.a.a, all(global1.a.a.yzy)), false);
    var_1 = vec4<bool>(any(var_1.wxx), !(!(!arg_0)), select(false, global1.a.a.x, var_1.x), select(!arg_0, true, arg_0));
    return global1.a.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool) -> vec4<bool> {
    let var_0 = !global1.a.a.x;
    global1 = Struct_4(Struct_1(arg_1.a.a, func_2(var_0), 1u, _wgslsmith_f_op_f32(abs(-1165f))), 358f, _wgslsmith_div_u32(~0u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-global1.d));
    global0 = array<Struct_5, 26>();
    var var_1 = ~((select(_wgslsmith_mult_vec3_u32(vec3<u32>(39625u, u_input.a.x, global1.c), vec3<u32>(arg_1.a.c, arg_1.a.b.x, u_input.a.x)), abs(vec3<u32>(0u, 0u, 4294967295u)), all(vec4<bool>(false, false, true, arg_1.a.a.x))) ^ abs(countOneBits(vec3<u32>(25998u, 4294967295u, u_input.d)))) >> (vec3<u32>(0u, 4294967295u, arg_1.a.c) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(~func_2(true).x, min(countOneBits(var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(u_input.a.x, 4294967295u)))) & (abs(~u_input.d) & ~_wgslsmith_dot_vec2_u32(var_1.zz, var_1.zx)));
    return select(vec4<bool>(all(!vec2<bool>(arg_2, false)), true, !select(arg_1.a.a.x, false, true) || !arg_2, any(arg_1.a.a.xxx)), select(arg_1.a.a, arg_1.a.a, vec4<bool>(all(vec2<bool>(arg_1.a.a.x, arg_2)), all(select(vec4<bool>(arg_2, false, true, global1.a.a.x), vec4<bool>(true, global1.a.a.x, arg_1.b, arg_2), vec4<bool>(true, true, var_0, var_0))), abs(2147483647i) != (arg_0.x << (u_input.a.x % 32u)), arg_2)), select(arg_1.a.a, !vec4<bool>(global1.a.a.x || true, any(vec4<bool>(global1.a.a.x, global1.a.a.x, true, arg_2)), true, arg_1.b), all(!vec3<bool>(var_0, arg_1.a.a.x, false)) && (~u_input.b.x == u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_1(func_1(u_input.c, Struct_3(Struct_1(vec4<bool>(global1.a.a.x, true, false, true), vec4<u32>(15257u, global1.a.b.x, 4294967295u, u_input.d), 0u, global1.a.d), true), any(select(global1.a.a, vec4<bool>(false, global1.a.a.x, global1.a.a.x, global1.a.a.x), false))), _wgslsmith_mult_vec4_u32(firstTrailingBit(global1.a.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.c, global1.c, 0u, 0u), vec4<u32>(12453u, u_input.a.x, global1.c, 10569u))), ~42140u, global1.a.d), -1899f, global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d)));
    global0 = array<Struct_5, 26>();
    global0 = array<Struct_5, 26>();
    var var_0 = select(!select(global1.a.a.wzw, !func_1(u_input.c, Struct_3(global1.a, global1.a.a.x), global1.a.a.x).yyy, global1.a.a.x), vec3<bool>(_wgslsmith_f_op_f32(-1f) != _wgslsmith_f_op_f32(-global1.a.d), false, any(select(global1.a.a.zwy, global1.a.a.zyy, global1.a.a.x)) | (global1.a.a.x | true)), any(func_1(u_input.c, Struct_3(Struct_1(global1.a.a, vec4<u32>(global1.c, u_input.a.x, 1u, u_input.a.x), u_input.a.x, 1104f), global1.a.a.x), true).wx));
    var var_1 = Struct_4(global1.a, _wgslsmith_f_op_f32(global1.a.d * _wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1310f)))), ~abs(~51163u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(672f, global1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, global1.d.x))), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - global1.d.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global1.d))))))));
    let var_2 = select(~vec4<u32>(1u, 1u, ~(~5998u), min(var_1.c << (2342u % 32u), _wgslsmith_div_u32(u_input.d, var_1.a.b.x))), vec4<u32>(24501u, select(var_1.a.c, var_1.a.c, true), ~(~0u), global1.c) | firstLeadingBit(~global1.a.b), vec4<bool>(all(!global1.a.a.xxz) != all(select(global1.a.a.zxz, vec3<bool>(var_1.a.a.x, global1.a.a.x, global1.a.a.x), false)), true, any(vec4<bool>(false, var_0.x, !var_1.a.a.x, false)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b.yw, _wgslsmith_f_op_f32(1062f + _wgslsmith_f_op_f32(var_1.d.x - -221f)));
}

