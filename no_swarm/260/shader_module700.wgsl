struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(221f, -1000f), vec2<f32>(750f, 149f), vec2<f32>(-805f, -969f), vec2<f32>(-724f, 716f), vec2<f32>(-576f, -958f), vec2<f32>(-2328f, -160f), vec2<f32>(-1000f, 999f), vec2<f32>(-377f, 978f), vec2<f32>(1391f, 403f), vec2<f32>(1497f, 1000f), vec2<f32>(-702f, -2502f), vec2<f32>(1527f, 545f), vec2<f32>(-235f, -2168f), vec2<f32>(-1398f, 1303f), vec2<f32>(-479f, -301f), vec2<f32>(414f, 1000f), vec2<f32>(-1412f, 138f), vec2<f32>(736f, -998f), vec2<f32>(2627f, 1000f), vec2<f32>(-744f, 382f), vec2<f32>(-1441f, -1019f), vec2<f32>(-362f, 339f), vec2<f32>(-506f, 272f), vec2<f32>(-182f, 611f), vec2<f32>(201f, 1129f), vec2<f32>(-1226f, -808f), vec2<f32>(361f, 1642f), vec2<f32>(-1000f, 1279f), vec2<f32>(627f, 877f), vec2<f32>(756f, -1414f), vec2<f32>(-669f, -1346f), vec2<f32>(1000f, 785f));

var<private> global1: array<i32, 11> = array<i32, 11>(-28710i, 1i, 1i, 2147483647i, 7620i, 0i, -13875i, -4636i, 1i, -68294i, -41042i);

