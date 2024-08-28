struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1507f, -1014f, -394f, 573f, 275f, -297f, -2115f, 786f, 324f, 597f, 1370f);

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec4<f32>(168f, -1464f, 558f, -798f), false), true, -30374i, Struct_1(false, vec4<f32>(1152f, -611f, 1259f, 1000f), true), -13742i);

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, vec4<f32>(419f, 764f, 853f, -259f), false), Struct_1(false, vec4<f32>(-483f, -458f, 610f, -218f), true), Struct_1(false, vec4<f32>(924f, 1035f, 1959f, -1013f), true), Struct_1(true, vec4<f32>(-1195f, 1448f, -2752f, 320f), true), Struct_1(true, vec4<f32>(547f, -752f, 965f, 486f), true), Struct_1(true, vec4<f32>(-1000f, 949f, -311f, -698f), false), Struct_1(false, vec4<f32>(1000f, -653f, 1149f, -155f), true), Struct_1(true, vec4<f32>(115f, -439f, -593f, 1257f), true), Struct_1(true, vec4<f32>(-792f, 1383f, -1112f, 977f), false), Struct_1(true, vec4<f32>(125f, 1897f, 429f, 1297f), false), Struct_1(false, vec4<f32>(-348f, -1196f, 1000f, -2059f), true), Struct_1(false, vec4<f32>(814f, -491f, 1266f, 1000f), true), Struct_1(false, vec4<f32>(1064f, -463f, 909f, -699f), false), Struct_1(false, vec4<f32>(-533f, 1500f, -919f, 745f), false), Struct_1(false, vec4<f32>(-1000f, 1334f, -911f, -1000f), false), Struct_1(true, vec4<f32>(656f, 311f, -1177f, -1242f), false), Struct_1(true, vec4<f32>(-753f, 278f, 1231f, 550f), false), Struct_1(true, vec4<f32>(516f, 915f, -1685f, -230f), true), Struct_1(false, vec4<f32>(-821f, 1146f, 981f, -458f), true), Struct_1(true, vec4<f32>(2131f, 657f, 586f, 1926f), true), Struct_1(true, vec4<f32>(954f, 938f, 1590f, 1000f), false), Struct_1(false, vec4<f32>(-1044f, 2017f, 1285f, -474f), true), Struct_1(false, vec4<f32>(159f, 1674f, 408f, 346f), false), Struct_1(false, vec4<f32>(662f, -564f, -731f, 581f), false), Struct_1(true, vec4<f32>(-545f, 550f, -955f, 998f), true), Struct_1(false, vec4<f32>(589f, -1462f, 152f, 1017f), true), Struct_1(false, vec4<f32>(-268f, 670f, 922f, 752f), true), Struct_1(false, vec4<f32>(1731f, -965f, -805f, 1813f), true), Struct_1(false, vec4<f32>(-1003f, 308f, -1000f, 748f), true), Struct_1(false, vec4<f32>(2136f, -947f, 1000f, 1384f), false), Struct_1(false, vec4<f32>(-1228f, -129f, 203f, -1404f), false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_mult_i32(global1.c, ~global1.c << (~reverseBits(1u) % 32u));
    var_0 = ~(u_input.a.x & _wgslsmith_mod_i32(-16925i, max(35456i, 2147483647i)));
    return -275f;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(global1.d, global1.d.c, max(u_input.b, reverseBits(2147483647i >> (abs(1u) % 32u))), global1.a, 2147483647i);
    global1 = Struct_2(var_0.d, all(!vec4<bool>(false, true, true, any(vec2<bool>(global2.x, var_0.b)))), i32(-1i) * -1i, Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d.b.x, var_0.a.b.x, -204f, global0[_wgslsmith_index_u32(u_input.c, 11u)]))))), true), -(i32(-1i) * -(~u_input.a.x)));
    let var_1 = global2.yy;
    global1 = Struct_2(global3[_wgslsmith_index_u32(u_input.c, 31u)], true, u_input.b, Struct_1(!all(!vec4<bool>(global1.a.a, false, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.b, global1.a.b) + _wgslsmith_f_op_vec4_f32(floor(var_0.a.b))), !(!(false | global1.a.a))), _wgslsmith_mod_i32(_wgslsmith_div_i32(~abs(u_input.a.x), -33051i << (min(u_input.c, 40787u) % 32u)), 0i));
    return select(vec4<bool>(false, var_0.b, global1.a.c && all(vec3<bool>(true, true, true)), true), !vec4<bool>(true & any(vec2<bool>(true, false)), !(!var_0.b), any(!global2.xz), !(global2.x || false)), vec4<bool>(any(vec2<bool>(u_input.c >= 34890u, var_0.b)), select(false, true, any(!vec4<bool>(true, var_0.d.c, var_0.d.c, var_1.x))), select(var_1.x, var_1.x, any(select(vec3<bool>(false, false, global1.b), vec3<bool>(var_0.b, global1.a.a, global2.x), false))), true & (!global1.a.c == all(global2.xy))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(all(func_3()), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global1.d.b, vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 11u)], global1.d.b.x, -572f, 566f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, global1.d.b.x, global1.d.b.x, arg_0.x))))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(53477u, u_input.c, 9981u), ~vec3<u32>(786u, 4294967295u, u_input.c)), 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 11u)])))), !select(func_3(), vec4<bool>(global1.d.c, global1.b, false, true), any(vec2<bool>(false, global1.d.c))))), _wgslsmith_mod_i32(-45025i, _wgslsmith_dot_vec3_i32(select(u_input.a, u_input.a, vec3<bool>(true, global1.d.c, true)), u_input.a)) != (firstLeadingBit(18677i) << (min(u_input.c, 4294967295u) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)));
    var var_2 = min(~vec4<u32>(15024u, ~(arg_1 | arg_1), select(abs(u_input.c), 0u, any(global2.zx)), arg_1), ~firstTrailingBit(vec4<u32>(countOneBits(u_input.c), ~84779u, arg_1, ~0u)));
    var var_3 = Struct_2(Struct_1(!func_3().x, _wgslsmith_f_op_vec4_f32(sign(var_0.b)), !var_0.c | any(vec4<bool>(false, true, false, true))), all(select(select(vec2<bool>(var_1, false), !vec2<bool>(true, global1.d.c), any(vec3<bool>(var_0.a, var_1, global1.b))), vec2<bool>(true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 27023u, u_input.c, 9285u), vec4<u32>(2068u, 1u, 0u, var_2.x)) >= ~1u)), 2147483647i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1.e, global1.c, u_input.a.x) & vec4<i32>(global1.e, u_input.a.x, u_input.b, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2114i, global1.c, global1.c), vec4<i32>(global1.e, u_input.b, global1.c, u_input.b))), vec4<i32>(_wgslsmith_add_i32(global1.c, global1.c), -2147483647i, u_input.a.x, 0i)), global1.d, min(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.a.x | -23179i), global1.e) ^ u_input.a.x);
    return Struct_1(var_0.a, vec4<f32>(586f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_2.x, 11u)], _wgslsmith_f_op_f32(-225f - -1368f))), -428f, _wgslsmith_f_op_f32(f32(-1f) * -1105f)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)] + -1000f), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(global2.x, vec2<u32>(35910u, 0u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~46064i))))), countOneBits(~(max(44983u, u_input.c) >> (~4829u % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.zxx, vec3<f32>(-1697f, -1456f, -263f)) - vec3<f32>(750f, -316f, -737f)))) - var_0.b.zzx) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 221f, 1358f));
    global1 = Struct_2(Struct_1(((u_input.c <= 42605u) & var_0.a) && !global2.x, global1.a.b, true), true, ~max(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, 0i, u_input.b)) & firstTrailingBit(-43318i), -global1.e >> (0u % 32u)), func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f), 138f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(473f))), func_2(var_0.b.xzw, _wgslsmith_sub_u32(4294967295u, 2297u)).b.x), 1u), u_input.b);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.xyy)), 24731u).b.x)));
    let var_4 = true;
    global3 = array<Struct_1, 31>();
    let var_5 = 40588i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(~vec4<u32>(u_input.c, u_input.c, u_input.c, 72839u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(47358u, 0u, u_input.c, u_input.c) & vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c), u_input.c, u_input.c, 1u)), reverseBits(vec4<u32>(7739u, 0u, u_input.c, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, u_input.c), min(u_input.c, 6830u), min(5760u, 0u)))), ~u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.b.x * -1147f))))), var_0.b.x));
}

