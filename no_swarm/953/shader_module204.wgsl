struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(2511f, -1662f, -235f, -949f), 0i, 25903i, vec2<f32>(-1147f, -634f)), Struct_1(vec4<f32>(543f, 401f, -291f, -739f), 54376i, 2147483647i, vec2<f32>(115f, 988f)), Struct_1(vec4<f32>(1198f, -641f, 623f, -1290f), 2147483647i, 1i, vec2<f32>(1499f, 1206f)));

var<private> global2: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(1u, 0u), vec2<u32>(104982u, 64194u), vec2<u32>(124040u, 45437u));

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1164f, -1023f), vec2<f32>(1146f, 1572f), vec2<f32>(2268f, 1406f), vec2<f32>(-627f, -948f), vec2<f32>(700f, 1129f), vec2<f32>(-439f, 307f), vec2<f32>(-844f, 376f), vec2<f32>(776f, 1000f), vec2<f32>(-815f, -1000f), vec2<f32>(675f, 1000f), vec2<f32>(186f, -1000f), vec2<f32>(976f, 1000f), vec2<f32>(-1542f, 262f), vec2<f32>(-635f, 1196f), vec2<f32>(-1286f, -1522f), vec2<f32>(-1787f, 964f), vec2<f32>(-1693f, -723f), vec2<f32>(-1020f, 1571f), vec2<f32>(-958f, -213f), vec2<f32>(824f, 1619f), vec2<f32>(394f, -603f), vec2<f32>(-1471f, -1040f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a), reverseBits(-21966i), -2147483647i, global3[_wgslsmith_index_u32(max(max(12603u, _wgslsmith_mod_u32(~0u, u_input.a)), u_input.b.x), 22u)]);
    global3 = array<vec2<f32>, 22>();
    var var_1 = true;
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    return vec3<bool>(true | all(arg_0.xx), 4294967295u < _wgslsmith_clamp_u32(~47918u, func_3(global1[_wgslsmith_index_u32(~20654u, 3u)], arg_0), 0u), all(vec3<bool>(false, !arg_0.x, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-556f - 329f), -1107f, _wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(sign(1004f))) - vec4<f32>(_wgslsmith_f_op_f32(2544f * -1081f), _wgslsmith_f_op_f32(-1490f - -257f), 1f, -913f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, -288f, -784f, -1048f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1143f, -661f, 500f, 1000f))))), _wgslsmith_add_i32(4496i, ~17217i), -20581i, _wgslsmith_f_op_vec2_f32(exp2(global3[_wgslsmith_index_u32(60967u, 22u)])));
    global2 = array<vec2<u32>, 3>();
    let var_1 = select(select(vec3<bool>((var_0.d.x != 620f) | true, false, true), select(vec3<bool>(true, var_0.a.x != -624f, false), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, all(vec3<bool>(false, false, true)))), -1000f == var_0.a.x), !func_2(vec3<bool>(true, true, false)), func_2(!vec3<bool>(all(vec4<bool>(true, false, true, true)), true, false)));
    let var_2 = var_0.a.x;
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(412f, 520f, -1627f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.d.x, var_0.d.x, var_0.a.x, var_0.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, var_0.a.x, var_0.a.x, -536f) * var_0.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 2342f, 1581f, var_0.a.x))))), 90984i ^ var_0.c, var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 243f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -251f) + global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a), 22u)])) * global3[_wgslsmith_index_u32(4294967295u << (~u_input.a % 32u), 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 3>();
    let var_0 = func_1();
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), func_1().d.x), -521f, -611f, var_0.d.x), ((_wgslsmith_dot_vec2_i32(vec2<i32>(19347i, 40141i), vec2<i32>(var_0.c, 2147483647i)) | firstTrailingBit(25187i)) >> (~u_input.a % 32u)) & func_1().c, 1i, global3[_wgslsmith_index_u32(~func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.d.x, 792f)), -var_0.b, ~(-1i), _wgslsmith_f_op_vec2_f32(-var_0.a.zz)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), 22u)]);
    var var_2 = select(select(min((vec2<i32>(var_1.c, 0i) ^ vec2<i32>(var_0.c, var_0.c)) | -vec2<i32>(var_1.c, var_0.c), select(select(vec2<i32>(18835i, var_0.c), vec2<i32>(1i, 22460i), vec2<bool>(true, false)), vec2<i32>(var_0.c, var_1.c), vec2<bool>(true, true))), vec2<i32>(1i, 1i) ^ ~(vec2<i32>(-2147483647i, 12006i) ^ vec2<i32>(-34173i, var_0.b)), true && any(vec2<bool>(true, true))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, var_0.c, -7243i), vec4<i32>(var_0.c, var_0.b, -2147483647i, var_1.b)), 1i), vec2<i32>(58263i, _wgslsmith_mult_i32(var_1.b | var_0.c, 1i)), countOneBits(vec2<i32>(var_0.c, -19171i))), vec2<bool>(true, (_wgslsmith_f_op_f32(sign(var_0.a.x)) == -899f) && true));
    global3 = array<vec2<f32>, 22>();
    var var_3 = 1162f;
    let x = u_input.a;
    s_output = StorageBuffer(-406f, _wgslsmith_mult_i32(~(~(-var_2.x)), ~countOneBits(var_2.x)), -48240i);
}

