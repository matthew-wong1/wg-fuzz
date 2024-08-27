struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(-1085f, 376f, -1622f), 71406u, vec3<f32>(-1759f, -568f, -1990f), vec4<f32>(695f, -165f, -144f, 154f), vec4<u32>(0u, 14211u, 1u, 29484u)), Struct_1(vec3<f32>(947f, -1235f, -874f), 4294967295u, vec3<f32>(2186f, -501f, 1000f), vec4<f32>(-207f, 401f, 2688f, 468f), vec4<u32>(0u, 1u, 17460u, 0u)), Struct_1(vec3<f32>(-360f, 1000f, -1000f), 1u, vec3<f32>(-1961f, -991f, 544f), vec4<f32>(-518f, 640f, -1000f, -1009f), vec4<u32>(0u, 3150u, 21569u, 1u)), Struct_1(vec3<f32>(-730f, 877f, -1212f), 37328u, vec3<f32>(1382f, 620f, 314f), vec4<f32>(122f, -1043f, 446f, -1000f), vec4<u32>(17957u, 25190u, 8640u, 4294967295u)), Struct_1(vec3<f32>(828f, -373f, 388f), 6043u, vec3<f32>(-567f, -1000f, -529f), vec4<f32>(418f, -1865f, 1000f, -546f), vec4<u32>(18123u, 0u, 60437u, 416u)), Struct_1(vec3<f32>(146f, 381f, 1000f), 1u, vec3<f32>(-1936f, 282f, 1201f), vec4<f32>(-674f, 886f, -589f, -469f), vec4<u32>(30693u, 4294967295u, 1u, 47940u)), Struct_1(vec3<f32>(401f, -1214f, 690f), 1u, vec3<f32>(-800f, 133f, 255f), vec4<f32>(1435f, -338f, 609f, 1961f), vec4<u32>(37163u, 1u, 0u, 0u)), Struct_1(vec3<f32>(175f, 836f, -1758f), 73029u, vec3<f32>(888f, -1501f, -1200f), vec4<f32>(867f, -1097f, -2377f, 179f), vec4<u32>(4294967295u, 1u, 1u, 7931u)), Struct_1(vec3<f32>(-990f, -196f, -824f), 73046u, vec3<f32>(1110f, 1225f, -794f), vec4<f32>(480f, 606f, -1093f, 618f), vec4<u32>(1u, 4294967295u, 1u, 41979u)), Struct_1(vec3<f32>(-800f, 572f, 1835f), 21366u, vec3<f32>(-466f, 637f, -1350f), vec4<f32>(340f, -242f, -878f, 971f), vec4<u32>(0u, 13416u, 57842u, 4294967295u)), Struct_1(vec3<f32>(-1918f, 1374f, -154f), 4294967295u, vec3<f32>(1463f, 426f, -803f), vec4<f32>(531f, -612f, -1560f, -1019f), vec4<u32>(47656u, 0u, 60731u, 4294967295u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(select(0u | _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(12991u, 1u, 1u)), vec3<u32>(~71524u, 1u, 1u)), 1u, global0.x), 11u)];
    let var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.a, abs(select(vec4<i32>(u_input.a.x, -1i, arg_0, -16950i), vec4<i32>(u_input.a.x, -27402i, arg_0, u_input.a.x), global0.x))), abs(-u_input.a));
    var var_2 = abs(abs(var_1.xxx));
    global0 = !select(select(!vec3<bool>(global0.x, false, false), vec3<bool>(true, true, true), !(!vec3<bool>(false, false, global0.x))), vec3<bool>(!all(vec3<bool>(global0.x, global0.x, global0.x)), any(vec3<bool>(false, false, global0.x)), all(vec4<bool>(false, global0.x, global0.x, global0.x))), !select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, false), global0.x));
    global0 = vec3<bool>(false, false, global0.x);
    return !global0.x | global0.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, arg_0.a.x, -469f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, _wgslsmith_f_op_f32(arg_3.c.x * arg_0.a.x), _wgslsmith_f_op_f32(arg_0.d.x - -1559f)))), _wgslsmith_mod_u32(arg_3.e.x << (_wgslsmith_mod_u32(44709u, select(1u, 6365u, global0.x)) % 32u), ~_wgslsmith_dot_vec2_u32(arg_0.e.xz << (vec2<u32>(arg_3.e.x, 11011u) % vec2<u32>(32u)), ~vec2<u32>(0u, 0u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(173f)), _wgslsmith_f_op_f32(trunc(1773f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), arg_3.a.x), _wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.x, 458f, arg_0.d.x))))), arg_3.d, ~(_wgslsmith_div_vec4_u32(max(arg_3.e, vec4<u32>(arg_0.e.x, 29830u, arg_0.e.x, 60171u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.e.x, 0u, 4296u, arg_3.e.x), vec4<u32>(arg_3.e.x, 1u, arg_0.e.x, 1u))) | arg_3.e));
    var var_1 = 1408f;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-arg_0.c.x))));
    var_1 = arg_3.d.x;
    global1 = false;
    return var_0.d;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-813f)), 606f, arg_0) * vec3<f32>(598f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1020f - -1945f))) * vec3<f32>(1063f, arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1128f)), _wgslsmith_f_op_f32(arg_0 - arg_0))))), 1u, vec3<f32>(-142f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)) - _wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f + arg_0) * -995f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(452f, arg_0, 393f) * vec3<f32>(arg_0, arg_0, -885f)), _wgslsmith_mult_u32(arg_2, arg_2), vec3<f32>(832f, 1184f, arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(158f, 450f, arg_0, 2030f), vec4<f32>(-256f, arg_0, 845f, arg_0), global0.x)), vec4<u32>(arg_2, arg_2, arg_2, arg_2)), vec4<bool>(!arg_1.x, func_3(-1i), false, true), true, Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-575f, 880f, arg_0))), 1u, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 649f, -964f), vec3<f32>(arg_0, 1315f, -1925f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, arg_0, arg_0, arg_0)), ~vec4<u32>(57492u, arg_2, 1u, 35598u))))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, arg_2, arg_2), ~vec4<u32>(0u, arg_2, 0u, 4294967295u), select(vec4<u32>(4294967295u, 1u, arg_2, arg_2), vec4<u32>(44538u, 1u, arg_2, 0u), true))));
    var var_1 = 341f;
    global2 = array<Struct_1, 11>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.c, vec3<bool>(false, true, false))) * vec3<f32>(var_0.a.x, -1396f, 995f))))), reverseBits(arg_2), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, var_0.c.x, -1280f), vec3<f32>(-734f, arg_0, 1007f), !vec3<bool>(false, true, arg_1.x))) + var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(785f - arg_0), -980f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), -478f, 285f, _wgslsmith_f_op_f32(max(arg_0, arg_0)))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1294f, var_0.d.x, var_0.c.x, arg_0) * vec4<f32>(arg_0, 1572f, arg_0, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(arg_0, var_0.c.x, var_0.c.x, -1000f))))), ~vec4<u32>(arg_2, ~(~arg_2), max(arg_2, arg_2) & var_0.e.x, ~1u));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    return min(u_input.a.xz, _wgslsmith_add_vec2_i32(-u_input.a.wy, reverseBits((vec2<i32>(2147483647i, -21012i) ^ u_input.a.wy) ^ _wgslsmith_sub_vec2_i32(u_input.a.wy, vec2<i32>(u_input.a.x, u_input.a.x)))));
}

