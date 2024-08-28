struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<bool, 13>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 14311u, u_input.a, 4294967295u), ~vec4<u32>(0u, 107509u, u_input.b.x, 22367u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 57518u, 34540u, u_input.c.x), max(vec4<u32>(4294967295u, 100652u, u_input.c.x, u_input.a), vec4<u32>(39965u, u_input.a, u_input.c.x, 46308u)))));
    global0 = array<f32, 8>();
    let var_1 = var_0 ^ var_0;
    global1 = array<bool, 13>();
    let var_2 = 16110i;
    return var_0;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(-1012f, global0[_wgslsmith_index_u32(62995u, 8u)]), 693f);
    let var_1 = _wgslsmith_add_vec4_u32(min(_wgslsmith_sub_vec4_u32(~(vec4<u32>(79327u, u_input.c.x, u_input.b.x, u_input.b.x) & vec4<u32>(4294967295u, 77881u, 26065u, u_input.a)), func_3(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(33040u, 13u)]))), func_3(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], true, true))), vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, ~(u_input.c.x << (u_input.a % 32u))));
    let var_2 = -393f;
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    return var_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), global0[_wgslsmith_index_u32(select(u_input.b.x, ~0u, u_input.a >= u_input.a), 8u)], 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], -206f)))))));
    return func_2();
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 8>();
    global1 = array<bool, 13>();
    let var_0 = func_1(reverseBits(8483i));
    var var_1 = ~_wgslsmith_clamp_i32(~(-10136i), 2147483647i, 2147483647i);
    var_1 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10258i, _wgslsmith_add_i32(43624i, -79924i), _wgslsmith_mod_i32(-1i, 10485i)), -(~vec4<i32>(873i, -7521i, -2147483647i, -26034i))));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = !vec3<bool>(arg_1.x, true, !arg_1.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), -321f, 248f, arg_0.a);
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1112f, _wgslsmith_f_op_f32(-arg_0.b), arg_0.b, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] - var_1.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 787f, arg_0.b, var_1.x))))), !(!arg_1.x)))));
    let var_2 = ~(~_wgslsmith_mod_i32(-2147483647i, -2147483647i));
    var var_3 = abs(_wgslsmith_div_u32(29969u, func_3(select(select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(global1[_wgslsmith_index_u32(4343u, 13u)], var_0.x, var_0.x, false), var_0.x), !vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, var_0.x))).x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(-(~_wgslsmith_add_i32(0i, -7012i)), 362i);
    let var_1 = func_5(func_4(u_input.b.x, func_1(var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f + 640f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, global0[_wgslsmith_index_u32(u_input.a, 8u)])))), !select(vec2<bool>(true || global1[_wgslsmith_index_u32(u_input.b.x, 13u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)] && false), global1[_wgslsmith_index_u32(4294967295u, 13u)]), firstTrailingBit(~u_input.b.zx));
    let var_2 = select(select(select(vec3<bool>(!global1[_wgslsmith_index_u32(38756u, 13u)], false, !global1[_wgslsmith_index_u32(10157u, 13u)]), vec3<bool>(false, any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)])), global1[_wgslsmith_index_u32(abs(4294967295u), 13u)]), global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)] || false, ~var_0.x > var_0.x), !vec3<bool>(true, global1[_wgslsmith_index_u32(~u_input.a, 13u)], true)), vec3<bool>(global1[_wgslsmith_index_u32(41722u, 13u)], false & any(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false, global1[_wgslsmith_index_u32(98398u, 13u)]), vec3<bool>(false, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), ~reverseBits(u_input.c.x)), 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x << (u_input.c.x % 32u), u_input.c.x << (6072u % 32u)) ^ 1u, _wgslsmith_div_u32(3629u, 1u) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 63507u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 4294967295u))), 13u)]);
    global0 = array<f32, 8>();
    global1 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zy, u_input.b.xx), vec2<u32>(u_input.c.x, 11842u))), 8u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~u_input.b.x, 8u)], _wgslsmith_f_op_f32(round(979f)), var_1.b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)]))), vec4<f32>(550f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(1038f * global0[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(~u_input.b.x, 13u)])), -1000f, -1577f))), firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 24598i, var_0.x), vec3<i32>(var_0.x, 2147483647i, -2147483647i) << (u_input.c % vec3<u32>(32u)), -vec3<i32>(11631i, 116817i, var_0.x)))), ~select(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.x, var_0.x, 47841i), vec3<i32>(var_0.x, var_0.x, var_0.x)), abs(vec3<i32>(var_0.x, var_0.x, var_0.x)), var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(5791u, 8u)], -895f, 266f, -509f), vec4<f32>(global0[_wgslsmith_index_u32(778u, 8u)], 467f, 998f, 224f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false, false, global1[_wgslsmith_index_u32(u_input.a, 13u)]))))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 518f, global0[_wgslsmith_index_u32(49133u, 8u)], -226f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], 364f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1076f, var_1.b, global0[_wgslsmith_index_u32(51043u, 8u)]))))));
}

