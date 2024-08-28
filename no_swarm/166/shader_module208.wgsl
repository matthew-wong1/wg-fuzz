struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = ~countOneBits(~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_sub_u32(~(~49959u), abs(_wgslsmith_sub_u32(var_0.x, 4294967295u))) << (var_0.x % 32u), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(max(1645f, global0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1242f, global0.x, true)) - _wgslsmith_f_op_f32(select(-1129f, global0.x, false)))))), vec2<bool>(select(false, true | (207f < global0.x), true), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(step(-812f, global0.x))), !(!var_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 2233f) * global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))));
    let var_3 = any(vec2<bool>(125f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-639f + 493f), _wgslsmith_f_op_f32(floor(var_2.x)))), (!var_1.e.x | var_1.e.x) & true));
    let var_4 = Struct_1(~vec2<u32>(22938u, var_0.x | ~4294967295u), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(55843u, var_1.b)), vec2<u32>(4294967295u, 6481u << (var_0.x % 32u))), vec2<u32>(~7681u, ~var_0.x)), -1i, -(min(~vec3<i32>(var_1.c, var_1.c, var_1.c), vec3<i32>(var_1.c, -9567i, -2147483647i)) | -vec3<i32>(-2147483647i, 30143i, u_input.a)));
    return max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, ~50797u, countOneBits(var_4.a.x), 1u), select(~vec4<u32>(var_0.x, var_4.a.x, var_1.b, 17985u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, var_1.b, 4294967295u, 4294967295u), vec4<u32>(var_1.b, var_1.b, 26361u, var_4.a.x)), false)), ~vec4<u32>(~15263u, _wgslsmith_dot_vec3_u32(vec3<u32>(36997u, 20139u, 1u), vec3<u32>(38389u, 1u, 4294967295u)), _wgslsmith_mod_u32(93609u, 4294967295u), 0u), vec4<bool>(any(!vec3<bool>(false, var_3, var_1.e.x)), var_1.e.x, true, var_1.e.x)), reverseBits(firstTrailingBit(~vec4<u32>(var_4.b.x, var_4.b.x, var_1.b, 999u))) ^ vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(22381u, 4294967295u, var_1.b, 21042u), vec4<u32>(0u, var_0.x, 4294967295u, var_0.x)), _wgslsmith_dot_vec2_u32(var_0.zz, var_0.zx), 1u, 0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_3(-1115f, arg_0.x ^ _wgslsmith_add_u32(~arg_0.x, abs(1u >> (1u % 32u))), u_input.a, _wgslsmith_f_op_f32(sign(-495f)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(true, true))));
    global0 = vec2<f32>(869f, _wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(f32(-1f) * -739f)));
    var var_1 = select(select(!select(vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x), vec4<bool>(var_0.e.x, true, var_0.e.x, var_0.e.x), all(vec2<bool>(false, true))), vec4<bool>(all(!vec4<bool>(false, false, var_0.e.x, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), var_0.e.x)), !all(var_0.e), -14769i != firstTrailingBit(var_0.c)), false), !(!vec4<bool>(0u <= var_0.b, true, false, var_0.e.x)), all(!vec4<bool>(false, select(true, false, var_0.e.x), true, false)));
    let var_2 = u_input.a;
    var var_3 = select(vec4<bool>(var_0.e.x, any(!(!var_0.e)), all(!vec4<bool>(var_1.x, var_1.x, true, false)), true), vec4<bool>(!(!all(var_1.zwx)), var_1.x, true, var_1.x), select(vec4<bool>(true, var_0.e.x, var_1.x, 0u < arg_0.x), vec4<bool>(!(true | var_1.x), all(var_1.xxz), any(vec3<bool>(false, var_1.x, var_1.x)), all(var_1.zw)), select(var_1.x, _wgslsmith_dot_vec4_u32(arg_0, arg_0) >= ~arg_0.x, select(false, 1716i == u_input.a, var_1.x && var_0.e.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    global0 = vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, -1068f)), global0.x));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(~min(vec4<u32>(14376u, 31622u, 46399u, 16853u), func_3()), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, ~(-1i), _wgslsmith_mult_i32(1i, u_input.a), _wgslsmith_mod_i32(-1i, arg_0)), vec4<i32>(firstTrailingBit(u_input.a), 1i, 1i, 2147483647i & u_input.a)))), global0.x);
    return global0.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1129f, _wgslsmith_f_op_f32(-695f + 642f)) + _wgslsmith_f_op_f32(max(-172f, -493f))), _wgslsmith_f_op_f32(ceil(arg_1))), global0.x, _wgslsmith_f_op_f32(func_2(0i, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(func_4(vec4<u32>(~(~arg_0.a.b.x), 1u | func_3().x, firstTrailingBit(1u), ~(arg_0.b | 20459u)), ~(~vec4<i32>(0i, 1i, u_input.a, arg_0.a.d.x)))));
    var var_1 = _wgslsmith_f_op_f32(step(global0.x, 548f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1070f)), _wgslsmith_f_op_f32(f32(-1f) * -1134f), 1049f, 310f))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * arg_1), _wgslsmith_f_op_f32(floor(var_0.x)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1082f), -415f), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * var_0.x), -728f, _wgslsmith_f_op_f32(-var_0.x), 1000f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1, var_0.x, arg_1) - vec4<f32>(var_0.x, arg_1, 129f, 637f)), vec4<f32>(336f, var_0.x, -194f, var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, -262f, -318f, -1581f) * vec4<f32>(arg_1, 290f, -187f, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 536f, 1152f, arg_1) * vec4<f32>(-1183f, var_0.x, -854f, -258f))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, false)))))));
    global0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * 404f), -1398f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1485f, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(103f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(ceil(673f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a ^ 3447i, firstLeadingBit(u_input.a), u_input.a), vec4<i32>(abs(u_input.a), u_input.a, abs(u_input.a), 2147483647i)), 11000i, 2147483647i), -vec3<i32>(u_input.a, 0i, u_input.a));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-581f)) + 189f))), -286f), global0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1036f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, -203f, -776f, -1038f)), vec4<f32>(var_1.x, 410f, global0.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, var_1.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, global0.x), vec4<f32>(global0.x, -432f, global0.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, 1860f, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(695f, var_1.x, global0.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec2<u32>(67209u, 3349u), vec2<u32>(1u, 53466u), u_input.a, vec3<i32>(var_0.x, 2147483647i, var_0.x)), 38560u), var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.x, global0.x, -217f)))));
    var_0 = select(-vec3<i32>(var_0.x, 0i, 2147483647i), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, -12082i), vec3<i32>(u_input.a, var_0.x, 5145i)), vec3<i32>(u_input.a, var_0.x, 43027i), true), -vec3<i32>(var_0.x, var_0.x, u_input.a) & (vec3<i32>(4009i, 7381i, var_0.x) << (vec3<u32>(24579u, 4294967295u, 26952u) % vec3<u32>(32u))), select(firstTrailingBit(vec3<i32>(var_0.x, 0i, u_input.a)), vec3<i32>(9542i, var_0.x, var_0.x) ^ vec3<i32>(var_0.x, -1862i, -1i), true)), true) ^ (abs(abs(vec3<i32>(var_0.x, u_input.a, u_input.a))) ^ vec3<i32>(-2147483647i, reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-4324i, var_0.x, var_0.x, var_0.x)), max(vec4<i32>(var_0.x, -1i, 6909i, u_input.a), vec4<i32>(-2147483647i, -1i, var_0.x, -2147483647i)))));
    let var_2 = !(~u_input.a != 0i);
    var var_3 = var_1.zzy;
    let var_4 = Struct_1((~select(vec2<u32>(0u, 15749u), vec2<u32>(23428u, 1u), vec2<bool>(var_2, var_2)) ^ ~(~vec2<u32>(4294967295u, 50045u))) << (vec2<u32>(~(~1u), _wgslsmith_mult_u32(abs(4294967295u), 0u)) % vec2<u32>(32u)), countOneBits(select(vec2<u32>(1u, 1u), ~(~vec2<u32>(0u, 21978u)), u_input.a <= 2147483647i)), u_input.a >> (~1u % 32u), _wgslsmith_sub_vec3_i32(vec3<i32>(max(countOneBits(-1i), -53248i), u_input.a, u_input.a), -(vec3<i32>(var_0.x, u_input.a, var_0.x) | vec3<i32>(-1i, var_0.x, 2147483647i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yw), var_3.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 658f, var_1.x, -202f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 649f, 1588f, var_1.x) + vec4<f32>(var_3.x, global0.x, global0.x, -909f))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1639f, -624f, -994f), var_2)))), _wgslsmith_mod_u32(var_4.b.x & 12810u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(var_4.b.x), 17913u), _wgslsmith_div_u32(~var_4.a.x, var_4.b.x))), 1i);
}

