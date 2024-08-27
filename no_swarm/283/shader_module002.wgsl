struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    var var_0 = abs(_wgslsmith_dot_vec4_i32(min(~(-vec4<i32>(-11049i, -31504i, 33362i, u_input.a.x)), (vec4<i32>(-2147483647i, -2147483647i, 0i, 0i) << (u_input.d % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(2274u, 51626u, u_input.c.x, 27044u), vec4<u32>(34520u, u_input.c.x, 14683u, 10642u), u_input.d) % vec4<u32>(32u))), vec4<i32>(u_input.b.x, u_input.b.x & u_input.a.x, min(-5711i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.b.x, 6458i))), _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x & 2147483647i, -u_input.b.x))));
    var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 410f) + vec2<f32>(758f, -177f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, -1647f)))), u_input.e.x, _wgslsmith_div_i32(-62597i, abs(-_wgslsmith_add_i32(2147483647i, u_input.b.x))), ~u_input.e, ~abs(-(~vec4<i32>(-2147483647i, u_input.b.x, -4243i, u_input.b.x))));
    let var_2 = Struct_1(vec2<f32>(140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(-var_1.a.x)))), 8710u, var_1.e.x, ~var_1.d, select(~(-var_1.e), var_1.e, vec4<bool>(true, true, true, true)) & vec4<i32>(_wgslsmith_dot_vec4_i32(~var_1.e, _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.x, -271i, 0i, 2147483647i), var_1.e)), 74040i, u_input.a.x, ~firstTrailingBit(var_1.c)));
    var_0 = -1i;
    return vec3<bool>(false, select((~84401u != reverseBits(var_1.d.x)) | true, true, all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)) || (true & ((12396i & var_2.c) != -30742i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = select(vec3<bool>(true, (26473u >= (arg_1.d.x << (arg_0.d.x % 32u))) && true, false), vec3<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_2.a.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-734f, 1018f)) - _wgslsmith_f_op_f32(max(318f, arg_0.a.x)))), !select(func_3(), vec3<bool>(true, false, true), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1690f, 1098f, _wgslsmith_f_op_f32(abs(-835f)), _wgslsmith_f_op_f32(-arg_1.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, 491f, arg_0.a.x, arg_0.a.x))), vec4<f32>(arg_2.a.x, arg_0.a.x, 482f, arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1792f, arg_2.a.x, 204f, arg_1.a.x), vec4<f32>(-1345f, 1374f, arg_2.a.x, arg_0.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1393f, 872f, 480f, arg_2.a.x), vec4<f32>(1000f, 1205f, arg_0.a.x, arg_2.a.x), false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.a.x, arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1338f, 1001f, arg_0.a.x, -2441f), vec4<f32>(340f, arg_0.a.x, 632f, arg_0.a.x))), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x))))))));
    var_0 = vec3<bool>(~u_input.a.x < -22441i, true, select(var_0.x, false, !var_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x)));
    let var_3 = arg_2.b;
    return _wgslsmith_f_op_f32(-arg_1.a.x);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(1020f, 1606f), 16670u, 0i, u_input.d.yyy, vec4<i32>(u_input.a.x, -12603i, -92540i, 64777i)), Struct_1(vec2<f32>(357f, -469f), 0u, u_input.a.x, vec3<u32>(0u, u_input.e.x, 34962u), vec4<i32>(-5214i, 2147483647i, u_input.a.x, u_input.a.x)), Struct_1(vec2<f32>(-308f, 379f), u_input.e.x, u_input.a.x, arg_0.wzz, vec4<i32>(-1266i, u_input.b.x, u_input.b.x, 2147483647i)))))) + -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 68577i;
    var var_1 = _wgslsmith_mult_vec2_i32(~(-_wgslsmith_div_vec2_i32(vec2<i32>(-29817i, u_input.b.x) ^ u_input.b.yy, vec2<i32>(-11907i, 0i))), vec2<i32>(~(abs(u_input.b.x) >> (28934u % 32u)), u_input.a.x));
    var_0 = 23572i;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(382f - _wgslsmith_f_op_f32(step(-220f, _wgslsmith_f_op_f32(-2451f * _wgslsmith_f_op_f32(-3088f - -728f))))), -832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-930f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(814f + _wgslsmith_f_op_f32(floor(-1457f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(func_1(u_input.d)))), _wgslsmith_f_op_f32(min(305f, -1072f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 587f)), var_2.x)), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(~(u_input.e.x >> (45128u % 32u)), _wgslsmith_sub_u32(~u_input.d.x, u_input.d.x))), u_input.a.x, _wgslsmith_clamp_vec3_u32(u_input.e, abs(vec3<u32>(u_input.d.x, 27770u, u_input.e.x) | ~u_input.e), select(u_input.d.zxz, vec3<u32>(39246u, reverseBits(20227u), firstLeadingBit(u_input.c.x)), vec3<bool>(true, true, true))), ~vec4<i32>(1i, _wgslsmith_add_i32(select(-2147483647i, var_1.x, false), firstTrailingBit(u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-11891i, var_1.x, 24439i), u_input.b >> (vec3<u32>(7245u, 53515u, u_input.d.x) % vec3<u32>(32u))), _wgslsmith_div_i32(u_input.b.x | -1i, u_input.b.x)));
    let var_4 = 32765u;
    let x = u_input.a;
    s_output = StorageBuffer(486f);
}

