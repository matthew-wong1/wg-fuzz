struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1513f - 1316f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -1599f)) - _wgslsmith_f_op_f32(748f + arg_0.x)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1319f);
    var_0 = -1465f;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_add_i32(min(~countOneBits(37908i), u_input.c.x), u_input.c.x), Struct_1(arg_0.x));
    var var_3 = Struct_5(var_1, -1i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -674f)));
    return Struct_1(242f);
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, _wgslsmith_add_i32(-(~u_input.d.x), 2147483647i) & u_input.c.x);
    var_0 = -min(_wgslsmith_div_vec4_i32(~(~vec4<i32>(var_0.x, u_input.d.x, var_0.x, u_input.c.x)), countOneBits(~vec4<i32>(var_0.x, 1i, -2147483647i, -12991i))), -reverseBits(vec4<i32>(var_0.x, -1i, var_0.x, 48047i) << (vec4<u32>(u_input.b.x, u_input.a.x, 69565u, 56326u) % vec4<u32>(32u))));
    var var_1 = arg_0.a;
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a * arg_0.a))), 116f)), var_0.xxz, !vec4<bool>(all(vec2<bool>(true, true)), true, true, true), vec4<bool>(((u_input.e.x & 77685u) << (~u_input.b.x % 32u)) <= u_input.e.x, select(!(var_0.x > 0i), true, select(true, false, true)), true, true), select(~abs(~vec4<u32>(57036u, u_input.a.x, u_input.a.x, 84546u)), u_input.b, vec4<bool>(true && (arg_0.a > arg_0.a), true && (0u < u_input.e.x), true, false)));
}

fn func_1() -> i32 {
    let var_0 = func_3(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(347f * 1975f), _wgslsmith_f_op_f32(-792f * 443f)), vec2<f32>(_wgslsmith_f_op_f32(select(-534f, -1822f, false)), _wgslsmith_f_op_f32(round(-591f)))), firstLeadingBit(vec2<u32>(select(16981u, 1u, false), 48353u))));
    let var_1 = !var_0.d.x;
    var var_2 = Struct_5(var_0.a, i32(-1i) * -37927i, func_2(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1499f)) + _wgslsmith_div_f32(-1519f, var_0.a))), reverseBits(firstTrailingBit(vec2<u32>(558u, u_input.e.x)))));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(187f, var_2.a), vec2<f32>(-1625f, 109f))), _wgslsmith_div_vec2_f32(vec2<f32>(-215f, -393f), vec2<f32>(var_0.a, -1642f)))))))), select(vec2<u32>(var_0.e.x, var_0.e.x), select(u_input.e.yy, reverseBits(var_0.e.zz), vec2<bool>(var_1, var_0.d.x)), false) ^ vec2<u32>(~(~var_0.e.x), ~countOneBits(0u)));
    let var_4 = vec3<bool>(true, var_1, select(all(!select(var_0.d.xwz, var_0.c.zwx, var_0.d.x)), true, true));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 69966i | func_1();
    let var_1 = ~vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(21740i, _wgslsmith_sub_i32(u_input.d.x, 17361i)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), _wgslsmith_mult_i32(27667i | u_input.c.x, u_input.c.x)));
    var_0 = func_3(Struct_1(-650f)).b.x >> (_wgslsmith_mod_u32(13016u, ~_wgslsmith_clamp_u32(func_3(Struct_1(-1168f)).e.x, 47556u, ~u_input.b.x)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1948f);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zx, vec2<i32>(-39914i, var_1.x)), vec2<i32>(i32(-1i) * -14521i, var_1.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1296f)) - func_3(Struct_1(-992f)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_3.a)), var_3.a))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.c.a, -293f, _wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(min(-801f, _wgslsmith_f_op_f32(-var_2)))))));
}

