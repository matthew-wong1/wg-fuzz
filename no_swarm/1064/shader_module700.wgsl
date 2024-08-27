struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = vec4<i32>(u_input.a.x, 13851i, u_input.b << (countOneBits(~(~1u)) % 32u), -26894i);
    var var_1 = true;
    let var_2 = ~(-_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(u_input.a.x, u_input.a.x, 41719i, var_0.x))), var_0));
    var_1 = all(select(!vec3<bool>(true, select(true, true, false), true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), !vec3<bool>(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false)), false)));
    let var_3 = ~1u;
    return ~var_3;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = 17400u;
    var_0 = (~_wgslsmith_dot_vec3_u32(vec3<u32>(31096u, 37357u, 77642u), vec3<u32>(1u, 4743u, 34849u)) >> (0u % 32u)) | (func_3() ^ _wgslsmith_mod_u32(43376u, firstTrailingBit(reverseBits(29433u))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_1.x, 1376f, -1060f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1424f, arg_1.x, 1000f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-507f, arg_1.x, arg_1.x, -2500f), vec4<f32>(732f, arg_1.x, arg_1.x, -150f)))))))), ~(~firstLeadingBit(~vec4<u32>(28595u, 4294967295u, 31429u, 87065u))), vec2<bool>(true, true), _wgslsmith_f_op_f32(select(arg_1.x, -862f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))))));
    var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(165f, var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(529f * -1030f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(456f)), -940f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x))) - _wgslsmith_f_op_f32(floor(var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(853f, 1159f)), _wgslsmith_div_f32(-750f, _wgslsmith_f_op_f32(floor(-818f)))))), var_1.b, !var_1.c, 946f);
    var var_2 = Struct_3(arg_1, ~(~37515u), ~vec3<i32>(~1i, -(arg_0.x ^ 0i), -2147483647i), Struct_2(all(vec2<bool>(var_1.c.x, -1000f == var_1.d)), -firstLeadingBit(arg_0), false, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), u_input.a.xz), -2147483647i) | _wgslsmith_add_vec2_i32(reverseBits(arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(arg_0.x, 69603i)))));
    return Struct_2(true, arg_0, true, vec2<i32>(u_input.a.x, arg_0.x));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<bool> {
    let var_0 = -(~(~u_input.b));
    var var_1 = func_2(u_input.a.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, -236f))))));
    let var_2 = ~abs(~_wgslsmith_clamp_u32(6600u, 93391u, 78287u)) >> (abs(39561u) % 32u);
    let var_3 = vec3<bool>(true, false, var_1.a);
    var_1 = Struct_2(func_2(select(u_input.a.yx & u_input.a.zy, vec2<i32>(-2147483647i, var_1.d.x), false) << (((vec2<u32>(21934u, 28770u) | vec2<u32>(var_2, var_2)) ^ vec2<u32>(var_2, var_2)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1305f, arg_0)))))).a, u_input.a.zx, var_1.c, vec2<i32>(-72306i, 13580i));
    return select(!vec2<bool>(var_1.a, all(var_3.yz)), var_3.xz, !(!select(vec2<bool>(var_3.x, var_3.x), select(var_3.zy, vec2<bool>(var_3.x, true), var_3.zz), !var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f + 460f) - _wgslsmith_f_op_f32(f32(-1f) * -1360f)), _wgslsmith_f_op_f32(trunc(-664f))), 740f)), _wgslsmith_f_op_f32(trunc(122f)));
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + _wgslsmith_f_op_f32(floor(-258f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-586f, 417f, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-710f, -1729f)) + -1440f), 1102f)), _wgslsmith_mult_u32(7665u, 1u), -u_input.a | vec3<i32>(1i, 0i, 41688i), func_2(func_2(-u_input.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, -1142f)))).d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, -387f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1095f, 1793f) - vec2<f32>(1108f, -1442f)), vec2<f32>(-1030f, 522f), vec2<bool>(var_0.x, true))))));
    var_0 = !vec2<bool>(var_1.d.c, false);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -142f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 1085f, -1000f, var_1.a.x), vec4<f32>(var_1.a.x, var_1.a.x, 1518f, 200f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(936f, var_1.a.x, 948f, 829f)))), select(!vec4<bool>(false, var_0.x, true, var_1.d.c), !vec4<bool>(var_1.d.c, false, var_0.x, true), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), var_1.a.x, _wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(round(var_1.a.x))))), vec4<u32>(var_1.b, reverseBits(~var_1.b), ~(~0u), 0u), vec2<bool>(all(vec3<bool>(true, false, var_0.x)), var_1.d.c), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-1f)));
    let var_3 = var_2.a;
    var_2 = Struct_4(var_2.a, ~firstTrailingBit(var_2.b | vec4<u32>(var_1.b, var_2.b.x, var_1.b, var_1.b)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.b, 4294967295u) << (vec4<u32>(var_1.b, var_1.b, 0u, 27168u) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_1.b, 0u, var_1.b)), vec2<bool>(false, any(select(vec3<bool>(true, true, var_1.d.c), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_2.c.x, false, var_0.x), vec3<bool>(false, false, var_2.c.x)), var_1.a.x <= -340f))), -682f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1079f, var_3.x, var_3.x, -589f))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(406f, var_2.a.x), 1195f, 520f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-473f, 462f, var_3.x, 541f))) + _wgslsmith_f_op_vec4_f32(var_2.a + var_2.a))))), -(countOneBits(u_input.b) << (_wgslsmith_mult_u32(1u, var_2.b.x) % 32u)));
}

