struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 52060u;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-995f, vec2<i32>(-1i, 7250i), -332f), Struct_1(-1436f, vec2<i32>(25330i, 28629i), 1345f), Struct_1(531f, vec2<i32>(-11173i, 2147483647i), -2700f), Struct_1(-1060f, vec2<i32>(-26974i, 2147483647i), 212f), Struct_1(-191f, vec2<i32>(14839i, -56018i), -3141f), Struct_1(-677f, vec2<i32>(-20112i, -1i), 566f), Struct_1(-1051f, vec2<i32>(-39375i, i32(-2147483648)), 348f), Struct_1(-1095f, vec2<i32>(1i, 14951i), -1598f), Struct_1(-422f, vec2<i32>(-11889i, 35753i), -688f), Struct_1(668f, vec2<i32>(-1110i, 1i), -434f), Struct_1(-1183f, vec2<i32>(i32(-2147483648), 1059i), 147f), Struct_1(662f, vec2<i32>(2147483647i, 25745i), -713f), Struct_1(577f, vec2<i32>(2147483647i, -33985i), -1173f), Struct_1(1378f, vec2<i32>(0i, 0i), -878f), Struct_1(150f, vec2<i32>(2147483647i, 20650i), -1913f), Struct_1(385f, vec2<i32>(1i, -6474i), -1000f), Struct_1(458f, vec2<i32>(1i, 23845i), -840f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = all(vec2<bool>(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f))), vec2<i32>(1i, 2147483647i), 447f);
    global1 = array<Struct_1, 17>();
    var_0 = any(vec4<bool>(all(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, any(vec3<bool>(false, true, false)))), !all(vec3<bool>(true, true, true)), 4988u <= ~(~u_input.a), (select(true, false, true) & false) || (~18367u < _wgslsmith_mod_u32(u_input.a, 18382u))));
    var_1 = global1[_wgslsmith_index_u32(max(firstLeadingBit(1u ^ max(u_input.a, 5384u)), abs(abs(13014u >> ((u_input.a | 6749u) % 32u)))), 17u)];
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(146f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), var_1.c)))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-921f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, 306f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2085f, -1000f))))))));
    global1 = array<Struct_1, 17>();
    var var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x + -1404f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_f_op_f32(exp2(var_1.x));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1291f))) * 657f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f * 1289f)))), -554f, _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1686f * -976f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-121f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~select(firstTrailingBit(vec2<i32>(-45884i, 0i)), vec2<i32>(i32(-1i) * -60404i, abs(-38825i)), vec2<bool>(false, true)), var_0.x);
    let var_2 = select(!vec3<bool>(true, !all(vec4<bool>(false, false, true, false)), true), vec3<bool>(false, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) != ((var_1.b.x <= var_1.b.x) & true)), all(vec3<bool>(true, true, true)));
    let var_3 = !(!(!(reverseBits(arg_0.x) < u_input.a)));
    let var_4 = var_2;
    return ~_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(~arg_0.x | _wgslsmith_mod_u32(4992u, arg_0.x), _wgslsmith_add_u32(~u_input.a, _wgslsmith_add_u32(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    global0 = abs(min(1u, u_input.a));
    let var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 9703u) | u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, 44595u), vec3<u32>(u_input.a, u_input.a, 1u))), func_1(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ (vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))), 61937u) >> (~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(select(var_0, vec3<u32>(var_0.x, 53433u, var_0.x), true), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 39259u, 4294967295u), vec3<u32>(28360u, 1u, u_input.a)))), 17u)], Struct_1(_wgslsmith_f_op_f32(sign(-376f)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 17383i), select(1i, 3043i, false)), -13926i), _wgslsmith_div_f32(-1205f, -676f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2756f, -671f, var_1.a.c)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1727f, -670f, var_1.a.a), vec3<f32>(-1937f, -1817f, 518f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2871f, _wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(min(-1251f, 227f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.b.a, -1563f)))), -272f, var_0, 0u);
}

