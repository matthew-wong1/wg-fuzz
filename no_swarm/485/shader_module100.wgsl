struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(0u, Struct_1(-389f, vec4<f32>(-791f, 993f, 1734f, -1164f)), Struct_3(1299f, vec2<i32>(1i, -8501i), Struct_1(1286f, vec4<f32>(-415f, 548f, 719f, 563f)), Struct_2(Struct_1(-162f, vec4<f32>(-616f, -804f, -128f, 506f)), -317f)), true, vec2<f32>(-1643f, 334f));

var<private> global1: bool = false;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(-734f, vec4<f32>(-123f, 180f, -916f, -299f)), -532f), Struct_2(Struct_1(-976f, vec4<f32>(-1000f, 449f, -1586f, -1000f)), 1548f), Struct_2(Struct_1(-790f, vec4<f32>(-827f, -780f, 894f, 916f)), -689f), Struct_2(Struct_1(1187f, vec4<f32>(359f, -684f, 141f, 1095f)), -1111f), Struct_2(Struct_1(844f, vec4<f32>(221f, 1398f, 616f, -347f)), -1236f), Struct_2(Struct_1(-320f, vec4<f32>(1371f, -140f, -654f, 1000f)), 106f), Struct_2(Struct_1(280f, vec4<f32>(1501f, 1075f, -729f, 221f)), -1000f), Struct_2(Struct_1(1931f, vec4<f32>(467f, 1398f, -473f, -1258f)), -1000f), Struct_2(Struct_1(-1702f, vec4<f32>(-1735f, -393f, 795f, -1210f)), 623f), Struct_2(Struct_1(1800f, vec4<f32>(695f, 231f, 1002f, 390f)), -110f), Struct_2(Struct_1(-1079f, vec4<f32>(-514f, 1885f, 468f, -787f)), 345f), Struct_2(Struct_1(-520f, vec4<f32>(838f, -734f, -560f, 886f)), -717f), Struct_2(Struct_1(816f, vec4<f32>(1191f, 431f, 1685f, 582f)), -130f), Struct_2(Struct_1(-217f, vec4<f32>(-1462f, -1193f, 116f, 484f)), -134f), Struct_2(Struct_1(-192f, vec4<f32>(480f, -581f, -785f, 2467f)), 819f), Struct_2(Struct_1(1760f, vec4<f32>(-636f, -484f, 899f, 195f)), 919f), Struct_2(Struct_1(687f, vec4<f32>(-452f, 446f, 583f, 1139f)), 234f), Struct_2(Struct_1(1145f, vec4<f32>(812f, -327f, 1000f, 1000f)), -500f), Struct_2(Struct_1(-1157f, vec4<f32>(-1192f, -658f, 1350f, 1692f)), -155f), Struct_2(Struct_1(1236f, vec4<f32>(-844f, -1550f, 1891f, -1163f)), 250f), Struct_2(Struct_1(681f, vec4<f32>(1000f, 1302f, 1296f, 1118f)), -628f), Struct_2(Struct_1(-866f, vec4<f32>(1173f, 121f, -553f, -991f)), -1000f), Struct_2(Struct_1(1337f, vec4<f32>(-943f, 1350f, -193f, -1230f)), -386f), Struct_2(Struct_1(494f, vec4<f32>(-307f, 1142f, -718f, -813f)), -1736f), Struct_2(Struct_1(-1093f, vec4<f32>(606f, -530f, -1438f, -131f)), -985f), Struct_2(Struct_1(1291f, vec4<f32>(-1868f, 194f, -2162f, -570f)), 1004f), Struct_2(Struct_1(290f, vec4<f32>(-1370f, -274f, 428f, 457f)), -852f), Struct_2(Struct_1(1611f, vec4<f32>(299f, 928f, -417f, 2204f)), -714f), Struct_2(Struct_1(1562f, vec4<f32>(403f, -897f, -890f, -1542f)), -1178f), Struct_2(Struct_1(-1000f, vec4<f32>(1000f, -1366f, 992f, -1188f)), -1282f), Struct_2(Struct_1(-721f, vec4<f32>(-1000f, 1615f, -336f, 1765f)), -977f), Struct_2(Struct_1(241f, vec4<f32>(1134f, -632f, -1025f, 329f)), -2103f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global1 = global0.d;
    global1 = _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, global0.a), _wgslsmith_div_u32(~23519u, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)), ~(~17201u))) == ~373u;
    var var_0 = select(!select(!select(vec4<bool>(false, false, global0.d, true), vec4<bool>(global0.d, global0.d, global0.d, false), false), !(!vec4<bool>(true, global0.d, false, global0.d)), global0.d), vec4<bool>((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), global0.c.b) << (1u % 32u)) > ~countOneBits(global0.c.b.x), global0.d | global0.d, _wgslsmith_clamp_i32(~2147483647i, firstTrailingBit(-2147483647i), -24050i) < _wgslsmith_div_i32(u_input.d.x, i32(-1i) * -1i), global0.d), select(select(select(vec4<bool>(global0.d, false, false, global0.d), vec4<bool>(global0.d, true, false, global0.d), !global0.d), vec4<bool>(all(vec3<bool>(false, global0.d, global0.d)), false, all(vec4<bool>(global0.d, global0.d, false, global0.d)), !global0.d), vec4<bool>(any(vec2<bool>(global0.d, false)), any(vec2<bool>(global0.d, true)), !global0.d, global0.d)), vec4<bool>(global0.d, false, global0.d, global0.d), global0.d));
    var var_1 = select(!global0.d, global0.d, countOneBits(~1u) >= global0.a);
    var var_2 = Struct_3(1000f, vec2<i32>(u_input.d.x, -2147483647i), global0.c.c, Struct_2(global0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)))));
    return -452f;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -242f;
    global0 = Struct_4(global0.a, Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, 706f, global0.d)) + global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(global0.c.a * 487f)), -1000f)), Struct_3(297f, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, global0.c.b.x), -global0.c.b), arg_0, Struct_2(Struct_1(_wgslsmith_f_op_f32(-1689f - -790f), _wgslsmith_f_op_vec4_f32(-arg_0.b)), -653f)), global0.d | (_wgslsmith_dot_vec2_i32(global0.c.b, u_input.a.wz) != -1i), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, global0.c.d.a.a), _wgslsmith_f_op_vec2_f32(trunc(global0.e))));
    let var_1 = _wgslsmith_div_i32(abs(abs(-_wgslsmith_sub_i32(1257i, u_input.d.x))), countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(3344i, -5258i), global0.c.b.x << (79096u % 32u)), ~28561i)));
    global1 = false;
    let var_2 = _wgslsmith_f_op_f32(186f * arg_0.a);
    return !select(select(vec3<bool>(var_1 <= -2147483647i, any(vec3<bool>(false, global0.d, false)), any(vec3<bool>(global0.d, global0.d, true))), vec3<bool>(true, true, true), select(!vec3<bool>(global0.d, global0.d, true), vec3<bool>(false, global0.d, global0.d), !vec3<bool>(true, false, global0.d))), !vec3<bool>(false, !global0.d, false & global0.d), vec3<bool>(~38398u < u_input.e.x, !any(vec4<bool>(false, global0.d, global0.d, global0.d)), _wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1() -> f32 {
    global2 = all(select(select(!vec3<bool>(global0.d, false, global0.d), func_2(Struct_1(992f, global0.c.c.b)), vec3<bool>(true, true, true)), select(!vec3<bool>(false, global0.d, global0.d), !vec3<bool>(false, global0.d, false), true), func_2(global0.b))) & (func_2(global0.c.c).x | false);
    let var_0 = -vec4<i32>(16863i, firstTrailingBit(~(-u_input.a.x)), -_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_div_i32(6066i, global0.c.b.x)), -11806i);
    var var_1 = vec4<u32>(u_input.e.x, global0.a, 55874u, 54955u);
    var var_2 = Struct_4(u_input.b, Struct_1(669f, global0.b.b), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a))), vec2<i32>(0i, var_0.x | 0i), global0.c.c, global0.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f * -336f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2758f, global0.b.b.x)) * -1350f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f * global0.b.b.x) * global0.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 712f)) + vec2<f32>(global0.e.x, -911f))) - _wgslsmith_f_op_vec2_f32(global0.e - _wgslsmith_f_op_vec2_f32(-global0.b.b.xx))));
    global2 = ~4294967295u != ~reverseBits(var_2.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.e.x, var_2.e.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global0.c.c.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.x, -530f) + -793f))), _wgslsmith_f_op_f32(ceil(-630f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = global0.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.d.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-global0.b.a))))));
    var var_2 = true;
    global2 = any(select(vec4<bool>(true, false | global0.d, !global0.d, true | global0.d), !vec4<bool>(true, true, false, global0.d), false)) && true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1088f), countOneBits(1u), -72517i, vec2<u32>(_wgslsmith_clamp_u32(~(~u_input.c), select(~u_input.b, ~u_input.b, !global0.d), u_input.c), global0.a), global0.e.x);
}

