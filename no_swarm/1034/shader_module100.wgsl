struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
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

var<private> global0: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(51719u, 0u, 1u), vec3<u32>(77380u, 0u, 4294967295u), vec3<u32>(62648u, 23026u, 0u), vec3<u32>(72384u, 47866u, 27180u), vec3<u32>(55005u, 43443u, 37174u), vec3<u32>(26676u, 0u, 0u), vec3<u32>(1u, 9932u, 0u), vec3<u32>(4294967295u, 17256u, 4294967295u), vec3<u32>(1u, 53544u, 26966u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(3051u, 21462u, 1u), vec3<u32>(4294967295u, 40637u, 0u), vec3<u32>(4294967295u, 33997u, 15078u), vec3<u32>(2871u, 0u, 0u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.c, vec2<i32>(arg_0.c, _wgslsmith_mult_i32(reverseBits(arg_0.c), -23949i) << (u_input.a % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(801f, 527f))) > _wgslsmith_f_op_f32(sign(-1800f)), arg_0.a, -1i << (_wgslsmith_sub_u32(arg_0.e, max(4182u, arg_0.e)) % 32u), firstLeadingBit(firstTrailingBit(arg_0.d)), _wgslsmith_add_u32(arg_0.d.x, countOneBits(arg_0.e))), arg_0);
    let var_1 = u_input.b;
    var var_2 = true;
    let var_3 = true;
    var var_4 = !(!select(!vec2<bool>(false, var_3), vec2<bool>(4294967295u >= var_0.c.e, !arg_0.b), vec2<bool>(arg_0.c < -51523i, all(vec3<bool>(arg_0.a, false, var_3)))));
    return select(vec3<bool>(true, -firstTrailingBit(u_input.e) > -reverseBits(arg_0.c), !all(!vec3<bool>(false, true, var_3))), vec3<bool>(true, var_4.x, var_4.x), any(vec3<bool>(all(select(vec4<bool>(true, var_0.c.b, arg_0.a, true), vec4<bool>(var_4.x, var_3, true, var_0.c.a), true)), 1u <= var_0.d.e, var_3)));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + -859f))), -630f)));
    var var_1 = Struct_1(all(select(select(vec4<bool>(arg_1.x, arg_2.x, arg_1.x, true), select(vec4<bool>(arg_2.x, arg_1.x, true, arg_2.x), vec4<bool>(arg_1.x, false, arg_2.x, arg_1.x), vec4<bool>(arg_2.x, true, true, false)), true), select(select(vec4<bool>(false, arg_2.x, arg_1.x, true), vec4<bool>(false, false, false, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_2.x)), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, false, true, arg_2.x)), !select(vec4<bool>(arg_1.x, arg_1.x, true, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(arg_1.x, arg_2.x, false, true)))), _wgslsmith_f_op_f32(min(arg_0, 1369f)) > _wgslsmith_div_f32(-960f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(231f, arg_0))), max(u_input.e, ~firstTrailingBit(firstTrailingBit(u_input.b))), max(vec4<u32>(~(~4294967295u), u_input.a, ~(~0u), ~4294967295u >> (_wgslsmith_mod_u32(87889u, 1u) % 32u)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, u_input.a, 17606u, u_input.d)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 28237u, 1u), vec3<u32>(12881u, 0u, 1u)), u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.d), 93926u))), u_input.c.x);
    let var_2 = abs(global0[_wgslsmith_index_u32(u_input.c.x, 14u)]);
    let var_3 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b & var_1.c, ~(-1i)), 40227i, u_input.e, var_1.c), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -7805i), vec2<i32>(u_input.e, u_input.b)), countOneBits(2147483647i), -u_input.e, _wgslsmith_add_i32(var_1.c, max(var_1.c, 10470i))), _wgslsmith_sub_vec4_i32(-(vec4<i32>(0i, 30806i, u_input.e, -723i) ^ vec4<i32>(-56255i, 1i, u_input.e, -2147483647i)), -reverseBits(vec4<i32>(u_input.b, u_input.e, var_1.c, 1i))));
    var_1 = Struct_1(false, true, max(var_3.x, var_3.x), _wgslsmith_clamp_vec4_u32(var_1.d, (var_1.d | vec4<u32>(var_1.d.x, var_1.d.x, 1u, var_2.x)) & ~countOneBits(var_1.d), abs(~vec4<u32>(u_input.a, 18211u, 23824u, 1u) & vec4<u32>(1u, var_1.d.x, var_2.x, var_2.x))), var_2.x);
    return ~(~abs(0u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    global0 = array<vec3<u32>, 14>();
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))), func_3(var_0), !(!func_3(Struct_1(var_0.b, var_0.a, arg_0.c, vec4<u32>(111625u, 1263u, 132886u, arg_0.d.x), 23146u))));
    var_1 = 1u;
    let var_2 = _wgslsmith_mod_u32(firstTrailingBit(arg_0.d.x), _wgslsmith_div_u32(53194u, u_input.c.x & u_input.d) >> (~max(~32484u, ~u_input.a) % 32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(290f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(601f + _wgslsmith_f_op_f32(f32(-1f) * -127f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> vec2<bool> {
    var var_0 = vec2<f32>(888f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(arg_0)))))));
    let var_1 = 1u;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f))), vec2<f32>(var_0.x, 1180f))));
    var var_2 = var_0.x;
    var var_3 = Struct_2(_wgslsmith_mod_i32(~(-5058i), -27368i), firstLeadingBit(-firstLeadingBit(vec2<i32>(arg_0.c, arg_0.c))), arg_0, arg_0);
    return func_3(Struct_1(!func_3(arg_0).x, false, var_3.b.x, ~(~(~var_3.d.d)), 76727u)).yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 14>();
    let var_0 = -4299i;
    let var_1 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) == all(select(vec2<bool>(true, true), func_1(Struct_1(false, true, -14350i, vec4<u32>(1u, 89546u, 19727u, u_input.c.x), u_input.a), global0[_wgslsmith_index_u32(u_input.d, 14u)], false), any(vec2<bool>(true, false)))), false, -2147483647i, firstTrailingBit(select(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 19189u, u_input.d), vec4<u32>(1u, 43540u, 1u, u_input.d))), vec4<u32>(_wgslsmith_add_u32(37103u, 16868u), u_input.c.x, ~u_input.a, ~u_input.a), true)), ~u_input.a | u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(min(1700f, _wgslsmith_f_op_f32(652f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-833f)) * _wgslsmith_f_op_f32(f32(-1f) * -1714f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(var_2 * var_2)))), _wgslsmith_f_op_f32(min(-1075f, _wgslsmith_f_op_f32(1816f + var_2))))));
}

