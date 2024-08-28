struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<f32>(257f, -1000f, -832f, -1411f), -1000f), Struct_1(vec4<f32>(556f, -242f, -335f, 1117f), -1000f), Struct_1(vec4<f32>(-970f, -635f, 542f, -964f), 1883f), Struct_1(vec4<f32>(998f, 1266f, 1081f, -1739f), -419f), Struct_1(vec4<f32>(-1208f, -970f, -788f, -1097f), -839f), Struct_1(vec4<f32>(-1075f, 120f, -356f, 1043f), 1036f), Struct_1(vec4<f32>(547f, 1000f, -715f, -208f), -1143f), Struct_1(vec4<f32>(-336f, -1000f, -360f, -1135f), 201f), Struct_1(vec4<f32>(2459f, 768f, 683f, 748f), 646f), Struct_1(vec4<f32>(-846f, -1505f, 743f, 609f), -739f), Struct_1(vec4<f32>(469f, -607f, 1141f, 344f), 948f), Struct_1(vec4<f32>(625f, 670f, 307f, 491f), 1245f), Struct_1(vec4<f32>(-1404f, -1773f, 1195f, -673f), -1758f), Struct_1(vec4<f32>(-882f, 490f, -299f, 314f), -783f), Struct_1(vec4<f32>(-2112f, 1221f, -192f, -190f), 684f), Struct_1(vec4<f32>(373f, -185f, -1492f, 1292f), 542f));

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-1559f, _wgslsmith_f_op_f32(265f + -126f))), _wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(min(493f, -2301f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1692f)))), vec4<f32>(1f, -1412f, 658f, -2550f), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), true))), _wgslsmith_f_op_f32(abs(-1111f)));
    let var_1 = reverseBits(~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, -72514i, -58120i))));
    global1 = array<vec2<bool>, 23>();
    global1 = array<vec2<bool>, 23>();
    let var_2 = Struct_4(Struct_2(!vec4<bool>(all(vec2<bool>(false, false)), true, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.zz * var_0.a.wx)), _wgslsmith_f_op_vec2_f32(var_0.a.ww - vec2<f32>(-1341f, var_0.b)))), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), any(global1[_wgslsmith_index_u32(~69830u, 23u)]))), 2147483647i);
    return vec3<i32>(var_2.b, var_1.x, arg_0);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~func_3(arg_0.x);
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_3(0u);
    var_1 = arg_2;
    let var_2 = Struct_4(Struct_2(vec4<bool>(select(var_1.a, 84296u, false) < var_1.a, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.a.xz))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), max(arg_0.x, 0i));
    return var_2.a;
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec3<f32> {
    global0 = array<Struct_1, 16>();
    let var_0 = reverseBits(~vec3<i32>(_wgslsmith_div_i32(-50467i, -2147483647i), func_3(_wgslsmith_add_i32(arg_0.b, arg_0.b)).x, 37218i));
    global0 = array<Struct_1, 16>();
    global1 = array<vec2<bool>, 23>();
    var var_1 = -2177f;
    return vec3<f32>(_wgslsmith_f_op_f32(-1000f * 543f), arg_0.a.b.x, -1114f);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_2(vec2<i32>(-12004i, -80938i), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], Struct_3(4294967295u)), 0i), func_2(abs(vec2<i32>(3919i, -25200i)), Struct_1(vec4<f32>(2408f, 161f, 360f, -1632f), -1163f), Struct_3(u_input.a.x)).a.x)) * vec3<f32>(-1517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1671f, 512f, false)) - 988f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116f + -872f) - _wgslsmith_f_op_vec3_f32(func_4(Struct_4(Struct_2(vec4<bool>(false, false, true, true), vec2<f32>(-810f, -1486f), vec3<bool>(true, true, false)), 11525i), false)).x))));
    global1 = array<vec2<bool>, 23>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return Struct_4(Struct_2(vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), any(vec4<bool>(false, false, true, false)), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(select(675f, var_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec3<bool>(true, true, true)), ~(-16433i));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec3<f32>) -> i32 {
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(785f, arg_1.a.b.x, -130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_1.a.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(841f, 1000f), -1451f, _wgslsmith_div_f32(-1000f, -737f), -518f)))), arg_2.x);
    global0 = array<Struct_1, 16>();
    let var_1 = Struct_5(48188u, Struct_3(~u_input.a.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.b, func_1().b), ~0i), arg_1.a, vec4<i32>(-11846i, 13671i, ~_wgslsmith_sub_i32(-16050i, arg_1.b) ^ -2147483647i, -4135i));
    global1 = array<vec2<bool>, 23>();
    return -54980i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    var var_1 = vec4<i32>(-(func_5(true, func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, -402f, -683f))) & abs(select(5660i, 0i, false))), ~(func_3(0i).x & abs(-56377i)), 1i, abs(reverseBits(min(abs(9003i), ~(-1i)))));
    let var_2 = Struct_3(14689u);
    var var_3 = Struct_3(reverseBits(abs(~var_2.a)));
    global1 = array<vec2<bool>, 23>();
    var_3 = Struct_3(u_input.a.x);
    var var_4 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(max(u_input.a.xwz, vec3<u32>(4294967295u, u_input.a.x, 4294967295u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.a, 0u), u_input.a.zwx)), firstTrailingBit(~_wgslsmith_sub_vec3_u32(u_input.a.yyz, u_input.a.xzz))), _wgslsmith_dot_vec4_u32(vec4<u32>(7953u ^ u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a & vec4<u32>(var_4.x, var_4.x, 4294967295u, var_2.a), u_input.a)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(46602u, 1u, u_input.a.x, var_4.x), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)))));
}

