struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = ~vec3<i32>(~(-1i), min(12546i, -u_input.b), 0i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-678f - 377f), 507f))) - 513f);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(613f)) + -2410f)), _wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, 1244f) + _wgslsmith_f_op_f32(f32(-1f) * -1320f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-1433f)))), true);
    let var_1 = ~reverseBits(vec2<u32>(~1u, 4294967295u));
    let var_2 = ~2147483647i;
    var var_3 = Struct_1(firstTrailingBit(u_input.a), ~4294967295u, ~firstTrailingBit(var_1));
    let var_4 = vec4<i32>(u_input.b, -1i, 2147483647i, ~(-u_input.b ^ 14403i));
    return Struct_1(firstTrailingBit(var_3.b) >> (10640u % 32u), _wgslsmith_mult_u32(~u_input.c.x >> (_wgslsmith_mod_u32(var_1.x, 1u) % 32u), ~(4294967295u | ~var_3.c.x)), vec2<u32>(~(~(~14387u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_1.x, 38948u, u_input.a), vec3<u32>(var_3.b, var_3.b, 1u)), select(u_input.c, vec3<u32>(var_1.x, var_3.c.x, u_input.a), vec3<bool>(var_0.c, var_0.c, true)), ~vec3<u32>(0u, var_1.x, 1u)), u_input.c)));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = ~vec4<u32>(abs(_wgslsmith_sub_u32(u_input.c.x, u_input.a)) | ~reverseBits(4294967295u), ~0u, 4294967295u, _wgslsmith_mod_u32(30475u, 4294967295u));
    let var_2 = 0u;
    var var_3 = func_2();
    var var_4 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, var_1.x), 0u, ~var_1.x), vec3<u32>(var_3.a, 45939u, var_1.x) ^ var_1.wxy), ~((~u_input.a >> (~u_input.c.x % 32u)) ^ min(~var_0.c.x, _wgslsmith_mult_u32(4294967295u, var_1.x))));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-296f - _wgslsmith_f_op_f32(f32(-1f) * -1077f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(1000f + 565f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(select(673f, -994f, false)), _wgslsmith_f_op_f32(floor(-260f)), _wgslsmith_f_op_f32(-228f - -1368f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(700f, -402f, -1000f, 1588f), vec4<f32>(783f, 808f, -326f, 1980f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1028f, -402f, -518f, -227f), vec4<f32>(145f, 700f, 606f, -1482f))))))), !(firstLeadingBit(u_input.b) > ~u_input.b));
    var var_1 = Struct_1(u_input.c.x, _wgslsmith_div_u32(select(u_input.a, _wgslsmith_mod_u32(40537u, ~u_input.c.x), true), u_input.c.x), vec2<u32>(1u, firstLeadingBit(~12963u)) ^ vec2<u32>(u_input.a, func_1() & (67526u >> (u_input.c.x % 32u))));
    let var_2 = Struct_2(var_0.a, var_0.b, var_0.c);
    var var_3 = Struct_1(~u_input.c.x >> (_wgslsmith_mult_u32(var_1.b, (u_input.a | 12295u) | 4294967295u) % 32u), firstLeadingBit(abs(~min(4294967295u, u_input.a))), min(var_1.c, var_1.c));
    var_3 = Struct_1(var_3.a, var_1.c.x, vec2<u32>(_wgslsmith_div_u32(var_1.a, func_1()), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~firstLeadingBit(3610i >> (u_input.c.x % 32u)), -u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, u_input.b, 22564i, u_input.b)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 66900i, u_input.b, -1i), vec4<i32>(u_input.b, 2147483647i, u_input.b, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, u_input.b), vec4<i32>(u_input.b, -38168i, u_input.b, u_input.b)))), u_input.b), 243i);
}

