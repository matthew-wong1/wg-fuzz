struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-903f, 640f, -184f), vec3<f32>(-1609f, 856f, 243f), vec3<f32>(576f, -505f, -1501f), vec3<f32>(-458f, 1238f, -1140f), vec3<f32>(147f, -1177f, 164f), vec3<f32>(-251f, -738f, -150f), vec3<f32>(-1209f, 1918f, 1496f), vec3<f32>(485f, 1546f, 786f), vec3<f32>(-962f, 1000f, 1000f), vec3<f32>(1289f, -187f, 513f), vec3<f32>(-1777f, -1056f, 268f), vec3<f32>(-923f, 670f, 1152f), vec3<f32>(-872f, -722f, -1000f), vec3<f32>(-413f, -670f, 138f), vec3<f32>(-1432f, -1000f, -1294f), vec3<f32>(-776f, 271f, -751f), vec3<f32>(-1489f, -623f, -869f), vec3<f32>(514f, -777f, -1000f), vec3<f32>(1391f, 1980f, 278f), vec3<f32>(928f, -127f, -510f), vec3<f32>(1004f, -1028f, 507f), vec3<f32>(1087f, -1000f, 1357f), vec3<f32>(-791f, 2444f, -1801f), vec3<f32>(894f, 450f, 303f), vec3<f32>(-204f, -497f, 1025f), vec3<f32>(-1000f, -1000f, -1403f), vec3<f32>(604f, -1289f, 289f), vec3<f32>(-708f, 312f, 532f), vec3<f32>(-1043f, 858f, -1550f), vec3<f32>(-668f, -1000f, 674f), vec3<f32>(966f, -860f, 1394f));

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<f32>(-1484f, 375f, 2495f)), Struct_2(vec3<f32>(-1172f, 1144f, 1668f)), Struct_2(vec3<f32>(-793f, 222f, -836f)), Struct_2(vec3<f32>(-2137f, 424f, -1569f)), Struct_2(vec3<f32>(-1227f, 1382f, 422f)), Struct_2(vec3<f32>(1000f, -312f, -486f)), Struct_2(vec3<f32>(2662f, 1538f, -1005f)), Struct_2(vec3<f32>(-675f, -1000f, -1503f)), Struct_2(vec3<f32>(-410f, -288f, -504f)), Struct_2(vec3<f32>(800f, -456f, 858f)), Struct_2(vec3<f32>(-663f, -1346f, -309f)), Struct_2(vec3<f32>(-1000f, -2539f, -1266f)), Struct_2(vec3<f32>(-1000f, -352f, -783f)), Struct_2(vec3<f32>(1754f, 1000f, 202f)), Struct_2(vec3<f32>(802f, -618f, -364f)), Struct_2(vec3<f32>(527f, 152f, -357f)), Struct_2(vec3<f32>(614f, -862f, 350f)), Struct_2(vec3<f32>(-998f, -888f, 857f)), Struct_2(vec3<f32>(921f, 754f, 1456f)), Struct_2(vec3<f32>(-282f, 1760f, -1842f)), Struct_2(vec3<f32>(1000f, 743f, 438f)), Struct_2(vec3<f32>(1599f, -1367f, 1262f)), Struct_2(vec3<f32>(-312f, 275f, -654f)), Struct_2(vec3<f32>(1563f, -721f, -1839f)), Struct_2(vec3<f32>(-340f, 958f, -1000f)), Struct_2(vec3<f32>(-669f, 1551f, 212f)), Struct_2(vec3<f32>(-525f, 176f, 1193f)));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<f32>(-1000f, -493f, 264f)), Struct_2(vec3<f32>(-760f, -2109f, 171f)), Struct_2(vec3<f32>(-762f, -588f, 914f)), Struct_2(vec3<f32>(234f, -857f, 351f)), Struct_2(vec3<f32>(1226f, -2435f, 1099f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    var var_2 = var_0;
    return var_0.d;
}

fn func_1(arg_0: u32) -> u32 {
    global1 = array<Struct_2, 27>();
    var var_0 = Struct_1(~0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.c, -1146f, true, -253f, 1u), u_input.b.x, vec4<u32>(arg_0, 66949u, u_input.c, u_input.c))), _wgslsmith_f_op_f32(ceil(784f))), -1054f)), 560f), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), 45393u);
    global0 = array<vec3<f32>, 31>();
    let var_1 = Struct_1(reverseBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, 1130f, var_0.c, -1490f, 4294967295u), 0i, vec4<u32>(43735u, var_0.a, u_input.c, 4294967295u)))))), var_0.c, 1358f, var_0.a);
    var var_2 = var_1;
    return var_0.a;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    global2 = array<Struct_2, 5>();
    let var_0 = 4294967295u;
    global1 = array<Struct_2, 27>();
    let var_1 = ((vec3<u32>(_wgslsmith_clamp_u32(u_input.c, arg_0, 33111u), 36573u, 1754u) ^ min(vec3<u32>(0u, 13252u, 4294967295u) << (vec3<u32>(16323u, u_input.c, u_input.c) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 1u, u_input.c), vec3<u32>(34216u, 1884u, arg_0)))) & vec3<u32>(29425u, ~u_input.c, 3678u)) >> (vec3<u32>(94857u, u_input.c, ~abs(var_0)) % vec3<u32>(32u));
    let var_2 = Struct_3(Struct_1(max(1u, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)), false, _wgslsmith_f_op_f32(round(1f)), ~(select(var_0, 10961u, true) | ~4294967295u)), vec3<u32>(var_1.x ^ func_1(var_1.x), ~27078u, u_input.c) & (var_1 & vec3<u32>(1u, ~var_0, ~var_1.x)), var_0, Struct_1(var_0, -243f, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(637f - -696f), 1f)) * -1562f), 1u), -u_input.b.x);
    return var_2.d.d;
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    global2 = array<Struct_2, 5>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 27u)];
    global0 = array<vec3<f32>, 31>();
    var var_2 = ~2147483647i;
    return _wgslsmith_f_op_f32(ceil(arg_0.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    global2 = array<Struct_2, 5>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(22073u, u_input.c, u_input.c, 12244u)) & ~firstTrailingBit(vec4<u32>(18208u, 39395u, 8317u, u_input.c)), ~(~vec4<u32>(0u, u_input.c, 25593u, u_input.c)) | vec4<u32>(u_input.c >> (1u % 32u), func_1(u_input.c), select(u_input.c, 0u, true), 9212u));
    var var_2 = 26477i;
    var var_3 = _wgslsmith_f_op_f32(func_4(Struct_4(Struct_1(_wgslsmith_div_u32(u_input.c, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), true, -910f, var_1.x << (select(var_1.x, 56075u, false) % 32u)), Struct_1(func_1(u_input.c), 2199f, true, _wgslsmith_f_op_f32(trunc(-1000f)), ~(~72452u)), Struct_1(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1064f, 807f)) + 970f), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_3(4294967295u, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(21419i, u_input.b.x)), u_input.b)), var_1.x >> (abs(0u) % 32u))), u_input.b.x));
    global1 = array<Struct_2, 27>();
    let var_4 = Struct_3(Struct_1(max(var_1.x, ~var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-630f))), u_input.b.x <= 0i, _wgslsmith_f_op_f32(step(-1157f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2541f + -325f))))), ~u_input.c), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(select(21147u, 4294967295u, false), ~0u)), ~var_1.x, u_input.c), u_input.c, Struct_1((u_input.c >> (1u % 32u)) >> (23000u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1179f), true || !all(vec2<bool>(true, true)), 905f, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, var_1.x, firstLeadingBit(u_input.c)), ~u_input.c & ~var_1.x)), _wgslsmith_mult_i32(-(1i >> (u_input.c % 32u)), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)) ^ 37291i);
    var var_5 = var_1.yw;
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_4.e, _wgslsmith_div_i32(countOneBits(2147483647i), firstLeadingBit(10463i))));
}

