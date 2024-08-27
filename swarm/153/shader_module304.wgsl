struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(u_input.c.yy & u_input.c.zz, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 286f), arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(step(arg_0, 315f)))), _wgslsmith_f_op_f32(-arg_0), -1415f), vec4<u32>(~min(arg_1, u_input.d), _wgslsmith_clamp_u32(1u, 4294967295u, min(u_input.c.x, u_input.d)), 0u, u_input.c.x)), false, Struct_1(min(vec2<u32>(0u, u_input.d), ~select(vec2<u32>(u_input.d, 0u), vec2<u32>(arg_1, arg_1), vec2<bool>(false, true))), vec4<f32>(arg_0, 1555f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))), min(abs(abs(vec4<u32>(u_input.d, u_input.d, arg_1, 4294967295u))), select(vec4<u32>(1u, arg_1, 4294967295u, 0u), vec4<u32>(37814u, arg_1, u_input.d, 0u) ^ vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), vec4<bool>(true, true, true, true)))));
    let var_1 = -2147483647i;
    return ~(~vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.zx), ~u_input.a.yw), firstLeadingBit(var_1), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-35960i, u_input.a.x, arg_2, -1i)), u_input.a | u_input.a)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = vec3<i32>(14426i, ~(u_input.b >> (1u % 32u)), u_input.a.x);
    let var_1 = arg_1.x;
    var var_2 = Struct_4(arg_0.x, _wgslsmith_mod_vec3_i32(func_3(1593f, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26184u, arg_1.x, var_1), ~vec4<u32>(arg_1.x, u_input.c.x, u_input.d, 0u)), var_0.x), -abs(u_input.a.xxx)));
    var_2 = Struct_4(1587f, -(~u_input.a.zzy));
    let var_3 = vec4<f32>(var_2.a, _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), -363f)) - -992f)), 1f, -1000f);
    return var_3.www;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, arg_0)), _wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(804f, 907f), vec3<u32>(1u, 1u, 0u)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_0.x))) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -102f) - _wgslsmith_f_op_f32(f32(-1f) * -470f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-308f, _wgslsmith_div_f32(-691f, -413f), _wgslsmith_f_op_f32(min(1854f, -1347f))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -606f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))), 325f);
    let var_1 = select(min(~u_input.c | abs(countOneBits(vec3<u32>(u_input.d, 55324u, u_input.d))), u_input.c ^ u_input.c), firstTrailingBit(vec3<u32>(u_input.d, u_input.d ^ u_input.c.x, u_input.c.x)) & vec3<u32>(u_input.c.x, abs(1u), _wgslsmith_sub_u32(~55020u, ~u_input.d)), !(~(1u ^ u_input.d) != 1u));
    var var_2 = false;
    return -6251i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-265f))) + _wgslsmith_f_op_f32(sign(-320f))), vec3<i32>(-(func_1(1114f) >> (1u % 32u)), i32(-1i) * -7828i, 21415i));
    var var_1 = Struct_2(Struct_1(~vec2<u32>(~8500u, u_input.c.x >> (u_input.d % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1032f), _wgslsmith_f_op_f32(trunc(var_0.a)), -1246f, _wgslsmith_f_op_f32(f32(-1f) * -1351f)) * vec4<f32>(-498f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(-694f * -458f))), ~max(~vec4<u32>(0u, u_input.d, 1u, u_input.c.x), vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, 1u))), ~(~32009u) <= select(22086u, firstTrailingBit(~u_input.c.x), !any(vec3<bool>(true, true, false))), Struct_1(~(~(~u_input.c.zz)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), -259f, 234f, 1668f), ~abs(vec4<u32>(0u, 4294967295u, u_input.c.x, u_input.c.x))));
    let var_2 = _wgslsmith_f_op_f32(var_0.a + 1000f);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 998f))), _wgslsmith_f_op_f32(var_2 - var_0.a), _wgslsmith_f_op_f32(ceil(var_1.a.b.x))), vec3<f32>(_wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(var_0.a + var_0.a)), var_0.a, _wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(-1f))), !(!select(select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, var_1.b, var_1.b), false), !vec3<bool>(var_1.b, true, var_1.b), var_1.b))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1127f + 1842f), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(-var_3.zy), ~select(var_1.a.c.yxy, vec3<u32>(u_input.d, var_1.c.c.x, 1u), vec3<bool>(var_1.b, false, var_1.b)))).x)));
    let var_5 = abs(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.a.c.zyy, var_1.c.c.wwx), var_1.c.a.x), firstTrailingBit(select(u_input.d, 5478u, true)))) | var_1.a.a;
    var var_6 = var_1.c;
    var_6 = Struct_1(select(var_6.c.yx, countOneBits(max(reverseBits(vec2<u32>(8600u, 4294967295u)), _wgslsmith_sub_vec2_u32(var_5, var_5))), !(-var_0.b.x < firstLeadingBit(u_input.b))), _wgslsmith_f_op_vec4_f32(sign(var_1.a.b)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, 12049u, u_input.c.x), vec3<u32>(var_5.x, 61668u, 0u)), ~1u), ~vec2<u32>(4294967295u, 32772u)), 4650u, var_5.x, ~(~4294967295u) | min(_wgslsmith_mod_u32(u_input.c.x, var_6.c.x), _wgslsmith_sub_u32(4294967295u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_u32(var_6.c, _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_6.a.x, var_6.a.x, 27311u), var_6.c)) >> ((~var_6.c >> (vec4<u32>(6129u, var_1.c.a.x, 43612u, var_1.a.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

