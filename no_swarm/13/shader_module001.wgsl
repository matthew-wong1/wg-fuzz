struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = !(!vec3<bool>(var_0, all(!vec4<bool>(var_0, true, var_0, var_0)), var_0));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(u_input.e | vec3<u32>(max(6577u, 4294967295u), _wgslsmith_div_u32(u_input.c.x, 1u), 17052u ^ u_input.c.x), (vec3<u32>(89276u, u_input.e.x, u_input.e.x) >> (vec3<u32>(u_input.c.x, 17808u, 0u) % vec3<u32>(32u))) | (u_input.e << (~u_input.e % vec3<u32>(32u)))), 1293f, var_1.xz);
    var_2 = Struct_1(_wgslsmith_sub_vec3_u32(~var_2.a, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_2.a.x, var_2.a.x, 10716u)), reverseBits(var_2.a))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, var_2.a.x, var_2.a.x, 66375u), abs(vec4<u32>(0u, u_input.e.x, u_input.e.x, 57191u))), 4294967295u, abs(4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-441f, arg_1.x)))))), _wgslsmith_f_op_f32(round(arg_1.x)))), !(!(!vec2<bool>(var_2.c.x, var_0))));
    var var_3 = Struct_1(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(8441u, var_2.a.x, 25584u), abs(vec3<u32>(4294967295u, 58956u, 2384u)))), -151f, !(!var_2.c));
    return !vec2<bool>(!select(any(vec3<bool>(false, false, false)), true, all(vec4<bool>(false, var_1.x, var_0, true))), u_input.b.x >= 4294967295u);
}

fn func_2() -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(u_input.e, u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(760f, -287f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-576f + 1362f), -182f)), _wgslsmith_f_op_f32(-1000f - 505f))), vec2<bool>(true, (1i == (-1i ^ u_input.d.x)) || true));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, min(~var_1.a.x, _wgslsmith_clamp_u32(var_1.a.x, 1u, 4294967295u)), ~4294967295u), u_input.e), var_1.b, select(var_1.c, vec2<bool>(all(select(vec3<bool>(var_1.c.x, true, var_1.c.x), vec3<bool>(true, false, false), var_1.c.x)), any(select(vec3<bool>(true, true, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(var_1.c.x, true, true)))), select(vec2<bool>(false, true), !func_3(vec2<i32>(13550i, 11755i), vec3<f32>(var_1.b, var_1.b, var_1.b)), select(!vec2<bool>(var_1.c.x, var_1.c.x), select(vec2<bool>(true, false), var_1.c, var_1.c), vec2<bool>(true, true)))));
    let var_3 = 809f;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 31478u, u_input.e.x), vec3<u32>(19267u, u_input.b.x, 4294967295u), var_2.a), _wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(var_1.a.x, var_2.a.x, 4294967295u)), _wgslsmith_mult_vec3_u32(u_input.e, var_1.a)), var_1.a), u_input.b.x), abs(vec2<u32>(~0u, var_1.a.x)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = max(reverseBits(0u), arg_0.a.x) > func_2();
    let var_1 = -1i;
    var var_2 = arg_0;
    var var_3 = 18811u;
    let var_4 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(min(-628f, _wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(select(-1053f, var_2.b, select(false, arg_0.c.x, arg_0.c.x)))))), func_3(-u_input.a, vec3<f32>(-483f, arg_0.b, _wgslsmith_f_op_f32(sign(arg_0.b)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.b, arg_0.b, false)) + -1804f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_4.b, var_4.b))))))) - 598f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-453f, 562f)))), _wgslsmith_f_op_f32(1349f + _wgslsmith_f_op_f32(-434f * -183f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.e, 1346f, vec2<bool>(false, true))))))) + -429f);
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~(-16537i), _wgslsmith_mult_i32(1i, 2147483647i), u_input.a.x & u_input.d.x, u_input.d.x) >> (vec4<u32>(min(4071u, 6932u), u_input.e.x, 0u, select(u_input.c.x, 0u, true)) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -6294i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, 41166i, u_input.d.x))), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2147483647i), _wgslsmith_sub_i32(2147483647i, u_input.a.x), select(u_input.d.x, -161i, false), max(12873i, 0i)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.d.x, 2147483647i, -1i, u_input.a.x), vec4<i32>(44650i, u_input.d.x, -2147483647i, u_input.d.x)), vec4<i32>(-66225i, 1i, u_input.a.x, u_input.d.x) & vec4<i32>(u_input.d.x, 12398i, 6103i, 0i))), u_input.d.x, _wgslsmith_mult_i32(u_input.a.x, abs(u_input.d.x))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.c.x, ~23581u), u_input.e.x, u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u << (u_input.b.x % 32u), _wgslsmith_div_u32(u_input.e.x, 0u)), ~u_input.b.x), ~func_2() >> ((~u_input.b.x & u_input.b.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 576f) * _wgslsmith_f_op_f32(func_1(Struct_1(u_input.e, var_0, vec2<bool>(false, false))))))), !func_3(min(vec2<i32>(-1i, u_input.a.x), vec2<i32>(8116i, -1i)), vec3<f32>(_wgslsmith_f_op_f32(var_0 + -289f), var_0, -821f)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, 577f, var_0, var_0), vec4<f32>(var_0, var_2.b, var_2.b, var_2.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 744f, 544f, -495f))) - vec4<f32>(var_2.b, var_0, -681f, var_2.b)), vec4<f32>(1497f, _wgslsmith_f_op_f32(sign(2034f)), -682f, _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, 594f, -1388f)))), vec4<f32>(717f, _wgslsmith_f_op_f32(var_2.b - var_0), var_2.b, 1448f))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-703f * 437f), _wgslsmith_f_op_f32(-571f * -460f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_2.b - var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_4.a.zx & _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.b.x, var_2.a.x) << (~var_4.a.zy % vec2<u32>(32u))), _wgslsmith_add_i32(0i, firstTrailingBit(~var_1.x)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(~29171u, 8451u, ~93533u, 4294967295u >> (1u % 32u))), firstLeadingBit(~(vec4<u32>(4480u, 1u, var_4.a.x, 0u) & vec4<u32>(u_input.b.x, 10992u, var_2.a.x, u_input.e.x))), vec4<u32>(u_input.b.x, 0u, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(var_4.a.x, 1u)), ~u_input.b.x)), var_1.x);
}

