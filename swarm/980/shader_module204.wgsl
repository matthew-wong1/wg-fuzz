struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3;
    let var_1 = arg_3;
    var_0 = var_1;
    var var_2 = Struct_1(arg_3.e.a, u_input.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(858f)), _wgslsmith_f_op_f32(-1794f * var_0.e.c.x), _wgslsmith_f_op_f32(abs(751f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e.c), _wgslsmith_div_vec3_f32(arg_3.e.c, vec3<f32>(-1213f, 323f, -235f)))))), ~(~1u));
    var_2 = Struct_1(arg_3.e.a, var_1.e.b ^ vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x)), -11058i | (-27000i | arg_2.e.b.x), countOneBits(min(-2147483647i, 2147483647i)), arg_3.e.b.x), vec3<f32>(arg_3.e.c.x, arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a - var_0.c), -264f))), 87486u);
    return _wgslsmith_clamp_vec4_i32(arg_3.e.b, _wgslsmith_mult_vec4_i32(var_2.b, abs(vec4<i32>(countOneBits(0i), -2147483647i, var_2.b.x, ~u_input.a.x))), countOneBits(vec4<i32>(reverseBits(arg_2.e.b.x), ~(~var_0.e.b.x), 2147483647i, -1i << (~arg_1.x % 32u))));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = 0u;
    let var_1 = -235f;
    var var_2 = Struct_1(vec3<u32>(u_input.c & 57318u, ~_wgslsmith_add_u32(~var_0, var_0), _wgslsmith_mod_u32(~(0u | u_input.c), u_input.c)), _wgslsmith_clamp_vec4_i32(u_input.a, ~func_3(any(vec4<bool>(false, false, true, true)), ~vec2<u32>(u_input.c, 45963u), Struct_2(-1240f, vec3<bool>(false, true, false), var_1, vec2<u32>(var_0, 52358u), Struct_1(vec3<u32>(u_input.c, 1u, u_input.c), vec4<i32>(arg_0, u_input.b.x, arg_0, -39843i), vec3<f32>(689f, 337f, -1786f), 0u)), Struct_2(var_1, vec3<bool>(true, false, true), -442f, vec2<u32>(0u, u_input.c), Struct_1(vec3<u32>(14365u, var_0, 4294967295u), u_input.b, vec3<f32>(1000f, var_1, var_1), var_0))), u_input.b | u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, -1000f, -993f))))), 9163u);
    var_2 = Struct_1(var_2.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0 << (~var_2.a.x % 32u), ~(-1i), 2147483647i, var_2.b.x), -_wgslsmith_add_vec4_i32(firstLeadingBit(u_input.a), u_input.b << (vec4<u32>(62671u, u_input.c, u_input.c, var_0) % vec4<u32>(32u))), vec4<i32>(0i, 1i, 1i, _wgslsmith_sub_i32(1i, 0i)) & vec4<i32>(u_input.a.x, firstTrailingBit(var_2.b.x), ~u_input.a.x, var_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1234f, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_2.c.x))))))), ~var_0);
    var var_3 = ~(reverseBits(31345i ^ firstTrailingBit(46113i)) << (var_0 % 32u));
    return var_2.c;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-808f, -1658f, -810f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-108f, 442f, 858f), vec3<f32>(-583f, 755f, 144f)))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, -136f, _wgslsmith_f_op_f32(ceil(544f))) - vec3<f32>(1f, -116f, 1000f)))));
    var var_1 = 0u;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1544f) + -898f), _wgslsmith_div_f32(var_0.x, -754f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(-1i)) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1802f, var_0.x), vec3<f32>(682f, var_0.x, 343f)))))));
    var_0 = vec3<f32>(var_0.x, -2395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))));
    var var_2 = Struct_2(var_0.x, !(!vec3<bool>(true, select(false, false, false), true)), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_i32(_wgslsmith_div_i32(~(-14037i), i32(-1i) * -17059i), ~u_input.b.x >> (u_input.c % 32u)))).x, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(15522u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(112302u, u_input.c), vec2<u32>(u_input.c, u_input.c)))), Struct_1(~(~min(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 60272u, u_input.c))), ~(-u_input.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(204f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1614f, 1147f, -157f)))))), 1u));
    return -448f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(-1439f + 195f));
    let var_1 = Struct_1(~abs(~vec3<u32>(29605u, 0u, 4294967295u)), ~(~select(u_input.a & u_input.a, max(vec4<i32>(u_input.a.x, 2147483647i, u_input.b.x, u_input.a.x), vec4<i32>(0i, u_input.b.x, -4283i, u_input.b.x)), true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-838f, _wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(step(1f, -1212f))))), _wgslsmith_div_u32(~1u, 723u) << (abs((4294967295u | u_input.c) & u_input.c) % 32u));
    var_0 = -692f;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(countOneBits(-199i), 1i), abs(-9671i), _wgslsmith_dot_vec4_i32(min(var_1.b, vec4<i32>(u_input.b.x, var_1.b.x, var_1.b.x, u_input.a.x)), vec4<i32>(1i, u_input.a.x, 52195i, u_input.a.x)) >> (_wgslsmith_add_u32(~45502u, u_input.c) % 32u), 37377i), max(firstTrailingBit(func_3(false, vec2<u32>(u_input.c, 6948u), Struct_2(var_1.c.x, vec3<bool>(true, true, false), 1283f, vec2<u32>(var_1.a.x, var_1.a.x), Struct_1(vec3<u32>(16216u, u_input.c, u_input.c), var_1.b, var_1.c, var_1.d)), Struct_2(1000f, vec3<bool>(false, true, false), var_1.c.x, var_1.a.xx, Struct_1(vec3<u32>(var_1.d, var_1.d, u_input.c), vec4<i32>(1i, -2147483647i, var_1.b.x, 2147483647i), vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x), 0u)))), -(~u_input.b)) & u_input.b);
    let var_3 = _wgslsmith_div_vec2_f32(var_1.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.zz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, -1000f), vec2<f32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec2_f32(max(var_1.c.xy, vec2<f32>(var_1.c.x, var_1.c.x))), vec2<bool>(false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | u_input.c);
}

