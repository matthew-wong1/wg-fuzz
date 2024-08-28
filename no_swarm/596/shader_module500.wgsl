struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(2147483647i, -13987i), -2108f, 16595u), Struct_1(vec2<i32>(2147483647i, 11179i), -616f, 1u), Struct_1(vec2<i32>(44569i, -16328i), -1488f, 1u), Struct_1(vec2<i32>(12254i, 10430i), -845f, 1u), Struct_1(vec2<i32>(40429i, 1218i), 665f, 11309u), Struct_1(vec2<i32>(i32(-2147483648), 46429i), -482f, 1u), Struct_1(vec2<i32>(12405i, i32(-2147483648)), 1887f, 6783u), Struct_1(vec2<i32>(15461i, 23637i), 341f, 20025u), Struct_1(vec2<i32>(i32(-2147483648), 45579i), 931f, 0u), Struct_1(vec2<i32>(2147483647i, 12048i), 612f, 43704u), Struct_1(vec2<i32>(0i, 0i), -1083f, 35611u), Struct_1(vec2<i32>(-33917i, 1i), 347f, 0u), Struct_1(vec2<i32>(1i, -1i), 758f, 4294967295u), Struct_1(vec2<i32>(2147483647i, -56215i), -596f, 96775u), Struct_1(vec2<i32>(-3436i, 1i), 991f, 0u), Struct_1(vec2<i32>(16568i, -59406i), 1102f, 0u), Struct_1(vec2<i32>(0i, -1i), 1000f, 4294967295u), Struct_1(vec2<i32>(0i, 39191i), -888f, 64265u), Struct_1(vec2<i32>(-19188i, -44371i), -1385f, 4294967295u), Struct_1(vec2<i32>(48712i, 1i), 604f, 0u), Struct_1(vec2<i32>(-5400i, i32(-2147483648)), 709f, 1u), Struct_1(vec2<i32>(-10537i, -33050i), -519f, 21510u), Struct_1(vec2<i32>(0i, i32(-2147483648)), 267f, 1u), Struct_1(vec2<i32>(13165i, 2147483647i), -812f, 228u));

