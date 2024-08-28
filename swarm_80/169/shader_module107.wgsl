struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(true);
    var var_1 = ~(~countOneBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 82002u, u_input.b), vec4<u32>(1u, u_input.a, u_input.c.x, 4294967295u)), ~vec4<u32>(u_input.b, 51043u, u_input.b, 4294967295u), any(arg_1.a))));
    return var_1.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, 332f, -549f, 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2236f, -730f, -172f, -713f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -227f, 1000f, 2147f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1766f, -256f, -367f, -1475f), vec4<f32>(-1516f, -629f, -1348f, 809f)))))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(~0u | _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b), 35814u, true), ~firstLeadingBit(firstLeadingBit(9591u)), 1u, u_input.d << (func_3(var_0.x, Struct_2(vec2<bool>(arg_0, arg_0), vec4<i32>(0i, -1i, 1i, -2147483647i))) % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d ^ u_input.b, ~u_input.d, 0u, 12268u | u_input.d), vec4<u32>((u_input.d | 47508u) ^ select(7915u, u_input.b, false), u_input.b, u_input.b, u_input.c.x)));
    let var_2 = reverseBits(~vec3<u32>(u_input.c.x, u_input.c.x, countOneBits(u_input.c.x)));
    let var_3 = u_input.e;
    var var_4 = Struct_1(arg_0);
    return Struct_1(!(any(select(vec4<bool>(false, arg_0, true, var_4.a), vec4<bool>(arg_0, arg_0, arg_0, arg_0), false)) && true));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(vec2<bool>(all(vec4<bool>(true, true, true, true)) || false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)) && ((u_input.b <= u_input.a) & true)), -(~vec4<i32>(-2147483647i, u_input.e, u_input.e, 0i) | firstLeadingBit(vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e))));
    var var_1 = func_2(all(vec4<bool>(!var_0.a.x && var_0.a.x, !(!var_0.a.x), !any(var_0.a), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, -1000f)) * vec2<f32>(1491f, 448f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, -901f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, -1576f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-979f, _wgslsmith_f_op_f32(ceil(206f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x))), vec2<f32>(var_2.x, var_2.x))))));
    let var_3 = !var_0.a;
    return Struct_1(func_2(!var_0.a.x).a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_2(select(arg_0.a, select(vec2<bool>(arg_0.b.x <= -1220i, true), arg_0.a, false), select(arg_0.a, !arg_0.a, true & select(true, false, arg_0.a.x))), vec4<i32>(_wgslsmith_mult_i32(abs(abs(arg_3.x)), -1i ^ arg_3.x), u_input.e, u_input.e >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a, u_input.a), vec4<u32>(u_input.d, u_input.b, 1u, 69741u)), ~u_input.b) % 32u), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.b.x, arg_0.b.x, 5665i), vec4<i32>(-2147483647i, arg_0.b.x, u_input.e, -112055i)))));
    var var_1 = false;
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-279f - 1739f), _wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(f32(-1f) * -116f)), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -731f))))), vec4<bool>(all(!select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, true, arg_1.a), vec3<bool>(false, arg_0.a.x, true))), 354f < _wgslsmith_f_op_f32(-409f * arg_2), func_2(arg_1.a && true).a, var_0.a.x), 4294967295u, !(!select(arg_0.a, vec2<bool>(true, arg_0.a.x), arg_3.x >= -2147483647i)));
    var var_3 = Struct_2(!var_0.a, var_0.b);
    let var_4 = _wgslsmith_div_i32(1i, abs(arg_0.b.x));
    return vec4<i32>(-1i) * -var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(false, true && !(u_input.e < -5886i)), -(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 58726i, -1i, 1i)), vec4<i32>(-50794i, 30084i, u_input.e, u_input.e) ^ vec4<i32>(0i, u_input.e, -66685i, -2147483647i), vec4<i32>(20360i, u_input.e, 53068i, -38504i) >> (vec4<u32>(u_input.a, u_input.c.x, u_input.d, u_input.d) % vec4<u32>(32u)))));
    var_0 = Struct_2(!vec2<bool>(all(!vec3<bool>(var_0.a.x, true, false)), true), select(var_0.b, reverseBits(-vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -2147483647i)), true) & func_4(Struct_2(!var_0.a, vec4<i32>(u_input.e, u_input.e, u_input.e, var_0.b.x)), func_1(), 169f, ~vec2<i32>(1i, 2147483647i)));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, ~(-27991i), ~2147483647i), var_0.b);
    var_0 = Struct_2(var_0.a, vec4<i32>(17014i, 2147483647i, u_input.e, max(_wgslsmith_div_i32(u_input.e, u_input.e), var_0.b.x | u_input.e) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9136u, 1u, 0u) & vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.b), vec4<u32>(u_input.a, 115981u, u_input.d, u_input.a)) % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(369f, -1551f)), 568f, -375f, _wgslsmith_f_op_f32(-443f * 190f)) - vec4<f32>(-595f, _wgslsmith_f_op_f32(-606f - -1349f), _wgslsmith_f_op_f32(227f * -238f), _wgslsmith_f_op_f32(401f * 2200f))))));
    let var_3 = Struct_2(!vec2<bool>((var_1 >> (13642u % 32u)) != ~var_1, select(var_0.a.x, !var_0.a.x, var_0.a.x)), countOneBits(vec4<i32>(var_1, ~(-2147483647i), u_input.e, ~(-2438i)) << (~(~vec4<u32>(u_input.a, 4294967295u, 44212u, 14915u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_3, func_2(any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, var_2.x)))), var_3.b.yw).x);
}

