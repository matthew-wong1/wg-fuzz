struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = vec2<u32>(arg_2.a.b.x, u_input.c) ^ vec2<u32>(27262u, ~max(u_input.e.x & arg_2.a.b.x, u_input.e.x));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)));
    var var_2 = -725f;
    let var_3 = _wgslsmith_f_op_f32(sign(arg_2.a.a.x));
    var_2 = _wgslsmith_f_op_f32(max(363f, 693f));
    return _wgslsmith_div_f32(-524f, _wgslsmith_div_f32(-372f, -1729f));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(386f + 158f), -596f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<f32>(941f, -726f, 828f), -437f, Struct_2(Struct_1(vec4<f32>(2086f, -1792f, -426f, -182f), vec2<u32>(u_input.a.x, u_input.c))))), _wgslsmith_f_op_f32(-1884f * -388f))))));
    let var_1 = (~(-37131i) != u_input.d.x) && !(-1i != u_input.d.x);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, ~u_input.a), vec4<u32>(countOneBits(1u), ~(~(~u_input.c)), _wgslsmith_clamp_u32(1u, u_input.a.x, 0u), 14924u), _wgslsmith_mod_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(67076u, 1u, u_input.a.x, u_input.c), u_input.a)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.b, 7576u, 18841u), u_input.a))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, _wgslsmith_f_op_f32(sign(var_0)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1330f)))), ~vec2<u32>(var_2.x, 6071u));
    var_2 = vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(~76088u, select(var_2.x, u_input.c, false) | u_input.a.x)), var_3.b.x, 33782u, var_2.x);
    return 16403u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = ~(~func_2());
    var var_1 = Struct_3(true);
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1197f + 1023f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(396f)))), _wgslsmith_f_op_f32(f32(-1f) * -635f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) - 1f)), reverseBits(_wgslsmith_div_vec2_u32(max(vec2<u32>(52208u, 85263u), u_input.a.yz) << (firstTrailingBit(vec2<u32>(u_input.e.x, u_input.c)) % vec2<u32>(32u)), u_input.a.yw)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(var_2.a, vec4<f32>(826f, 1143f, 366f, var_2.a.x))), ~vec2<u32>(46987u >> (1u % 32u), ~_wgslsmith_mult_u32(var_2.b.x, arg_0)));
    var var_4 = var_2.a.xwx;
    return Struct_2(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(22612u);
    let var_1 = Struct_5(Struct_3(true), func_1(46334u).a, var_0.a, u_input.d.x >> (u_input.e.x % 32u));
    let var_2 = vec3<i32>(~(~36816i), min(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_1.d, -13348i, var_1.d), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 18395i)), u_input.d.x), 10031i), _wgslsmith_div_i32(var_1.d, 32453i));
    var_0 = Struct_2(func_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(48953u, 4294967295u), 1u), _wgslsmith_clamp_u32(var_0.a.b.x, 27180u, ~var_0.a.b.x), u_input.b)).a);
    var var_3 = select(select(select(vec3<bool>(all(vec3<bool>(false, false, false)), false, any(vec2<bool>(false, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, false & var_1.a.a), select(vec3<bool>(var_1.a.a, var_1.a.a, true), select(vec3<bool>(var_1.a.a, true, var_1.a.a), vec3<bool>(var_1.a.a, true, var_1.a.a), true), vec3<bool>(true, var_1.a.a, false))), vec3<bool>((var_0.a.b.x != var_1.c.b.x) & true, any(vec3<bool>(var_1.a.a, false, true)), !(var_1.a.a | true)), all(select(vec4<bool>(false, false, var_1.a.a, true), vec4<bool>(false, true, var_1.a.a, var_1.a.a), vec4<bool>(var_1.a.a, false, false, var_1.a.a))) & var_1.a.a), !vec3<bool>(!all(vec2<bool>(false, true)), !(!var_1.a.a), false || (178f > var_1.c.a.x)), -562f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-880f - _wgslsmith_f_op_f32(round(-348f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(var_0.a.a.x, var_1.b.a.x, -570f), -300f, Struct_2(var_0.a))) - 1070f))));
    var var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(16281i, ~(-7273i), var_1.d), vec3<i32>(0i, 0i, max(var_4.x, max(u_input.d.x, var_1.d)))), 1u);
}

