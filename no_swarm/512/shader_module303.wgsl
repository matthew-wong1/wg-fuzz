struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: bool = true;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~(~u_input.a.x)), ~u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f), -166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(131f, _wgslsmith_f_op_f32(322f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1114f - -1000f), _wgslsmith_f_op_f32(1000f - 2027f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(37265u, u_input.a.x, u_input.a.x)) << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), 16u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(174f, -248f, 1343f), vec3<f32>(-1116f, -426f, 437f))))) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60230u, 2633u, u_input.a.x), 16u)] - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 16u)])))));
    var var_2 = _wgslsmith_div_f32(-1655f, var_1.x);
    var_0 = u_input.a.x;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(max(var_1.xx, var_1.xy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * var_1.xz)))))));
    return _wgslsmith_f_op_f32(141f * var_1.x);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    let var_0 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(1i, -2147483647i), ~u_input.b, _wgslsmith_sub_i32(-u_input.b, ~u_input.b) << (40219u % 32u), -6036i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0))))) * _wgslsmith_f_op_f32(func_3(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, arg_0, arg_0), false)))) + _wgslsmith_f_op_f32(2947f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2352f))))));
    var var_2 = var_0.yy;
    global0 = array<vec3<f32>, 16>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(sign(1146f))));
    return abs(max(min(_wgslsmith_mult_u32(u_input.a.x, ~arg_1.x), reverseBits(0u)), u_input.a.x));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(56817u, 1u, countOneBits(u_input.a.x), ~u_input.a.x), _wgslsmith_div_vec4_u32(firstTrailingBit(abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 50844u)))), abs(vec4<u32>(_wgslsmith_add_u32(0u, select(arg_1, u_input.a.x, false)), u_input.a.x, u_input.a.x, countOneBits(arg_1 | 57551u))));
    let var_1 = (0i << (select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, 26564u), vec4<u32>(17644u, u_input.a.x, u_input.a.x, 0u)), countOneBits(5187u)), ~max(u_input.a.x, arg_1), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))) % 32u)) << (~arg_1 % 32u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1013f, 3399f), vec2<f32>(-1373f, -1114f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(745f, -1747f))), true)), vec2<f32>(_wgslsmith_f_op_f32(902f - 404f), _wgslsmith_f_op_f32(round(521f))), true))));
    global1 = all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))) & true;
    var var_3 = 1097f;
    return Struct_2(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), all(vec4<bool>(false, true, false, false)))), _wgslsmith_dot_vec3_u32(var_0.xzy, var_0.wzx), -2082f, _wgslsmith_add_u32(var_0.x, reverseBits(58264u)), Struct_1(select(vec3<bool>(-541f != var_2.x, false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), any(vec3<bool>(false, false, true)))), -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(18225i, arg_0), arg_2)), (_wgslsmith_div_vec2_i32(vec2<i32>(0i, -31832i), arg_2) >> (firstLeadingBit(var_0.yw) % vec2<u32>(32u))) ^ vec2<i32>(1i, _wgslsmith_sub_i32(arg_2.x, arg_0))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = func_4((i32(-1i) * -select(-1i, u_input.b, arg_1)) & _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(reverseBits(arg_0), -2147483647i)), u_input.a.x, max(_wgslsmith_add_vec2_i32(min(~vec2<i32>(-1i, 13328i), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(u_input.b, 2147483647i))), vec2<i32>(arg_0, 0i)), vec2<i32>(-2147483647i, (arg_0 << (909u % 32u)) << (func_2(arg_1, vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % 32u))));
    let var_1 = ~(~34910u);
    let var_2 = 4294967295u;
    let var_3 = -max(~vec2<i32>(var_0.e.c.x, arg_0), ~var_0.e.b) << (~(~(vec2<u32>(13539u, var_1) ^ vec2<u32>(var_1, var_1))) % vec2<u32>(32u));
    var var_4 = var_0.e.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, !func_1(u_input.b, true, -2202f), all(func_4(2147483647i, 38260u, vec2<i32>(u_input.b, -2147483647i)).e.a.yx)), select(vec3<bool>(true, false, u_input.b > u_input.b), vec3<bool>(true, true, true), func_4(-38558i << (u_input.a.x % 32u), _wgslsmith_mult_u32(var_0, var_0), vec2<i32>(24533i, u_input.b)).e.a)), _wgslsmith_clamp_vec2_i32(max(-vec2<i32>(u_input.b, u_input.b) & vec2<i32>(0i, 12205i), vec2<i32>(-2147483647i & u_input.b, -37364i)), _wgslsmith_div_vec2_i32(-vec2<i32>(0i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 27763i), vec2<i32>(u_input.b, u_input.b)) >> (select(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, u_input.a.x), vec2<bool>(false, false)) % vec2<u32>(32u))), vec2<i32>(abs(u_input.b) >> ((17415u >> (u_input.a.x % 32u)) % 32u), -47170i)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 1i)), vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-33733i, 18656i))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(2192i, 26909i)) >> (u_input.a % vec2<u32>(32u))) | -vec2<i32>(i32(-1i) * -17015i, u_input.b));
    var var_2 = min(4294967295u ^ var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(12327u, ~(4294967295u >> (0u % 32u)), u_input.a.x, ~var_0), min(vec4<u32>(~var_0, firstTrailingBit(var_0), u_input.a.x >> (u_input.a.x % 32u), 26522u), vec4<u32>(1u, u_input.a.x ^ var_0, max(u_input.a.x, u_input.a.x), var_0))));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = _wgslsmith_f_op_f32(-var_3);
    var_1 = func_4(u_input.b, var_0, ~vec2<i32>(~12446i, u_input.b)).e;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4)), -21586i);
}

