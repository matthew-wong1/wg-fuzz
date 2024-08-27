struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> vec2<f32> {
    var var_0 = ~u_input.b;
    var var_1 = !(_wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -920f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1116f + 1856f)))));
    let var_2 = Struct_3(true, Struct_1(true, all(vec3<bool>(u_input.c.x >= u_input.d, true, true)), u_input.c.x, -22574i, vec3<f32>(1f, 1f, 1f)));
    let var_3 = Struct_2(vec3<f32>(-552f, _wgslsmith_f_op_f32(-var_2.b.e.x), 481f));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-249f, var_3.a.x)) + var_3.a.x), var_3.a.x, true))));
    return var_2.b.e.zz;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = u_input.b;
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), arg_3.b.e.x), -vec4<i32>(arg_0.x & arg_2, _wgslsmith_mod_i32(43291i, -34588i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.c, arg_3.b.c) >> (vec2<u32>(0u, 18223u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(arg_0.zy, vec2<i32>(arg_3.b.d, arg_2))), arg_3.b.d));
    var_0 = 81734u << (((0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 37502u, 87382u) & vec3<u32>(4294967295u, u_input.b, u_input.b), ~vec3<u32>(u_input.a, 1u, u_input.a))) & ~(~(13497u ^ u_input.b))) % 32u);
    var_0 = u_input.b;
    var_0 = countOneBits(~(~(27486u << ((u_input.b ^ u_input.a) % 32u))));
    return -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-75658i), 10867i), abs(vec2<i32>(2147483647i, -1i))), ~(-37518i) >> ((28315u & u_input.b) % 32u), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-34586i, -22474i), 1i), var_1.b.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(vec2<f32>(-624f, arg_0) + vec2<f32>(567f, arg_0))))));
    var var_1 = Struct_4(var_0, _wgslsmith_mult_vec4_i32(~(~func_3(vec3<i32>(-5674i, u_input.c.x, 0i), var_0, u_input.c.x, Struct_3(arg_1, Struct_1(arg_1, arg_1, 24249i, u_input.c.x, vec3<f32>(arg_0, -514f, -968f))))), firstTrailingBit(-select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(1005i, u_input.c.x, 35700i, -2147483647i), vec4<bool>(arg_1, false, arg_1, false)))));
    var_1 = Struct_4(var_1.a, select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, -7671i, var_1.b.x, 16756i)), _wgslsmith_div_vec4_i32(var_1.b, _wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(var_1.b.x, -19541i, var_1.b.x, 3767i))), var_1.b & select(var_1.b, var_1.b, true)), var_1.b, any(!select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0, var_0))))) + var_0), abs(-vec4<i32>(var_1.b.x, -9402i, 44048i, var_1.b.x)) ^ vec4<i32>(-_wgslsmith_sub_i32(2147483647i, 20185i), -2147483647i, abs(-1i), 2147483647i));
    var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), 364f), vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-11057i, 1i), vec2<i32>(var_1.b.x, var_1.b.x)), vec2<i32>(-u_input.c.x, 21077i)), abs(~u_input.d), _wgslsmith_clamp_i32(~(~2147483647i), _wgslsmith_div_i32(-var_1.b.x, -17645i), _wgslsmith_clamp_i32(var_1.b.x, 1i, u_input.c.x)), -1i));
    return Struct_3(select(true, any(vec2<bool>(var_1.a.x >= -1000f, true)), !(arg_0 < _wgslsmith_f_op_f32(floor(-1322f)))), Struct_1(true, all(!vec3<bool>(arg_1, arg_1, true)), _wgslsmith_mult_i32(0i, ~var_1.b.x) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(16774u, u_input.a, u_input.a), vec3<u32>(u_input.b, u_input.b, u_input.a)) & 22346u) % 32u), firstTrailingBit(firstTrailingBit(var_1.b.x ^ var_1.b.x)), vec3<f32>(-389f, _wgslsmith_f_op_f32(floor(var_1.a.x)), -234f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(floor(228f)), !(true && any(vec3<bool>(true, true, true))));
    let var_1 = abs(select(abs(firstLeadingBit(abs(u_input.b))), ~4294967295u ^ u_input.a, var_0.b.a && var_0.b.a));
    var var_2 = 8036i;
    var_2 = -_wgslsmith_dot_vec2_i32(u_input.c.xy, select(u_input.c.xz, vec2<i32>(-var_0.b.c, -9131i), true));
    var_0 = func_1(var_0.b.e.x, ~(4294967295u >> (_wgslsmith_sub_u32(var_1, 1u) % 32u)) < min(11173u, ~(~var_1)));
    var_2 = u_input.c.x;
    var_2 = min((i32(-1i) * -31137i) >> (firstTrailingBit(u_input.a) % 32u), ~(~(~var_0.b.c) | firstLeadingBit(_wgslsmith_mod_i32(-25723i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.x, var_0.b.e.x, _wgslsmith_f_op_f32(step(-370f, _wgslsmith_f_op_vec2_f32(func_2()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.x * -1517f)))));
}

