struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(1205f, vec3<i32>(0i, 8270i, 6223i), 19628i, Struct_1(-1i, vec4<i32>(i32(-2147483648), 0i, -1i, -1i), vec4<f32>(-1619f, 1000f, 415f, -203f), 2147483647i), Struct_1(2791i, vec4<i32>(-27200i, -1i, 44174i, 30586i), vec4<f32>(297f, 186f, -450f, -695f), -5062i)), Struct_2(-104f, vec3<i32>(-55212i, 61595i, -1i), 34273i, Struct_1(0i, vec4<i32>(17502i, 24288i, 1i, 3042i), vec4<f32>(281f, 1427f, -1183f, -823f), 42862i), Struct_1(2147483647i, vec4<i32>(3479i, -1i, -59746i, 2147483647i), vec4<f32>(483f, 330f, -489f, -955f), -54772i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> bool {
    global1 = array<Struct_2, 2>();
    let var_0 = !(arg_1 < _wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(floor(arg_0.e.c.x))));
    let var_1 = ~abs(firstLeadingBit(4294967295u));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, 749f, -1093f))));
    let var_3 = any(vec3<bool>(!arg_2.x, true, all(select(select(arg_2.zw, vec2<bool>(var_0, false), vec2<bool>(var_0, true)), arg_2.ww, true))));
    return false | var_3;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-162f, _wgslsmith_f_op_f32(ceil(-655f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - 1090f)), func_3(Struct_2(-1060f, vec3<i32>(48731i, 0i, u_input.b), -2147483647i, Struct_1(-2147483647i, vec4<i32>(38579i, u_input.a, 0i, u_input.b), vec4<f32>(336f, 1599f, 310f, -1184f), 0i), Struct_1(u_input.b, vec4<i32>(u_input.b, -8947i, 16055i, u_input.a), vec4<f32>(-206f, -1492f, -1000f, -911f), -1i)), 2192f, vec4<bool>(false, true, false, false)) || true))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -116f);
    var_1 = 214f;
    let var_2 = ~vec3<u32>(_wgslsmith_clamp_u32(abs(arg_0.x), ~4394u, _wgslsmith_add_u32(select(u_input.c, arg_0.x, true), ~u_input.c)), _wgslsmith_sub_u32(~arg_0.x & 4294967295u, ~(arg_0.x ^ 4294967295u)), 78594u);
    let var_3 = ~(vec3<i32>(u_input.b, ~u_input.a, 2147483647i) >> (abs(arg_1.zyx) % vec3<u32>(32u)));
    return 254f;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1116f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1998f, 3179f) + -642f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1025f + -1416f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1537f, 764f) * _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.c, 25495u), vec4<u32>(49842u, u_input.c, u_input.c, u_input.c)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-266f, 1178f, 382f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1165f, 1000f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1400f, 1081f, -522f), _wgslsmith_div_vec3_f32(vec3<f32>(-478f, -591f, 1043f), vec3<f32>(-224f, 1033f, 1495f)), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, true), false))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, var_0.x, 1126f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1375f, 1402f, var_0.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(142f, var_0.x, var_0.x, var_0.x), vec4<f32>(-277f, -663f, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-446f, -211f, false)), var_0.x, _wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_f_op_f32(min(323f, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, -1000f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -1000f, 179f, 719f)) + vec4<f32>(187f, 127f, 1937f, 701f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec2<u32>(1u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 55946u) ^ vec4<u32>(1u, u_input.c, u_input.c, u_input.c)))), -389f, -1235f, _wgslsmith_div_f32(var_0.x, -2468f)));
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-5618i, u_input.b)), min(vec2<i32>(u_input.a, u_input.b), vec2<i32>(0i, 2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, -2147483647i), u_input.b, u_input.a), ~(-39963i), -2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(28422i, u_input.b), max(-31106i, -10291i), select(u_input.b, 0i, false), i32(-1i) * -1i), -firstTrailingBit(vec4<i32>(-1i, 29076i, 2147483647i, u_input.b))), firstLeadingBit(vec4<i32>(-1i, i32(-1i) * -1150i, -12685i, u_input.b))));
    let var_3 = _wgslsmith_div_vec2_f32(var_1.zw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(817f, var_0.x)) * vec2<f32>(1560f, var_1.x))), var_1.xw));
    let var_4 = 474f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    let var_0 = 1u;
    global0 = i32(-1i) * -2147483647i;
    global0 = u_input.a;
    global0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.a, countOneBits(i32(-1i) * -u_input.a)), u_input.b);
    var var_1 = (firstTrailingBit(reverseBits(vec4<i32>(21763i, 30994i, u_input.a, 0i))) << (~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(3461u, var_0, 47353u, 2763u)), ~vec4<u32>(6730u, u_input.c, 485u, 0u)) % vec4<u32>(32u))) ^ -vec4<i32>(~_wgslsmith_mult_i32(1i, u_input.a), u_input.a & 0i, u_input.a, u_input.b);
    var_1 = vec4<i32>(max(1i, 1i), 1329i, 1406i, -(~0i));
    var var_2 = all(!vec4<bool>(true, !func_1(true), any(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(589i, reverseBits(~vec3<u32>(max(u_input.c, 91827u), ~u_input.c, u_input.c)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), -871f)), _wgslsmith_f_op_f32(select(1399f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(554f, -1288f))), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f - 930f) - 1312f), _wgslsmith_f_op_f32(sign(-1540f))))));
}

