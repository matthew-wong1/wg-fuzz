struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u, false, Struct_1(vec3<f32>(-830f, -1000f, 560f), true, 0u, vec3<f32>(2115f, -480f, 377f), vec2<f32>(-347f, -471f)), vec4<u32>(6595u, 1u, 61176u, 40493u), vec4<u32>(1u, 39113u, 4294967295u, 0u));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<f32>(1000f, 884f, 1460f), true, 1u, vec3<f32>(926f, -2015f, -1012f), vec2<f32>(2479f, 1781f)), Struct_1(vec3<f32>(487f, -1406f, -296f), false, 5202u, vec3<f32>(-1000f, -1494f, 2224f), vec2<f32>(-1570f, 504f)), Struct_1(vec3<f32>(714f, 1426f, -1287f), true, 21796u, vec3<f32>(952f, 256f, 1265f), vec2<f32>(-823f, -1545f)), Struct_1(vec3<f32>(-111f, -1000f, -919f), true, 29908u, vec3<f32>(833f, 1733f, 216f), vec2<f32>(-2322f, -2077f)), Struct_1(vec3<f32>(704f, 527f, -516f), true, 49111u, vec3<f32>(1907f, -1034f, -869f), vec2<f32>(-1825f, 387f)), Struct_1(vec3<f32>(1523f, -1551f, -384f), true, 1u, vec3<f32>(-860f, 281f, -890f), vec2<f32>(229f, -1436f)), Struct_1(vec3<f32>(-246f, -335f, -394f), false, 0u, vec3<f32>(527f, -614f, -172f), vec2<f32>(-1384f, -161f)), Struct_1(vec3<f32>(-944f, -2964f, 1722f), false, 45016u, vec3<f32>(-986f, -672f, -740f), vec2<f32>(-2257f, 412f)), Struct_1(vec3<f32>(-535f, -1000f, -342f), false, 1u, vec3<f32>(286f, 1285f, 581f), vec2<f32>(482f, 110f)), Struct_1(vec3<f32>(133f, -489f, 296f), true, 6542u, vec3<f32>(139f, 439f, -840f), vec2<f32>(-814f, 1951f)), Struct_1(vec3<f32>(-220f, -173f, -777f), true, 1u, vec3<f32>(-1000f, -451f, 1441f), vec2<f32>(-783f, 993f)), Struct_1(vec3<f32>(849f, -1965f, 641f), false, 1u, vec3<f32>(635f, -1000f, 272f), vec2<f32>(1000f, -1330f)), Struct_1(vec3<f32>(903f, 349f, 121f), false, 15604u, vec3<f32>(898f, -519f, -1000f), vec2<f32>(-398f, 489f)), Struct_1(vec3<f32>(797f, -434f, 588f), false, 16410u, vec3<f32>(527f, 267f, -739f), vec2<f32>(379f, -528f)), Struct_1(vec3<f32>(-871f, -2438f, -214f), false, 17734u, vec3<f32>(-699f, 166f, -188f), vec2<f32>(-247f, -674f)), Struct_1(vec3<f32>(357f, 665f, -1335f), false, 23927u, vec3<f32>(-446f, 659f, -532f), vec2<f32>(-1558f, -938f)), Struct_1(vec3<f32>(270f, 395f, -498f), true, 4294967295u, vec3<f32>(1021f, 1213f, 131f), vec2<f32>(-653f, 485f)), Struct_1(vec3<f32>(-699f, -125f, -629f), false, 0u, vec3<f32>(-2207f, 824f, 1713f), vec2<f32>(1000f, -795f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.e.x))), _wgslsmith_f_op_f32(708f + -655f), true)), _wgslsmith_f_op_f32(select(global0.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.e.x) - global0.c.e.x), global0.b)), _wgslsmith_f_op_f32(global0.c.e.x + _wgslsmith_f_op_f32(floor(1000f)))), global0.c.b, firstLeadingBit(max(global0.e.x, countOneBits(~4294967295u))), _wgslsmith_div_vec3_f32(global0.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c.e.x, -475f, global0.c.e.x), vec3<f32>(-105f, global0.c.a.x, global0.c.d.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.a.x, -109f, global0.c.a.x), vec3<f32>(320f, -1000f, 1000f), vec3<bool>(global0.b, global0.c.b, global0.b))) * vec3<f32>(global0.c.e.x, -1296f, global0.c.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(-1101f - global0.c.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1437f * global0.c.a.x))))));
    let var_1 = abs(vec2<u32>(1u, _wgslsmith_div_u32(global0.c.c, 34387u)));
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(~max(_wgslsmith_add_vec3_u32(global0.e.zxz, vec3<u32>(1u, 15791u, 25692u)), ~global0.e.xyy), global0.e.yyw), var_0.b, Struct_1(var_0.a, var_0.b, abs(abs(var_0.c)), var_0.a, vec2<f32>(-272f, var_0.d.x)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(max(1047u, 1u), countOneBits(global0.e.x), var_0.c, ~20309u), global0.e)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~reverseBits(global0.e), vec4<u32>(73920u, global0.a, global0.a, 74654u) ^ (vec4<u32>(86880u, 4294967295u, var_0.c, var_1.x) >> (vec4<u32>(var_1.x, 73381u, var_0.c, global0.d.x) % vec4<u32>(32u)))), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, arg_0, global0.c.c), global0.e), arg_0, 67657u, 21323u))));
    global0 = Struct_3(~min(~6443u, reverseBits(1u)), all(!vec2<bool>(true, var_0.b && global0.c.b)), global0.c, countOneBits(vec4<u32>(1u, global0.c.c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, global0.e.x, 45002u), ~1u), ~(~3626u))), _wgslsmith_sub_vec4_u32(~select(_wgslsmith_div_vec4_u32(global0.e, vec4<u32>(145u, var_0.c, arg_0, 33776u)), ~vec4<u32>(4294967295u, 25122u, var_1.x, var_0.c), select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(false, var_0.b, true, false), vec4<bool>(var_0.b, var_0.b, false, false))), global0.d));
    let var_2 = Struct_3(33808u, all(vec4<bool>(var_0.b, var_0.b, !global0.b, all(vec2<bool>(var_0.b, var_0.b)))) | false, var_0, max(global0.e ^ ~vec4<u32>(4294967295u, arg_0, arg_0, var_0.c), ~reverseBits(abs(vec4<u32>(0u, var_1.x, var_0.c, arg_0)))), countOneBits(_wgslsmith_mult_vec4_u32(min(countOneBits(vec4<u32>(var_0.c, var_1.x, 22098u, var_0.c)), global0.e), ~(~global0.e))));
    return ~(~(~countOneBits(global0.a))) | 17842u;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(-1i);
    var var_1 = arg_0.c.a.x;
    let var_2 = select(!vec4<bool>(false, arg_0.b, true, all(vec2<bool>(true, global0.c.b))), vec4<bool>(arg_0.c.b, !any(vec2<bool>(true, true)), false, !(!global0.c.b)), arg_0.c.b == (~global0.d.x == abs(firstTrailingBit(arg_0.d.x))));
    let var_3 = Struct_3(arg_0.a, any(var_2), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.a.x, _wgslsmith_f_op_f32(round(global0.c.d.x)), 1198f), vec3<f32>(1014f, _wgslsmith_f_op_f32(select(arg_0.c.d.x, global0.c.e.x, true)), _wgslsmith_f_op_f32(global0.c.d.x + 731f))), u_input.c <= _wgslsmith_sub_i32(2147483647i, u_input.a.x ^ u_input.a.x), global0.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.e.x, -568f, -202f))) - vec3<f32>(495f, 598f, -292f)) + _wgslsmith_f_op_vec3_f32(-global0.c.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_0.c.d.yx))))), ~(~arg_0.e), vec4<u32>(34761u, ~(countOneBits(global0.e.x) & 78823u), 1u, ~reverseBits(func_3(4294967295u))));
    var_0 = Struct_2(-var_0.a);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.a.x, -200f) * _wgslsmith_f_op_f32(1000f * 153f))), 647f), _wgslsmith_f_op_f32(f32(-1f) * -2602f));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_2((u_input.d >> (~(~1u) % 32u)) >> (reverseBits(~countOneBits(41184u)) % 32u));
    global1 = array<Struct_1, 18>();
    var var_1 = Struct_3(global0.d.x, !(u_input.d < ~1i) || any(!(!vec3<bool>(global0.c.b, global0.c.b, false))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.x) - global0.c.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.e.x) - -259f), _wgslsmith_f_op_f32(func_2(Struct_3(global0.e.x, global0.c.b, Struct_1(global0.c.d, global0.b, arg_1, vec3<f32>(global0.c.a.x, global0.c.a.x, global0.c.e.x), global0.c.a.xx), global0.d, global0.e)))), !(~global0.a <= arg_1), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, global0.e.x), vec3<u32>(global0.a, arg_1, 0u)), max(global0.d.yww, vec3<u32>(48166u, 116801u, 48287u))) >> (global0.a % 32u), vec3<f32>(-271f, global0.c.a.x, 241f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.c.d.xx + vec2<f32>(global0.c.d.x, -879f)), _wgslsmith_f_op_vec2_f32(-global0.c.a.zx), !vec2<bool>(global0.b, global0.b))))), vec4<u32>(0u, ~_wgslsmith_sub_u32(38387u, 31785u), 4294967295u, 1u) >> (vec4<u32>(0u | _wgslsmith_add_u32(47652u, global0.a), global0.d.x, (32537u << (0u % 32u)) >> (arg_1 % 32u), 55644u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~global0.d, ~select(vec4<u32>(global0.d.x, 0u, global0.c.c, arg_1) >> (vec4<u32>(global0.c.c, 12373u, global0.d.x, 0u) % vec4<u32>(32u)), global0.e, !vec4<bool>(global0.c.b, true, global0.c.b, global0.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -839f), var_1.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f), 712f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.d.x - -706f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(arg_1, var_1.b, Struct_1(global0.c.d, var_1.c.b, global0.c.c, var_1.c.a, vec2<f32>(global0.c.e.x, global0.c.d.x)), vec4<u32>(arg_1, 0u, arg_1, 0u), global0.d))), global0.c.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.c.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a.x) + var_1.c.a.x)))));
    let var_3 = global0.c;
    return Struct_3(var_3.c, any(select(vec4<bool>(false, all(vec4<bool>(false, false, true, true)), global0.c.b && var_1.b, false), !(!vec4<bool>(global0.b, false, global0.c.b, var_1.b)), !vec4<bool>(global0.b, var_3.b, var_1.c.b, global0.b))), Struct_1(var_2.wzw, true, global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-512f, global0.c.e.x, var_1.c.a.x))) + var_3.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.d.x, 1014f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -686f)))))), vec4<u32>(0u, ~(38809u | global0.a), ~1u ^ ~_wgslsmith_sub_u32(24956u, global0.a), global0.a), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    let var_0 = ~(~(~(~(-u_input.a.x))));
    var var_1 = func_1(Struct_2(-5201i), ~(~_wgslsmith_mult_u32(33014u ^ global0.c.c, global0.c.c)));
    global1 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(-(0i >> (0u % 32u)), firstLeadingBit(var_0) >> (4294967295u % 32u), u_input.b.x, var_0), select(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.b.x), abs(u_input.c), _wgslsmith_clamp_i32(var_0, var_0, u_input.d), 1i), u_input.b >> (vec4<u32>(global0.e.x, var_1.a, 4294967295u, 10650u) % vec4<u32>(32u)), any(!vec4<bool>(var_1.c.b, global0.c.b, true, true)))), vec3<i32>(reverseBits(-1i), var_0, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.e.x, -312f))) * _wgslsmith_f_op_vec2_f32(exp2(global0.c.d.zx))) + _wgslsmith_f_op_vec2_f32(step(global0.c.d.xy, vec2<f32>(959f, -1000f))))), global0.c.e.x);
}