var<private> global2: array<f32, 4>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    return !(!(!vec2<bool>(arg_0, false)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = arg_0.d.yz;
    let var_1 = vec3<bool>(true, any(select(select(select(vec4<bool>(true, true, true, arg_0.a.x), vec4<bool>(true, false, false, true), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), arg_0.a.x), true), vec4<bool>(all(vec3<bool>(true, arg_0.a.x, true)), false, all(arg_0.a.xy), arg_0.a.x), true)), true);
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 4u)];
    return vec2<u32>(reverseBits(~(~0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.c, countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(37906u, 4294967295u), arg_0.c))), vec2<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, 1u))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(vec3<bool>(all(!func_2(true)), arg_2.x, false), (~(vec2<i32>(-2147483647i, -2147483647i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ -(~vec2<i32>(global1[_wgslsmith_index_u32(arg_1, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]))) | _wgslsmith_div_vec2_i32(-(~vec2<i32>(-1i, arg_0)), vec2<i32>(arg_0, global1[_wgslsmith_index_u32(arg_1, 11u)]) >> (vec2<u32>(30828u, 7945u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(62810u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(4172u, 1u), countOneBits(94398u), 0u >> (u_input.a % 32u))), ~countOneBits(vec2<u32>(arg_1, arg_1))), ~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-1i, 5744i, arg_0, -2147483647i)), vec4<i32>(arg_0, -8352i, -2147483647i, arg_0 | 1i)));
    var var_1 = Struct_2(func_3(Struct_1(var_0.a, var_0.b, vec2<u32>(firstTrailingBit(var_0.c.x), ~11994u), _wgslsmith_mod_vec4_i32(var_0.d, _wgslsmith_mult_vec4_i32(vec4<i32>(13420i, 49275i, 56176i, arg_0), vec4<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 11u)], 1i, -1i))))), _wgslsmith_f_op_f32(min(688f, global2[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_add_u32(var_0.c.x ^ u_input.a, 1u | arg_1)), 4u)])), ~_wgslsmith_mult_i32(-(~2147483647i), _wgslsmith_clamp_i32(max(arg_0, -2147483647i), 0i, -7949i << (var_0.c.x % 32u))), 17296i, max(~var_0.c.x, 1u));
    let var_2 = Struct_2(~func_3(var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-375f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 4u)]))))) + global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~var_0.c.x, arg_1, reverseBits(var_1.a.x)), ~firstLeadingBit(u_input.a), func_3(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d)).x), 4u)]), reverseBits(firstLeadingBit(-2147483647i)) & _wgslsmith_sub_i32(var_1.d, var_1.d), select(select(_wgslsmith_add_i32(~var_1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 11u)], -53243i, var_1.c), vec3<i32>(arg_0, -7133i, arg_0))), -arg_0, true), 9552i, true), firstLeadingBit(u_input.a));
    return firstLeadingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 32>();
    var var_0 = select(~((-vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], -1i, global1[_wgslsmith_index_u32(51708u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]) >> ((vec4<u32>(29661u, u_input.a, u_input.a, 11057u) >> (vec4<u32>(38099u, 36416u, u_input.a, 31830u) % vec4<u32>(32u))) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 11u)], -25917i, -20269i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 5798i, -2147483647i, global1[_wgslsmith_index_u32(1u, 11u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -15634i, 0i, global1[_wgslsmith_index_u32(u_input.a, 11u)])))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, 1u, 55695u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 11u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a), 11u)], global1[_wgslsmith_index_u32(16452u, 11u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(countOneBits(func_1(21153i, 1u, vec3<bool>(false, false, true))), 4u)] >= -910f, true, true));
    let var_1 = false | select(!(true || (global1[_wgslsmith_index_u32(70647u, 11u)] < var_0.x)), !any(vec2<bool>(true, true)), false);
    var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(~abs(min(vec4<i32>(22990i, -2147483647i, 59090i, global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<i32>(-5322i, var_0.x, global1[_wgslsmith_index_u32(17191u, 11u)], var_0.x))), vec4<i32>(-1i) * -vec4<i32>(-17772i, -2147483647i, global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)])));
    var var_2 = Struct_2(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, _wgslsmith_div_u32(11874u, 18030u))), _wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 48758u), vec2<u32>(u_input.a, 1u))), ~vec2<u32>(75137u, u_input.a) | vec2<u32>(u_input.a, 11854u)), all(!vec4<bool>(var_1, false, var_1, true))), _wgslsmith_f_op_f32(f32(-1f) * -150f), 0i, min(-1i, 1i), ~(~func_3(Struct_1(vec3<bool>(true, var_1, var_1), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.x), vec2<u32>(0u, 4294967295u), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 11u)], 1214i, var_0.x))).x));
    global2 = array<f32, 4>();
    let var_3 = Struct_1(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_1, true)), vec3<bool>(false, var_1, !var_1), !(!vec3<bool>(true, true, var_1))), !vec3<bool>(true, var_1, false || var_1), select(select(vec3<bool>(var_1, true, true), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, true)), vec3<bool>(var_1, var_1, true)), select(select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, var_1)), vec3<bool>(var_1, true, false), select(vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, var_1), vec3<bool>(true, true, var_1))), _wgslsmith_f_op_f32(-var_2.b) > var_2.b)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_0.zw, var_0.zx), vec2<i32>(global1[_wgslsmith_index_u32(1u, 11u)] << (var_2.a.x % 32u), min(var_2.c, global1[_wgslsmith_index_u32(u_input.a, 11u)]))), vec2<i32>(_wgslsmith_div_i32(~0i, ~var_2.c), ~(1i << (u_input.a % 32u)))), ~var_2.a, min(vec4<i32>(var_0.x, -38144i, firstLeadingBit(0i), -30030i) ^ reverseBits(-vec4<i32>(var_2.d, var_0.x, var_0.x, global1[_wgslsmith_index_u32(u_input.a, 11u)])), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-11157i, var_2.d, -31810i, var_2.c), vec4<i32>(var_2.c, var_2.c, 0i, var_2.c)), -(~var_0.x), ~global1[_wgslsmith_index_u32(~var_2.a.x, 11u)], _wgslsmith_div_i32(-4776i, -1i))));
    let var_4 = true;
    global2 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_2.a.x);
}

