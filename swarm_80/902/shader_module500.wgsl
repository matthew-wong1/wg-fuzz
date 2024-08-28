struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

var<private> global1: Struct_4 = Struct_4(Struct_1(49507u, -703f, vec3<f32>(-829f, 1056f, -923f), -1333f), Struct_2(-1i, 40070u, Struct_1(1u, 137f, vec3<f32>(-806f, 826f, 1124f), -1000f)));

var<private> global2: f32;

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-20378i, 4294967295u, Struct_1(0u, -1607f, vec3<f32>(826f, -927f, 268f), 1000f)), Struct_2(i32(-2147483648), 0u, Struct_1(2611u, -1004f, vec3<f32>(-1228f, -766f, -443f), 144f)), Struct_2(-1i, 0u, Struct_1(0u, -1886f, vec3<f32>(-2818f, -1227f, 649f), -348f)), Struct_2(39559i, 35282u, Struct_1(49365u, -635f, vec3<f32>(1203f, -2049f, -628f), -379f)), Struct_2(i32(-2147483648), 4294967295u, Struct_1(5175u, 1000f, vec3<f32>(-1000f, -496f, -596f), -1711f)), Struct_2(4499i, 65069u, Struct_1(0u, 430f, vec3<f32>(1248f, 583f, 1588f), -323f)), Struct_2(2147483647i, 1u, Struct_1(1u, -166f, vec3<f32>(-1462f, 530f, 666f), 349f)), Struct_2(i32(-2147483648), 4294967295u, Struct_1(28238u, 972f, vec3<f32>(458f, -1218f, -126f), 1276f)), Struct_2(-47499i, 0u, Struct_1(17192u, -1378f, vec3<f32>(1002f, -605f, -1000f), -219f)), Struct_2(-86780i, 104105u, Struct_1(75669u, 1333f, vec3<f32>(1803f, -426f, -753f), -1000f)), Struct_2(2147483647i, 0u, Struct_1(50038u, 159f, vec3<f32>(356f, 1169f, 2834f), 576f)), Struct_2(49861i, 0u, Struct_1(2615u, -644f, vec3<f32>(-1522f, 432f, -590f), -401f)), Struct_2(-275i, 0u, Struct_1(4294967295u, -512f, vec3<f32>(2482f, -483f, -2255f), 109f)), Struct_2(34519i, 0u, Struct_1(10075u, 1612f, vec3<f32>(-1000f, -1000f, 356f), 1000f)), Struct_2(37813i, 1u, Struct_1(55316u, -721f, vec3<f32>(-2933f, 610f, 1377f), 1522f)), Struct_2(0i, 0u, Struct_1(15975u, 2279f, vec3<f32>(-1000f, -166f, 1000f), -264f)), Struct_2(1i, 1u, Struct_1(4295u, -1688f, vec3<f32>(-275f, 1000f, -338f), -2258f)), Struct_2(-3582i, 61282u, Struct_1(4294967295u, -162f, vec3<f32>(738f, 1847f, -885f), 342f)), Struct_2(3905i, 31199u, Struct_1(37738u, -1011f, vec3<f32>(675f, 978f, -1000f), -1261f)), Struct_2(-4608i, 18040u, Struct_1(4294967295u, 2112f, vec3<f32>(-1645f, 1102f, -1000f), -379f)), Struct_2(-32551i, 4294967295u, Struct_1(4294967295u, 733f, vec3<f32>(1200f, 442f, 153f), -270f)), Struct_2(i32(-2147483648), 1u, Struct_1(20380u, -287f, vec3<f32>(-1446f, -875f, -168f), -1000f)), Struct_2(22158i, 16815u, Struct_1(0u, 652f, vec3<f32>(704f, -581f, 1000f), 1809f)), Struct_2(-13685i, 1u, Struct_1(0u, -144f, vec3<f32>(638f, 178f, 858f), 520f)), Struct_2(1i, 59454u, Struct_1(1u, -1698f, vec3<f32>(-1000f, 1478f, 277f), -223f)), Struct_2(-1i, 0u, Struct_1(4294967295u, -108f, vec3<f32>(-666f, 1628f, -269f), 1797f)), Struct_2(-33865i, 26120u, Struct_1(0u, -962f, vec3<f32>(-1450f, 195f, -916f), -1087f)), Struct_2(-10002i, 4294967295u, Struct_1(1u, -940f, vec3<f32>(1291f, 1148f, -518f), -528f)), Struct_2(i32(-2147483648), 7614u, Struct_1(0u, -1469f, vec3<f32>(-1000f, 1000f, -1000f), -1000f)));

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> i32 {
    global0 = array<vec4<i32>, 16>();
    var var_0 = global1.b.c.c;
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(43731u, 16u)]);
    var var_2 = _wgslsmith_mult_u32(~26177u, 1u);
    var var_3 = ~_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(select(2147483647i, global1.b.a, true), ~global1.b.a), firstLeadingBit(2147483647i)), ((1i << (global1.b.b % 32u)) ^ -u_input.a.x) & _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-18190i, global1.b.a, u_input.a.x)), u_input.a.xxx & vec3<i32>(var_1.a.a, 24523i, var_1.a.a)));
    return min(~2147483647i, -11425i);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_4(global1.b.c, Struct_2(global1.b.a, 1u, Struct_1(0u, global1.b.c.d, global1.b.c.c, _wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = Struct_2(min(global1.b.a, var_0.b.a), ~abs(~var_0.b.b), var_0.b.c);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(879f)))), -1328f)) - 480f);
    var var_2 = _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, -37918i, -1i), ~vec3<i32>(2147483647i, 2147483647i, 28184i)), vec3<i32>(-15568i, ~(2147483647i & u_input.a.x), ~41397i)) >> (vec3<u32>(93660u, _wgslsmith_clamp_u32(max(4294967295u, var_0.a.a), 343u, arg_2.x) >> (1u % 32u), 20468u) % vec3<u32>(32u));
    global3 = array<Struct_2, 29>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b, global1.b.c.d, var_0.b.c.b) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(252f * _wgslsmith_f_op_f32(f32(-1f) * -620f)) * var_0.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d + arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.d)))), 2689f));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    let var_0 = Struct_1(global1.b.b, arg_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xwz)) - _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-781f, arg_1.x) * arg_1.yx), vec4<u32>(global1.b.c.a, 33460u, 64127u, 1u)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.yww, arg_1.zyz, false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1150f, global1.a.c.x, global1.b.c.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1751f * _wgslsmith_f_op_f32(global1.b.c.d - global1.a.b)) * _wgslsmith_f_op_f32(ceil(arg_1.x))));
    var var_1 = global1.b.a;
    global4 = array<Struct_2, 16>();
    var var_2 = Struct_3(global1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-141f, _wgslsmith_f_op_f32(492f * var_2.a.c.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -970f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.b - arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))));
    return var_2.a.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-725f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-212f, global1.a.d) - -2599f), global1.b.c.c.x);
    let var_1 = true;
    var var_2 = vec4<u32>(~4294967295u, abs(func_2(global1.b.b, vec4<f32>(global1.a.b, var_0.x, global1.a.c.x, -646f), func_1())), ~(~93318u), ~global1.a.a) << (_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, ~71638u, ~0u, global1.a.a), vec4<u32>(_wgslsmith_mult_u32(0u, global1.b.c.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a, global1.b.b), vec2<u32>(global1.b.c.a, 4294967295u)), 69785u), global1.b.c.a, firstLeadingBit(global1.a.a))) % vec4<u32>(32u));
    let var_3 = firstTrailingBit(abs(4294967295u));
    global0 = array<vec4<i32>, 16>();
    global1 = Struct_4(Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1399f + _wgslsmith_f_op_f32(global1.a.d - global1.b.c.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, global1.a.b, -1088f)), _wgslsmith_f_op_vec3_f32(max(global1.b.c.c, vec3<f32>(global1.a.c.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(floor(1312f))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~countOneBits(var_2.x)), ~firstTrailingBit(~0u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.c.c.x + -1102f), _wgslsmith_f_op_f32(f32(-1f) * -1131f)))), _wgslsmith_f_op_f32(max(1665f, _wgslsmith_f_op_f32(round(-512f)))))), -17183i, 1839f);
}

