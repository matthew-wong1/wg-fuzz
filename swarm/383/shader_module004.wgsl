struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1i, Struct_1(false), Struct_2(vec3<bool>(true, true, true)), vec3<i32>(26634i, 19334i, 2147483647i), vec4<bool>(true, true, false, true));

var<private> global1: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-195f, -1782f, 377f, 505f), vec4<f32>(-1601f, -529f, 680f, 803f), vec4<f32>(1005f, -412f, -1214f, 1960f), vec4<f32>(1135f, -1784f, 1000f, -1262f), vec4<f32>(-1071f, 662f, -1111f, -2397f), vec4<f32>(793f, -487f, 506f, -271f), vec4<f32>(-347f, 1576f, -960f, -2370f), vec4<f32>(-588f, -240f, -459f, -265f), vec4<f32>(-1098f, 340f, -1965f, -594f), vec4<f32>(1735f, 228f, 330f, -176f), vec4<f32>(1060f, -1658f, 1298f, -143f), vec4<f32>(-533f, 1506f, 1914f, -419f), vec4<f32>(473f, -385f, -934f, -1057f), vec4<f32>(-781f, 484f, -778f, 1192f), vec4<f32>(1258f, -144f, 638f, -924f), vec4<f32>(-227f, 1288f, 1559f, 1041f), vec4<f32>(1427f, -1633f, 1230f, 674f), vec4<f32>(-931f, 336f, 533f, -1867f), vec4<f32>(663f, 100f, 1156f, -1945f), vec4<f32>(-1035f, -914f, 1320f, 461f), vec4<f32>(533f, -725f, 1285f, -1121f), vec4<f32>(1169f, -311f, -482f, 725f), vec4<f32>(662f, -137f, 1000f, 1116f), vec4<f32>(782f, -893f, -1471f, 2920f), vec4<f32>(-319f, -1289f, 1547f, 2203f), vec4<f32>(1594f, -312f, 140f, 1152f), vec4<f32>(126f, -1654f, 731f, 1000f), vec4<f32>(1437f, -102f, -1000f, -936f));

var<private> global2: vec3<f32> = vec3<f32>(-725f, -431f, -1079f);

var<private> global3: bool = true;

var<private> global4: f32 = -530f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = global0.c;
    global4 = global2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(round(2021f)), _wgslsmith_div_f32(global2.x, global2.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(-892f, -588f, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1841f)))))));
    global0 = Struct_3(u_input.b, global0.b, Struct_2(var_0.a), global0.d, global0.e);
    global3 = !(!(~arg_2 == ~_wgslsmith_mult_u32(0u, 4294967295u)));
    return -2147483647i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3;
    global3 = true;
    global3 = any(arg_0);
    global4 = -1488f;
    var var_1 = Struct_3(select(_wgslsmith_div_i32(global0.a, -global0.d.x), select(func_2(Struct_1(true), true, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 39777u, 28382u), vec3<u32>(34093u, 4294967295u, 79172u))), u_input.b, true), true != global0.e.x), var_0, Struct_2(!vec3<bool>(!arg_3.a, false, false)), abs(~(vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1i, global0.a))), arg_0);
    return countOneBits(~vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.d.x ^ 2147483647i, reverseBits(u_input.a))));
}

fn func_3() -> i32 {
    global4 = _wgslsmith_f_op_f32(-global2.x);
    var var_0 = Struct_3(global0.d.x, Struct_1(any(global0.c.a.xz)), global0.c, ~reverseBits(vec3<i32>(-1i) * -vec3<i32>(-9854i, global0.d.x, 1i)), vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, -552f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(352f, global2.x)) - -873f), true));
    global1 = array<vec4<f32>, 28>();
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 90134u, 1u), vec3<u32>(4294967295u, 1u, 6891u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 47391u, 13918u), vec3<u32>(1u, 55786u, 67275u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_sub_u32(~4294967295u, firstLeadingBit(~1u)), ~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 40002u, 39629u)), _wgslsmith_sub_vec3_u32(vec3<u32>(6201u, 4294967295u, 45372u), vec3<u32>(3984u, 39845u, 0u)))), reverseBits(min(4294967295u, select(~1577u, ~28828u, var_0.c.a.x))));
    global3 = true;
    return func_2(var_0.b, all(select(vec2<bool>(select(global0.c.a.x, global0.c.a.x, global0.e.x), global0.c.a.x && false), global0.e.wz, select(global0.e.ww, !vec2<bool>(var_0.c.a.x, true), var_0.c.a.yx))), var_1.x >> (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 28>();
    var var_0 = global0.e;
    var var_1 = vec4<i32>(0i, 2147483647i, 2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(select(func_1(global0.e, vec3<f32>(global2.x, 510f, 1711f), global0.c.a.zx, Struct_1(global0.b.a)), vec2<i32>(u_input.a, 24208i), true), vec2<i32>(28657i & global0.d.x, u_input.b))));
    var var_2 = 1u;
    let var_3 = Struct_2(select(vec3<bool>(var_0.x, false, any(vec3<bool>(false, false, global0.b.a))), select(!var_0.xwz, vec3<bool>(!var_0.x, true, any(var_0.xy)), false), true));
    var_1 = countOneBits(vec4<i32>(~func_2(Struct_1(true), true, 4294967295u) << (~(~11667u) % 32u), _wgslsmith_mod_i32(max(func_3(), -var_1.x), -2147483647i), global0.d.x, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(23441i, 47366u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1412f, 934f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(152f, global2.x, global2.x))))), reverseBits(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, var_1.x, 1i))), 11601i);
}

