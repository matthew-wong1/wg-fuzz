struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<f32>(-374f, -1321f, -1000f), vec3<f32>(2114f, 796f, -1505f), vec4<u32>(0u, 27965u, 27571u, 110005u), Struct_1(vec3<u32>(105480u, 4294967295u, 100111u), false)), Struct_3(vec3<f32>(-210f, -155f, -449f), vec3<f32>(1251f, -716f, 664f), vec4<u32>(307u, 1u, 28079u, 1u), Struct_1(vec3<u32>(493u, 46351u, 4294967295u), true)), Struct_3(vec3<f32>(-1329f, -1000f, -112f), vec3<f32>(-674f, 745f, 179f), vec4<u32>(1u, 1u, 72926u, 0u), Struct_1(vec3<u32>(3073u, 0u, 0u), false)), Struct_3(vec3<f32>(1016f, -2104f, -1586f), vec3<f32>(-1594f, -799f, -1307f), vec4<u32>(14802u, 1u, 13558u, 11179u), Struct_1(vec3<u32>(0u, 4294967295u, 22843u), true)), Struct_3(vec3<f32>(-1000f, -387f, 164f), vec3<f32>(134f, -460f, 1048f), vec4<u32>(18070u, 57257u, 26805u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 70399u, 35021u), true)), Struct_3(vec3<f32>(386f, 283f, -1593f), vec3<f32>(-1067f, 547f, -583f), vec4<u32>(1u, 1u, 1u, 74498u), Struct_1(vec3<u32>(0u, 4294967295u, 0u), true)), Struct_3(vec3<f32>(-1296f, 335f, -1510f), vec3<f32>(-1708f, 565f, 226f), vec4<u32>(34441u, 74228u, 57022u, 4294967295u), Struct_1(vec3<u32>(37227u, 1u, 29877u), true)), Struct_3(vec3<f32>(-555f, -656f, -440f), vec3<f32>(-844f, -707f, 812f), vec4<u32>(4294967295u, 4294967295u, 14003u, 19911u), Struct_1(vec3<u32>(20396u, 810u, 4294967295u), false)), Struct_3(vec3<f32>(-915f, 499f, -928f), vec3<f32>(581f, -601f, 351f), vec4<u32>(0u, 1252u, 0u, 43906u), Struct_1(vec3<u32>(4294967295u, 1u, 44876u), true)), Struct_3(vec3<f32>(-1024f, 1083f, 3081f), vec3<f32>(722f, 2133f, -151f), vec4<u32>(4294967295u, 5334u, 75781u, 0u), Struct_1(vec3<u32>(44423u, 18363u, 4294967295u), true)), Struct_3(vec3<f32>(-1000f, -456f, -656f), vec3<f32>(1656f, -1360f, 1374f), vec4<u32>(0u, 4750u, 0u, 1u), Struct_1(vec3<u32>(0u, 1u, 38218u), true)), Struct_3(vec3<f32>(-1081f, -127f, 120f), vec3<f32>(-1146f, 1695f, 1251f), vec4<u32>(0u, 15043u, 1u, 0u), Struct_1(vec3<u32>(14466u, 4294967295u, 1u), false)), Struct_3(vec3<f32>(1098f, 1660f, -177f), vec3<f32>(533f, 1000f, -822f), vec4<u32>(32497u, 69101u, 0u, 10051u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 19875u), false)), Struct_3(vec3<f32>(521f, -279f, 576f), vec3<f32>(-195f, 412f, -1842f), vec4<u32>(47528u, 0u, 4294967295u, 53992u), Struct_1(vec3<u32>(59741u, 16129u, 34729u), true)), Struct_3(vec3<f32>(-774f, -3201f, -421f), vec3<f32>(394f, 129f, 127f), vec4<u32>(1u, 8053u, 1u, 0u), Struct_1(vec3<u32>(5504u, 65255u, 1u), true)), Struct_3(vec3<f32>(367f, -740f, 293f), vec3<f32>(485f, -1636f, -996f), vec4<u32>(38442u, 1u, 9868u, 0u), Struct_1(vec3<u32>(1u, 44622u, 1u), false)));

