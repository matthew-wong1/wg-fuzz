struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> u32 {
    return _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d, 14070u, 4294967295u, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.d) | vec4<u32>(u_input.d, 1u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 0u, 0u, 0u))), abs(14050u), u_input.b.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(max(-firstLeadingBit(arg_0.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, arg_0.x, arg_0.x), vec3<i32>(-2147483647i, 2147483647i, 23870i))), -2147483647i), 1i);
    var var_1 = Struct_5(Struct_2(vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), false, true)), 82919u, Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, arg_0.x), firstTrailingBit(vec3<i32>(u_input.c, u_input.a, arg_0.x)))), _wgslsmith_dot_vec4_u32(~abs(u_input.b), vec4<u32>(61128u >> (u_input.b.x % 32u), 4294967295u ^ u_input.b.x, 1u, u_input.b.x)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), ~vec2<u32>(_wgslsmith_clamp_u32(~1u, u_input.b.x << (39183u % 32u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), firstLeadingBit(~4294967295u)), Struct_3(Struct_1(-23984i, ~(~u_input.b.x), true), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(_wgslsmith_sub_i32(select(-1i, u_input.a, false), 2147483647i), ~1u, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -851f) + arg_1.x)));
    var var_2 = ~var_1.b;
    var_2 = ~abs(0u);
    let var_3 = Struct_4(Struct_3(Struct_1(-2147483647i, _wgslsmith_clamp_u32(4294967295u, 1u, 12661u), any(vec2<bool>(true, true))), 1f, var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-746f))))), Struct_2(!select(select(var_1.a.a, vec4<bool>(var_1.e.a.c, false, var_1.c.c, true), vec4<bool>(var_1.c.c, var_1.e.a.c, var_1.a.a.x, var_1.a.a.x)), !vec4<bool>(var_1.c.c, true, var_1.e.a.c, false), select(vec4<bool>(var_1.e.a.c, true, var_1.e.a.c, false), var_1.a.a, vec4<bool>(var_1.e.c.c, var_1.e.a.c, false, var_1.c.c)))), ~_wgslsmith_div_u32(97916u, u_input.d ^ 0u));
    return u_input.b.x;
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1480f * -1093f))))), _wgslsmith_f_op_f32(ceil(479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1224f)), 1f)) + 330f) * 161f), _wgslsmith_f_op_f32(select(1049f, -1000f, true)));
    var var_1 = _wgslsmith_div_u32(func_2(), firstLeadingBit((1u >> (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u)) << (~u_input.d % 32u)));
    let var_2 = Struct_4(Struct_3(Struct_1(-(~0i), ~(119005u & arg_0), ~u_input.c > -20079i), 265f, Struct_1(u_input.a, _wgslsmith_mod_u32(1u, u_input.b.x), 27226u == (arg_0 ^ arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(679f, -253f))), Struct_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), true)), func_3(-vec2<i32>(~u_input.a, u_input.c), _wgslsmith_f_op_vec3_f32(select(var_0.yxx, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x), vec3<bool>(true, all(vec3<bool>(false, true, false)), false)))));
    let var_3 = select(_wgslsmith_sub_i32(~_wgslsmith_div_i32(var_2.a.c.a, 32826i >> (arg_0 % 32u)), var_2.a.c.a), -39064i, false || !var_2.b.a.x);
    let var_4 = Struct_3(var_2.a.c, _wgslsmith_f_op_f32(-var_0.x), var_2.a.a, 700f);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(1u, ~u_input.d, !all(vec2<bool>(true, true))) ^ firstLeadingBit(u_input.b.x);
    let var_1 = func_1(firstTrailingBit(4294967295u));
    let var_2 = func_1((~func_1(u_input.d).a.a.b ^ max(var_1.c, _wgslsmith_div_u32(var_1.a.a.b, 4294967295u))) & (_wgslsmith_clamp_u32(~u_input.b.x, 4294967295u, var_1.a.a.b | 4294967295u) >> (abs(~57712u) % 32u))).a;
    var var_3 = vec2<bool>(select(!all(!vec2<bool>(var_1.b.a.x, false)), !func_1(var_2.a.b).a.a.c, !(716f > var_2.d) != true), var_2.a.c);
    let var_4 = ~(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 19937u), _wgslsmith_dot_vec3_u32(~u_input.b.zwy, _wgslsmith_clamp_vec3_u32(u_input.b.ywz, vec3<u32>(60226u, 25775u, var_1.c), vec3<u32>(u_input.d, 12996u, var_1.a.a.b)))));
    var_3 = !vec2<bool>((i32(-1i) * -4470i) >= (_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.a) | (u_input.c | 0i)), all(!vec3<bool>(var_3.x, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d, 0u, firstLeadingBit(1u), _wgslsmith_add_u32(abs(1u), var_1.c) << (~(~var_2.a.b) % 32u)), ~u_input.b, _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.c.a, u_input.a, -46510i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c.a, var_1.a.c.a, -2147483647i), vec3<i32>(var_1.a.c.a, u_input.c, var_1.a.a.a))), -(~vec3<i32>(u_input.c, var_2.a.a, -1i)) >> (vec3<u32>(0u, 59667u, max(0u, 4294967295u)) % vec3<u32>(32u))), -136f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-872f, var_1.a.d, -755f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(907f, var_2.d, var_1.a.d)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(376f, -501f, var_1.a.d)))))));
}

