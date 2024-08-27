struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22313i;

var<private> global1: u32 = 1894u;

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-1784f, -957f, -494f, 1111f), vec4<f32>(459f, 1287f, -1384f, 1072f), vec4<f32>(138f, -1014f, -501f, -610f), vec4<f32>(249f, -1979f, 1302f, -108f), vec4<f32>(-1511f, -478f, 771f, 135f), vec4<f32>(-1436f, -627f, -1682f, -1126f), vec4<f32>(-1786f, 1101f, 1122f, 1549f), vec4<f32>(1120f, 1383f, 1519f, 1251f), vec4<f32>(-618f, 1814f, -730f, -420f), vec4<f32>(193f, -1000f, 1000f, 262f), vec4<f32>(-934f, -177f, 908f, -523f), vec4<f32>(1028f, -265f, -171f, 454f), vec4<f32>(-1255f, -718f, 296f, 783f), vec4<f32>(-704f, -789f, 195f, -1000f), vec4<f32>(-2041f, 451f, 1000f, 586f), vec4<f32>(-352f, -1686f, -431f, -1226f), vec4<f32>(1290f, -1000f, -1668f, 1857f), vec4<f32>(-1115f, 1522f, 248f, -1000f), vec4<f32>(998f, -748f, 155f, -1066f), vec4<f32>(227f, 1060f, 1141f, 554f), vec4<f32>(1712f, 493f, -803f, 2059f), vec4<f32>(736f, 1719f, 1000f, 1738f), vec4<f32>(-300f, 554f, 968f, 574f), vec4<f32>(-865f, 488f, -582f, 240f), vec4<f32>(-710f, -510f, -766f, 445f), vec4<f32>(-535f, -1181f, -963f, 452f), vec4<f32>(-1000f, 434f, -1882f, -1366f), vec4<f32>(-110f, 883f, -1244f, -549f));

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-732f, -1000f, 855f, -847f), vec4<f32>(-786f, 197f, 1133f, 983f), vec4<f32>(410f, -406f, 803f, 583f), vec4<f32>(-1168f, -214f, 222f, -1816f), vec4<f32>(-1000f, 709f, -925f, -823f), vec4<f32>(855f, 717f, -1000f, -510f), vec4<f32>(222f, 550f, 664f, 248f), vec4<f32>(1941f, -1000f, 123f, -489f), vec4<f32>(-2114f, -1000f, 305f, -1187f), vec4<f32>(-1000f, 1206f, 409f, 2047f), vec4<f32>(305f, -833f, -312f, 1248f));

var<private> global4: i32 = 29500i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(595f));
    return 18930i;
}

fn func_3(arg_0: Struct_1) -> i32 {
    return ~(~(~_wgslsmith_sub_i32(firstLeadingBit(32783i), -1700i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(655f)) - -812f) * 1055f));
    let var_1 = vec2<i32>(max(-func_2(), 1i), func_3(Struct_1(select(arg_0.a && false, false, arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b)) - vec2<f32>(arg_0.c.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(arg_0.b.x, arg_0.b.x, -1100f, 247f)), _wgslsmith_f_op_f32(-257f + -721f), vec3<bool>(true, !arg_0.a, true))));
    var_0 = arg_0.d;
    var var_2 = var_1 | -abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1));
    return arg_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, all(vec2<bool>(true, true))), !vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), func_1(Struct_1(false, vec2<f32>(1620f, 1886f), global2[_wgslsmith_index_u32(18344u, 28u)], 526f, vec3<bool>(true, true, true)), vec3<f32>(-1000f, 1000f, -172f)))), vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)));
    global0 = 13823i;
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, -2964f)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-990f, 444f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1802f, 117f) + vec2<f32>(346f, 106f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1025f, 1284f), _wgslsmith_f_op_vec2_f32(vec2<f32>(821f, 1270f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, -263f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, -1385f, -422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f + 229f) - -480f)))), -869f, var_0);
    global4 = -2147483647i;
    global2 = array<vec4<f32>, 28>();
    global0 = ~_wgslsmith_mod_i32(-5995i, i32(-1i) * -38857i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_u32(select(u_input.a, u_input.a & u_input.a, u_input.a < u_input.a), _wgslsmith_div_u32(u_input.a, 44130u) & reverseBits(u_input.a))));
}