var<private> global1: vec2<i32> = vec2<i32>(-1i, -27385i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~_wgslsmith_div_vec3_i32(u_input.b, abs(~(u_input.a.zxy << (arg_0.c.zwy % vec3<u32>(32u)))));
    let var_1 = true && all(vec4<bool>(all(!vec2<bool>(arg_0.d.b, arg_1.x)), false, !arg_0.d.b, true));
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 29583i), -vec2<i32>(-1i, u_input.c), vec2<i32>(global1.x, 14621i) << (vec2<u32>(arg_0.d.a.x, arg_0.d.a.x) % vec2<u32>(32u))), var_0.zx, false), var_0.zx), var_0.zy, var_0.zy);
    let var_3 = _wgslsmith_mult_u32(~arg_0.d.a.x, _wgslsmith_mod_u32(4294967295u, ~(~(~arg_0.d.a.x))));
    var var_4 = countOneBits(vec4<u32>(4400u, arg_0.d.a.x, arg_0.d.a.x | arg_0.c.x, ~var_3));
    return 1103f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, 1000f, 557f, 298f) + vec4<f32>(-1045f, -769f, -646f, 1000f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(764f, 1019f, 2327f, 1493f) + vec4<f32>(1622f, -977f, 499f, 549f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-695f, -464f, 243f, -137f)))), vec4<f32>(704f, 2106f, 1000f, _wgslsmith_f_op_f32(-1000f + -773f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-124f, _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-164f, 721f, -669f), vec3<f32>(-1014f, 1000f, 2610f), vec4<u32>(11401u, 4294967295u, 4294967295u, 0u), Struct_1(vec3<u32>(4294967295u, 21231u, 24551u), false)), vec4<bool>(false, true, true, true))), _wgslsmith_div_f32(-753f, 478f), _wgslsmith_f_op_f32(ceil(-126f)))))));
    global0 = array<Struct_3, 16>();
    return Struct_1(vec3<u32>(min(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 135946u, 4294967295u), vec3<u32>(4294967295u, 0u, 9196u)), _wgslsmith_mult_vec3_u32(vec3<u32>(45265u, 0u, 4294967295u), vec3<u32>(36479u, 183u, 1u))), ~(~52226u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29667u, 0u, 0u), vec3<u32>(2228u, 20863u, 1u)), select(26781u, 35777u, false)), 34210u), 1u), true);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-548f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f * -282f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1621f, 788f)))))));
    var var_2 = Struct_2(52229u, var_0.a.yy ^ var_0.a.xz);
    let var_3 = ~vec2<u32>(46290u, func_2().a.x);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, ~(~_wgslsmith_sub_u32(36055u, firstLeadingBit(10826u))), func_1(), _wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(30446u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 37791u), vec4<u32>(4294967295u, 4294967295u, 42245u, 1u)), 1u), _wgslsmith_clamp_u32(min(1u, 0u), 4294967295u, abs(0u))));
    var var_1 = (vec3<i32>(reverseBits(1i ^ global1.x), global1.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-34084i, global1.x, global1.x), vec3<i32>(global1.x, -6102i, global1.x), vec3<bool>(true, true, false)), u_input.b | vec3<i32>(global1.x, -2147483647i, 1i))) << (vec3<u32>(var_0.x, ~reverseBits(4294967295u), 4294967295u) % vec3<u32>(32u))) ^ select(vec3<i32>(-global1.x, 13201i, -(~(-50103i))), reverseBits(countOneBits(u_input.b)), vec3<bool>(true, true, ~var_0.x != 21401u));
    let var_2 = true;
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-128f, -1751f)) * -137f) * 433f), -348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(430f - 1432f), _wgslsmith_f_op_f32(trunc(1171f))) + -1053f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-796f, _wgslsmith_f_op_f32(max(-515f, 171f)))) + 1000f), _wgslsmith_f_op_f32(sign(-1416f))), ~(~vec4<u32>(0u, _wgslsmith_sub_u32(0u, 0u), 0u, ~0u)), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(var_0.wzz), ~vec3<u32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, 1u, var_0.x), ~vec3<u32>(var_0.x, 16388u, var_0.x))), !all(!vec4<bool>(var_2, false, true, var_2))));
    var var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_3.d.a.x ^ var_0.x, 53229u, 18697u, var_3.c.x), ~vec4<u32>(var_0.x, var_0.x, var_0.x, 1u)), ~(~(~var_3.c))), _wgslsmith_clamp_vec4_u32(~var_3.c, ~vec4<u32>(_wgslsmith_sub_u32(var_3.d.a.x, 4294967295u), 4294967295u, var_3.c.x, ~var_3.c.x), abs(~(~var_3.c))));
    let var_5 = 1056u;
    let var_6 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -14323i ^ u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, ~u_input.a), -global1.x), u_input.a));
}

