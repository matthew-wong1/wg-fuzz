struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-1i, 0i, 1i), vec3<i32>(0i, 7371i, -43637i), vec3<i32>(23283i, -1i, 1i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(23713i, 35387i, -1i), vec3<i32>(-9146i, i32(-2147483648), -1853i), vec3<i32>(-7240i, 1i, 1207i), vec3<i32>(i32(-2147483648), 11779i, -1i), vec3<i32>(-559i, i32(-2147483648), -1i));

var<private> global2: bool = false;

var<private> global3: u32;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1000f, vec3<f32>(-1571f, -382f, 1861f), vec3<u32>(4294967295u, 24148u, 49643u), 38484u), Struct_1(707f, vec3<f32>(283f, 1020f, 265f), vec3<u32>(0u, 35187u, 1u), 4294967295u), Struct_1(552f, vec3<f32>(-888f, -1164f, -1000f), vec3<u32>(0u, 4294967295u, 1u), 13u), Struct_1(467f, vec3<f32>(1292f, -1000f, -198f), vec3<u32>(56545u, 32189u, 1u), 4294967295u), Struct_1(-171f, vec3<f32>(-437f, -1290f, 145f), vec3<u32>(0u, 23309u, 0u), 47493u), Struct_1(328f, vec3<f32>(-203f, -760f, -1816f), vec3<u32>(67529u, 42794u, 75301u), 82546u), Struct_1(-851f, vec3<f32>(1023f, 669f, -1052f), vec3<u32>(0u, 0u, 90924u), 6648u), Struct_1(2698f, vec3<f32>(-1000f, 900f, -179f), vec3<u32>(12599u, 1u, 4294967295u), 0u), Struct_1(-1000f, vec3<f32>(896f, 1037f, -172f), vec3<u32>(82938u, 4294967295u, 12713u), 4294967295u), Struct_1(2014f, vec3<f32>(2221f, -1046f, -1375f), vec3<u32>(4294967295u, 4294967295u, 39283u), 7795u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> i32 {
    return u_input.a;
}

fn func_2(arg_0: f32) -> f32 {
    global4 = array<Struct_1, 10>();
    var var_0 = -countOneBits(vec4<i32>(~1i, -firstLeadingBit(0i), firstTrailingBit(_wgslsmith_div_i32(0i, u_input.a)), _wgslsmith_sub_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 19828i), vec2<i32>(u_input.a, 0i)))));
    let var_1 = i32(-1i) * -select(~max(u_input.a, var_0.x), -1i, false);
    global3 = 1u;
    let var_2 = ~_wgslsmith_sub_vec4_i32(-vec4<i32>(func_3(vec3<bool>(true, global0[_wgslsmith_index_u32(11217u, 15u)], global0[_wgslsmith_index_u32(6783u, 15u)]), vec3<f32>(-648f, arg_0, -557f)), var_0.x, abs(var_0.x), ~u_input.a), select(~vec4<i32>(var_0.x, -9350i, u_input.a, var_1), ~vec4<i32>(var_0.x, 32811i, u_input.a, 3442i), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(89621u, 15u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(34250u, 15u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], true, true)), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(26071u, 15u)], false, true))));
    return -826f;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(arg_1 + -692f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-514f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 - arg_1)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-818f, var_0.x, var_0.x)))))), ~((~vec3<u32>(arg_0, arg_0, 4294967295u) & select(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(arg_0, arg_0, 6498u), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(4463u, 15u)], false))) << (vec3<u32>(arg_0, ~1u, reverseBits(arg_0)) % vec3<u32>(32u))), _wgslsmith_mod_u32(0u, 43304u));
    global2 = true;
    global2 = !(!global0[_wgslsmith_index_u32(4294967295u, 15u)]);
    var_1 = global4[_wgslsmith_index_u32(~77076u, 10u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) * _wgslsmith_f_op_f32(-arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-123f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(84960u, -792f, u_input.a)) - _wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f - 950f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(794f)), -959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-122f, 146f)) - _wgslsmith_f_op_f32(2257f * 1750f)), _wgslsmith_f_op_f32(step(1000f, -1056f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1079f, -328f, -1086f) * vec3<f32>(-1208f, -1000f, 187f))), true || (_wgslsmith_f_op_f32(f32(-1f) * -155f) != _wgslsmith_f_op_f32(round(1000f))))), ~firstTrailingBit(~firstTrailingBit(vec3<u32>(1u, 30739u, 0u))), ~_wgslsmith_add_u32(1u, ~36921u));
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(30822u, 15u)] | global0[_wgslsmith_index_u32(~var_0.d, 15u)], false, 1i != abs(~u_input.a));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(func_1(var_0.c.x >> (~350u % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1239f * 334f))), -1i))));
    let var_3 = _wgslsmith_mult_vec3_i32(select(abs(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), global1[_wgslsmith_index_u32(~max(var_0.d, 22306u), 9u)] | _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(var_0.d, 9u)], global1[_wgslsmith_index_u32(1u, 9u)] << (vec3<u32>(45392u, 4544u, var_0.c.x) % vec3<u32>(32u))), select(vec3<bool>(false, true, u_input.a > u_input.a), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, false), true), false)), vec3<i32>(u_input.a, countOneBits(min(-u_input.a, u_input.a)), -u_input.a));
    var var_4 = vec3<u32>(1u, 4294967295u, 28424u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_3.xy, var_3.yx), -var_3.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, var_3.x), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_4.x, _wgslsmith_add_u32(var_0.c.x, 40472u)), 9u)]));
}