var<private> global2: f32 = -628f;

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(1006f, 601f), vec2<f32>(-1779f, -356f), vec2<f32>(-1064f, -1707f), vec2<f32>(-930f, -1695f), vec2<f32>(894f, -320f), vec2<f32>(307f, -1389f), vec2<f32>(-751f, 1427f), vec2<f32>(830f, 1217f), vec2<f32>(-334f, 191f), vec2<f32>(1215f, -636f), vec2<f32>(-498f, -707f), vec2<f32>(386f, 1078f), vec2<f32>(-913f, 1276f), vec2<f32>(154f, 2159f), vec2<f32>(-416f, 1240f), vec2<f32>(-1726f, -839f), vec2<f32>(1118f, 734f), vec2<f32>(-2035f, -1152f), vec2<f32>(-1406f, 179f), vec2<f32>(1000f, 957f), vec2<f32>(1537f, 714f), vec2<f32>(-1922f, 329f), vec2<f32>(-666f, -428f), vec2<f32>(-346f, 758f), vec2<f32>(401f, -1254f), vec2<f32>(-1440f, 928f), vec2<f32>(-1472f, 777f), vec2<f32>(-519f, -1332f), vec2<f32>(-1000f, -577f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global3 = array<vec2<f32>, 29>();
    let var_0 = 8840i;
    global1 = array<Struct_1, 24>();
    var var_1 = arg_0;
    let var_2 = !vec2<bool>(!(!(arg_0.a.x >= var_1.a.x)), false);
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> i32 {
    global1 = array<Struct_1, 24>();
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -172f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f + _wgslsmith_f_op_f32(-1677f * -125f))), !(!any(!arg_3.wy)), func_2(Struct_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(17155i, u_input.c), vec2<i32>(arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.x)), -1681f, arg_3.x)), ~1u), Struct_1(vec2<i32>(-24868i, u_input.a.x) | abs(vec2<i32>(-12785i, arg_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -501f), arg_2.x)), ~0u)));
    global1 = array<Struct_1, 24>();
    var var_1 = arg_0;
    let var_2 = u_input.b.xx;
    return _wgslsmith_mult_i32(-2147483647i, abs(~u_input.c));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global3 = array<vec2<f32>, 29>();
    let var_0 = _wgslsmith_add_u32((_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x >> (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(arg_0.c, 15u)], 4294967295u), vec3<u32>(1u, arg_0.c, u_input.b.x))) % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(16182u >> (1u % 32u), firstLeadingBit(4294967295u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47817u, 15u)], 15u)]), _wgslsmith_sub_vec3_u32(max(vec3<u32>(3006u, arg_0.c, arg_0.c), u_input.b), vec3<u32>(u_input.b.x, u_input.b.x, 1u) | u_input.b)), ~(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], ~0u) & 1u));
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.zz), _wgslsmith_f_op_f32(round(171f)), _wgslsmith_dot_vec3_u32(countOneBits(~(~u_input.b)), vec3<u32>(var_0, 10223u, ~(~var_0))));
    let var_2 = arg_0;
    let var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1833f)))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-332f - 361f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - 1806f), !any(vec2<bool>(true, false)))));
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-129f, _wgslsmith_f_op_f32(arg_2.b - arg_2.b)))) * arg_2.b), ~0u);
    let var_1 = u_input.b.xx;
    global1 = array<Struct_1, 24>();
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) + _wgslsmith_div_f32(var_0.b, 827f))), _wgslsmith_f_op_f32(step(arg_2.b, var_0.b)), -1279f));
    return Struct_1(vec2<i32>(min(countOneBits(2147483647i), 1i), var_0.a.x), var_0.b, ~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    global3 = array<vec2<f32>, 29>();
    let var_0 = func_4(_wgslsmith_clamp_u32(abs(global0[_wgslsmith_index_u32(1u ^ u_input.b.x, 15u)]) >> (_wgslsmith_add_u32(1u, u_input.b.x) % 32u), 0u >> (~u_input.b.x % 32u), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(~u_input.b.yz, vec2<u32>(u_input.b.x, 61294u)))), vec4<i32>(u_input.c, -10803i, -firstTrailingBit(-74824i), _wgslsmith_add_i32(abs(func_1(global1[_wgslsmith_index_u32(133647u, 24u)], Struct_1(u_input.a.zy, -343f, u_input.b.x), global3[_wgslsmith_index_u32(19300u, 29u)], vec4<bool>(false, false, true, false))), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, u_input.c, -38923i) & vec3<i32>(2147483647i, -1i, u_input.a.x)))), Struct_1(u_input.a.xx, _wgslsmith_f_op_f32(step(-1342f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(119146u, 24u)], vec3<f32>(1074f, -171f, -1870f))))))), ~firstLeadingBit(11463u)));
    let var_1 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 1i, u_input.a.x, u_input.c), vec4<i32>(1641i, 7624i, 34176i, 2147483647i)), vec4<i32>(var_0.a.x, u_input.c, firstLeadingBit(0i), -14359i)) ^ ~(vec4<i32>(var_0.a.x, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(1i, var_0.a.x, var_0.a.x, var_0.a.x)), abs(u_input.a.x)) ^ vec4<i32>(u_input.a.x, -2147483647i, countOneBits(0i), -14446i));
    var var_2 = ~_wgslsmith_div_u32(~abs(~u_input.b.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2399f, -479f, var_0.b, var_0.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, var_0.b, var_0.b, -1870f)), vec4<f32>(290f, -884f, var_0.b, 121f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1387f, var_0.b, 177f, -510f) * vec4<f32>(1221f, 1000f, var_0.b, -1019f)), vec4<f32>(-920f, -1219f, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(175f, 1703f, var_0.b, 700f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1207f, 542f, 787f, 1354f) * vec4<f32>(-313f, var_0.b, var_0.b, -424f)), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, var_0.b, -1017f, var_0.b), vec4<f32>(var_0.b, var_0.b, 1000f, 1486f))))))), _wgslsmith_mod_vec4_i32(-vec4<i32>(select(33454i, -1599i, false), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), min(-1i, var_0.a.x), ~u_input.c), vec4<i32>(firstTrailingBit(func_1(var_0, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global3[_wgslsmith_index_u32(var_0.c, 29u)], vec4<bool>(true, true, true, false))), var_1.x, u_input.c, var_0.a.x >> ((40675u & var_0.c) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), func_4(max(0u, 4294967295u), vec4<i32>(var_0.a.x, -2147483647i, var_1.x, u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 32546u), vec4<u32>(var_0.c, 64837u, 15258u, var_0.c)), 24u)]).b)), _wgslsmith_f_op_f32(min(-1884f, var_0.b))), -(~firstLeadingBit(var_0.a.x) << (4279u % 32u)));
}

