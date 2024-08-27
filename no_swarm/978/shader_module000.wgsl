struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> vec4<bool> {
    var var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(exp2(arg_1))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1, var_0.x, arg_1)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-993f * var_0.x), _wgslsmith_f_op_f32(var_0.x * arg_1), _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(-arg_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2057f, 882f, -136f, 626f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1260f, 120f, arg_1), vec4<f32>(1540f, 109f, arg_1, var_0.x), false)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-212f - -864f), -312f, _wgslsmith_f_op_f32(-var_0.x), -162f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, var_0.x, var_0.x, -1054f) - _wgslsmith_div_vec4_f32(vec4<f32>(353f, -1392f, arg_1, arg_1), vec4<f32>(1229f, var_0.x, arg_1, 848f))))));
    global0 = array<vec2<u32>, 10>();
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 408f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -845f) * var_1.yx) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, var_0.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1529f, arg_1) - vec2<f32>(-1100f, var_0.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.wx))), !all(vec4<bool>(false, false, false, true))))), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, arg_0.x == 21353i), vec2<bool>(true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), !vec2<bool>(select(false, false, true), any(vec4<bool>(true, false, false, true))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.x, var_0.x))), var_1.wxz, true)))), _wgslsmith_div_vec3_f32(var_1.yyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zxx)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xww)))));
    return !vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), true)), true);
}

fn func_2(arg_0: f32, arg_1: bool) -> i32 {
    global0 = array<vec2<u32>, 10>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0, -1223f), _wgslsmith_f_op_f32(f32(-1f) * -513f), arg_0, _wgslsmith_f_op_f32(round(arg_0))), vec4<f32>(_wgslsmith_f_op_f32(round(-1218f)), arg_0, 1416f, _wgslsmith_f_op_f32(arg_0 * arg_0))), !(!select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, false))), select(!vec4<bool>(false, arg_1, arg_1, false), select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, arg_1, true, false), arg_1), func_3(vec2<i32>(1542i, 2147483647i), arg_0)), !select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, true, false), arg_1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, 780f), vec3<f32>(arg_0, -611f, 1665f))))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-277f, 1000f, arg_0, 892f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(627f, arg_0, arg_0, -1000f)))), vec3<bool>(1u < u_input.b.x, arg_1, true), func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(12597i, 50934i, 1i, -2147483647i), vec4<i32>(66098i, 1i, 102800i, -3760i)), countOneBits(-7376i)), -542f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(667f, arg_0, _wgslsmith_div_f32(866f, 725f)))), Struct_1(vec4<f32>(735f, arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)), !vec3<bool>(select(true, arg_1, false), false, arg_1), func_3(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 252f) - vec3<f32>(1338f, arg_0, -179f))), vec3<f32>(_wgslsmith_f_op_f32(max(359f, 127f)), _wgslsmith_f_op_f32(-arg_0), -381f)))), vec3<bool>(select(arg_1, any(func_3(vec2<i32>(63358i, 2147483647i), -1299f).zx), true), true, firstTrailingBit(_wgslsmith_add_i32(-6909i, -1i)) < -1i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, arg_0, arg_0) - vec4<f32>(370f, 1000f, -765f, -869f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 877f, 421f, arg_0))))), vec3<bool>(arg_1, false, arg_1), !vec4<bool>(arg_1, any(vec3<bool>(arg_1, arg_1, true)), !arg_1, !arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 265f, 658f) * vec3<f32>(arg_0, -119f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -709f))))));
    var var_1 = Struct_3(select(select(vec3<bool>(false, var_0.d.x || arg_1, all(var_0.b.c.wxy)), var_0.c.c.yzx, select(vec3<bool>(false, false, var_0.d.x), var_0.d, func_3(vec2<i32>(1i, -46699i), arg_0).x)), func_3(firstLeadingBit(-vec2<i32>(-1i, -1i)), _wgslsmith_f_op_f32(803f - _wgslsmith_div_f32(-709f, -273f))).xxy, -firstTrailingBit(-2147483647i) < -_wgslsmith_add_i32(54515i, -85515i)), ~abs(min(countOneBits(vec3<i32>(6884i, -16136i, -32677i)), firstTrailingBit(vec3<i32>(-2147483647i, -1i, -17227i)))), vec3<i32>(23570i, _wgslsmith_add_i32(-41112i, 23197i) >> (abs(~u_input.d) % 32u), 0i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.b.a))), vec3<bool>(arg_1, !select(any(var_0.c.c), var_0.e.c.x, true), var_0.c.c.x), var_0.e.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - var_0.c.d) + _wgslsmith_f_op_vec3_f32(var_0.c.a.xyy + vec3<f32>(var_0.b.d.x, -1041f, arg_0)))) + var_0.c.a.zwy));
    let var_3 = var_2;
    return select(var_1.c.x, _wgslsmith_add_i32(~reverseBits(reverseBits(-19772i)), 3027i << ((1u & ~u_input.a.x) % 32u)), !(u_input.b.x < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 43202u), ~u_input.a.xz)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_i32(min(firstLeadingBit(~(-25983i)), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-808f, 893f)))), true)), -2147483647i);
    let var_1 = Struct_4(select(func_3(max(vec2<i32>(-22670i, -31251i), vec2<i32>(0i, -21048i)) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.a.x, 25173u)) % vec2<u32>(32u)), -1000f), !func_3(vec2<i32>(2663i, -97931i), -1524f), func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17658i, 23615i, 50465i, -22281i), vec4<i32>(14434i, -5316i, -11163i, -27589i)), ~20708i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1692f), _wgslsmith_f_op_f32(round(-156f))))), max(1i, -2147483647i));
    let var_2 = -2147483647i;
    global0 = array<vec2<u32>, 10>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-546f, -689f, -618f, -388f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(741f, -783f, 941f, 1240f), vec4<f32>(253f, -1000f, -1065f, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-713f, -1353f, -250f, -1071f), vec4<f32>(-1557f, -1448f, 1128f, -2193f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-879f, 1482f, 170f, -315f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1761f, -1129f, 762f, -1432f))))));
    return -1282f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(625f, 818f, true)), -1222f, _wgslsmith_f_op_f32(abs(-911f)), 187f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, 2167f, -271f, -502f))) + _wgslsmith_div_vec4_f32(vec4<f32>(958f, 1499f, _wgslsmith_f_op_f32(floor(-293f)), -267f), vec4<f32>(_wgslsmith_f_op_f32(func_1()), 1000f, _wgslsmith_f_op_f32(990f + 608f), -734f))));
    let var_1 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(select(-530f, 1433f, false)))) + _wgslsmith_f_op_f32(-var_0.x)), -339f), vec3<bool>(true, any(vec2<bool>(var_0.x > -1000f, true)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -303f < var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1()), -538f, var_0.x)));
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(25210i, reverseBits(1i)), vec2<i32>(12414i, i32(-1i) * -2147483647i))), u_input.c.zwz & u_input.a, _wgslsmith_f_op_vec4_f32(round(var_1.a)));
}