fn func_1() -> vec3<f32> {
    global1 = global0.x;
    var var_0 = true;
    var var_1 = (u_input.a.zw | ~reverseBits(~u_input.a.yw)) | (vec2<i32>(u_input.a.x, u_input.a.x) ^ -func_2(-1000f, vec2<bool>(global0.x, global0.x), 4294967295u));
    var var_2 = abs(_wgslsmith_add_i32(u_input.a.x, var_1.x));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(593f)))), _wgslsmith_f_op_f32(abs(-478f)))), _wgslsmith_f_op_f32(f32(-1f) * -1317f)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1497f, 1172f)) + -1794f) - _wgslsmith_f_op_f32(f32(-1f) * -777f)), _wgslsmith_f_op_f32(trunc(1364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(135f, 946f, global0.x))), -977f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2087f, -1573f, -353f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2092f, -479f, -1000f) - vec3<f32>(-348f, 675f, -560f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, -634f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, 372f, 191f))), global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-479f, _wgslsmith_div_f32(-1648f, -241f)), -2506f, -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, -1000f, 328f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1488f, 2320f, -1000f) * vec3<f32>(-2158f, -1094f, 1198f))))))), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, 2064f, 1640f) + vec3<f32>(-147f, -1422f, 1811f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, 589f, 219f, -526f))) * vec4<f32>(1f, 1f, 1f, 1f))), ~(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(19755u, 94387u, 52813u, 4294967295u)), vec4<u32>(97689u, 38481u, 4294967295u, 66035u))));
    let var_1 = var_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, var_1.a.x, global0.x)) - var_0.c.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1776f * -456f)))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_vec4_f32(func_4(var_1, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, global0.x, global0.x, true)), u_input.a.x < 0i, global2[_wgslsmith_index_u32(min(var_1.b, var_0.e.x), 11u)])).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0, vec4<bool>(global0.x && global0.x, false, true, global0.x || global0.x), any(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), var_1)).x - var_1.a.x), _wgslsmith_f_op_f32(-993f + -1615f), _wgslsmith_f_op_f32(var_1.d.x * 555f));
    let x = u_input.a;
    s_output = StorageBuffer(32900u >> (~(~var_1.e.x) % 32u), 23156u, -42561i, vec3<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(37530i, 1886i, 28285i, u_input.a.x), vec4<i32>(1i, u_input.a.x, 41890i, -18943i))), 1i, u_input.a.x));
}

