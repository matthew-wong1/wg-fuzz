struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(-876f, -180f, 166f, -390f), vec4<f32>(1632f, -1412f, 105f, -1000f)), Struct_1(vec4<f32>(1227f, -138f, 1319f, -134f), vec4<f32>(-131f, -685f, 179f, 1058f)), Struct_1(vec4<f32>(226f, 116f, 512f, 417f), vec4<f32>(906f, 1486f, -853f, -211f)), Struct_1(vec4<f32>(-1315f, -337f, -1836f, 1000f), vec4<f32>(625f, 881f, 221f, -1983f)), Struct_1(vec4<f32>(1428f, 521f, -250f, 748f), vec4<f32>(-903f, -1000f, -1689f, -320f)), Struct_1(vec4<f32>(-932f, -758f, 168f, 1942f), vec4<f32>(1000f, -696f, 444f, 876f)), Struct_1(vec4<f32>(-1116f, -984f, 726f, -1000f), vec4<f32>(-1020f, 1000f, -713f, 148f)), Struct_1(vec4<f32>(-212f, -1000f, -1276f, -2127f), vec4<f32>(-250f, -803f, -1755f, -1292f)), Struct_1(vec4<f32>(2330f, -403f, -1896f, 759f), vec4<f32>(-1001f, -165f, -184f, -1422f)), Struct_1(vec4<f32>(542f, 1229f, 873f, 1259f), vec4<f32>(556f, 155f, 1000f, 1173f)), Struct_1(vec4<f32>(-644f, 407f, 236f, -763f), vec4<f32>(163f, 879f, 966f, 128f)), Struct_1(vec4<f32>(-257f, 407f, -1000f, 2202f), vec4<f32>(1170f, -1285f, -1983f, -938f)), Struct_1(vec4<f32>(-1103f, 1132f, -197f, 1887f), vec4<f32>(-227f, -1290f, 179f, -390f)), Struct_1(vec4<f32>(1238f, 418f, -1000f, -281f), vec4<f32>(498f, -837f, 289f, 756f)), Struct_1(vec4<f32>(-154f, 917f, -909f, -709f), vec4<f32>(-1000f, -264f, -1495f, -2357f)), Struct_1(vec4<f32>(1860f, 550f, 607f, 1342f), vec4<f32>(738f, -1452f, 556f, 1230f)), Struct_1(vec4<f32>(-1745f, -1000f, 369f, 138f), vec4<f32>(-1228f, -1343f, -1520f, -396f)), Struct_1(vec4<f32>(-1687f, -505f, -999f, 815f), vec4<f32>(904f, 603f, 938f, 509f)), Struct_1(vec4<f32>(-591f, 405f, 286f, 614f), vec4<f32>(522f, -764f, -228f, 1153f)), Struct_1(vec4<f32>(-108f, -195f, -338f, -324f), vec4<f32>(114f, 505f, -178f, 881f)), Struct_1(vec4<f32>(-1047f, 344f, 661f, -1511f), vec4<f32>(644f, -979f, 1904f, 159f)), Struct_1(vec4<f32>(510f, -256f, 1123f, -798f), vec4<f32>(-205f, 1000f, -360f, 1059f)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(min(~42190u, 32918u << (u_input.a.x % 32u)), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), u_input.a.x);
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -348f, 2285f, -986f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, -2251f, -383f, -120f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2843f, 1000f, 828f, 313f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-786f + -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -762f))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2259f), 1198f)))));
    var var_2 = Struct_1(var_1, _wgslsmith_f_op_vec4_f32(floor(var_1)));
    var var_3 = reverseBits(_wgslsmith_mult_u32(reverseBits(~(u_input.a.x >> (var_0 % 32u))), 4294967295u));
    return var_2.a;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> bool {
    global1 = array<Struct_1, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 110f, arg_1.x, arg_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))))));
    global1 = array<Struct_1, 22>();
    var var_1 = 1187f;
    var var_2 = var_0;
    return !(!any(vec2<bool>(true, true)) && true);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, -349f, _wgslsmith_f_op_f32(f32(-1f) * -192f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(199f, -707f, -2790f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(1453f)), -1325f, _wgslsmith_f_op_f32(-130f * -839f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-404f * -2075f), _wgslsmith_f_op_f32(1860f + -440f), _wgslsmith_f_op_f32(f32(-1f) * -1817f))), !(!func_2(u_input.a.x, vec4<f32>(670f, 1371f, -160f, -131f))))));
    let var_1 = var_0.x;
    global1 = array<Struct_1, 22>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 120f, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 293f, -681f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, var_1, 537f, 1756f) + vec4<f32>(-2259f, 1933f, -1000f, 584f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -223f, var_1, var_0.x)), vec4<f32>(var_1, -244f, var_1, -851f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(round(var_2.b.wzy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(round(1692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_clamp_u32(~(~(~u_input.a.x | u_input.a.x)), 1u, 65056u);
    var var_1 = global0[_wgslsmith_index_u32(0u, 8u)];
    global0 = array<Struct_1, 8>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)) + vec4<f32>(219f, 592f, -306f, arg_3.x))), _wgslsmith_f_op_vec4_f32(exp2(var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-771f - -208f))) <= -833f, 6015i, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1119f)) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-127f, _wgslsmith_f_op_f32(-172f - -406f)))))));
    global1 = array<Struct_1, 22>();
    let var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a) >> (max(~(~58395u), 1u) % 32u), firstTrailingBit(~_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), var_1), 22u)];
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_0.a.x));
    let var_4 = _wgslsmith_div_vec3_i32(-max(vec3<i32>(firstTrailingBit(71714i), 2147483647i, select(-11031i, 774i, var_1)), vec3<i32>(2147483647i, -1i, 1i)), max(-vec3<i32>(_wgslsmith_mult_i32(25767i, 14779i), _wgslsmith_div_i32(-2147483647i, 85250i), 1i), select(vec3<i32>(i32(-1i) * -90408i, _wgslsmith_div_i32(7117i, 1i), -10361i), abs(vec3<i32>(2147483647i, 0i, -1i)), vec3<bool>(var_1, all(vec3<bool>(false, true, var_1)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(122f);
}

