struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    return 0i;
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    return -(abs(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(23828i, -1i, -1i, 464i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -21328i, 1i), vec4<i32>(1i, -101i, -1i, 2147483647i)))) | countOneBits(vec4<i32>(11591i, i32(-1i) * -1i, 1i, _wgslsmith_clamp_i32(-2147483647i, 17221i, -28304i))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<i32>((-71888i >> (~u_input.a % 32u)) ^ firstLeadingBit(max(_wgslsmith_clamp_i32(2147483647i, -1i, -30054i), -1i)), 1i, 37257i);
    var var_1 = _wgslsmith_div_vec4_i32(~(-_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~vec4<i32>(var_0.x, 1i, var_0.x, var_0.x))), min(vec4<i32>(~(~var_0.x), func_2(Struct_1(vec4<bool>(false, false, true, false), 413f)), _wgslsmith_add_i32(19953i, -1i), var_0.x), func_3(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-229f, 1029f)), _wgslsmith_f_op_f32(-2140f - 2149f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-876f, -1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-221f, 521f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2218f, _wgslsmith_f_op_f32(686f + -1184f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(568f, 474f) * vec2<f32>(1360f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(761f, -740f) * vec2<f32>(-391f, 1055f)), true)))));
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-21210i, -17492i), -15445i), 9597i, abs(select(var_0.x, -2147483647i, true)));
    var var_4 = Struct_3(Struct_2(abs(vec2<i32>(var_0.x, min(var_1.x, var_3.x))), max(~firstTrailingBit(vec2<u32>(43976u, u_input.b.x)), vec2<u32>(~4294967295u, 4294967295u)), vec3<u32>(~40016u, ~(~1u), u_input.a), true, u_input.b.x), Struct_2(_wgslsmith_div_vec2_i32(var_1.yz, vec2<i32>(func_3(vec2<bool>(false, true)).x, _wgslsmith_mod_i32(-1i, -8991i))), u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x)), u_input.b.x), vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 28782u, u_input.a), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a)), _wgslsmith_mult_u32(u_input.a, u_input.b.x))), !any(vec3<bool>(false, false, true)), ~59460u), max(_wgslsmith_div_vec4_i32(vec4<i32>(-24035i, 2147483647i, var_0.x, -56270i), firstTrailingBit(vec4<i32>(var_0.x, 19562i, var_1.x, -1998i))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_3.x, 2147483647i, var_3.x) ^ vec4<i32>(var_3.x, var_3.x, var_3.x, var_1.x), select(vec4<i32>(-1i, var_0.x, var_0.x, -16764i), vec4<i32>(var_3.x, var_3.x, var_0.x, var_3.x), vec4<bool>(true, true, false, false)))) ^ vec4<i32>(16325i, 21462i, ~var_1.x, -func_3(vec2<bool>(false, true)).x));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), Struct_2(vec2<i32>(1i, 1i), ~max(vec2<u32>(u_input.b.x, u_input.b.x), ~u_input.b), vec3<u32>(countOneBits(~u_input.b.x), u_input.a, 12171u << ((1958u ^ u_input.b.x) % 32u)), true, abs(abs(8160u))), select(vec4<i32>(-_wgslsmith_div_i32(1i, -47297i), 1i, _wgslsmith_sub_i32(1i, i32(-1i) * -14989i), 5108i), func_3(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec4<bool>(false, true, true, any(vec2<bool>(true, false))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1286f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(734f, -2768f)) - _wgslsmith_f_op_f32(f32(-1f) * -440f)))));
    var var_2 = _wgslsmith_sub_vec2_u32(select(abs(func_1().b), max(~firstTrailingBit(var_0.a.b), max(~var_0.b.b, var_0.a.c.zz)), var_0.b.d), ~var_0.b.b);
    let var_3 = var_0.c.x;
    let var_4 = vec4<f32>(var_1, -577f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(sign(-1627f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-482f))))));
    let var_5 = any(vec2<bool>(var_0.b.d, true));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.c.ywx, vec3<i32>(abs(var_3 | 2147483647i), 1i, ~abs(10319i))), ~_wgslsmith_sub_i32(-12029i, var_3));
}

