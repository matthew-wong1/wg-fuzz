struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = Struct_2(-firstTrailingBit(~arg_1.a), true, Struct_1(~vec3<u32>(arg_1.c.a.x, arg_1.c.a.x, u_input.a.x) << (_wgslsmith_sub_vec3_u32(~arg_1.c.a, ~u_input.a) % vec3<u32>(32u)), vec2<i32>(arg_1.c.b.x, -38513i), vec2<f32>(469f, arg_0.x), true));
    var var_1 = Struct_3(~_wgslsmith_mod_vec3_u32(~(arg_1.c.a ^ vec3<u32>(1647u, 13055u, 4294967295u)), ~vec3<u32>(arg_1.c.a.x, var_0.c.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-175f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(var_0.c.c.x)))))), -(select(_wgslsmith_sub_i32(-28947i, u_input.e.x), -3106i, any(vec4<bool>(true, var_0.c.d, arg_1.b, var_0.b))) << (var_0.c.a.x % 32u)), select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c.a.xz, vec2<u32>(0u, arg_1.c.a.x)), ~arg_1.c.a.yz), var_0.c.a.zx, arg_1.c.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(575f, _wgslsmith_f_op_f32(f32(-1f) * -618f))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = firstLeadingBit(-2147483647i);
    var_0 = _wgslsmith_dot_vec3_i32(~u_input.e.wwy, vec3<i32>(i32(-1i) * -u_input.e.x, 5889i, 1i));
    var var_1 = -1i;
    var var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(min(min(-7426i, var_2.b.x) >> (arg_2.a.x % 32u), 0i), countOneBits(var_2.b.x >> (~u_input.c.x % 32u)), -abs(-48947i)), select(u_input.e.wyz, vec3<i32>(-19740i << (min(4294967295u, u_input.c.x) % 32u), 42219i | arg_0.c, arg_2.b.x), !(!select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_2.d, false, false), vec3<bool>(arg_2.d, false, false)))));
    return 1003f;
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1214f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-403f + 1075f), _wgslsmith_f_op_f32(-878f - -920f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1410f)), _wgslsmith_f_op_f32(trunc(-423f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-917f, -214f), Struct_2(u_input.e.wwz, false, Struct_1(vec3<u32>(u_input.c.x, 0u, 1u), u_input.e.ww, vec2<f32>(695f, 1000f), false)), -2682f)) + _wgslsmith_f_op_f32(func_3(Struct_3(u_input.a, 882f, -1568i, u_input.a.yy), vec3<f32>(1000f, 406f, 232f), Struct_1(u_input.a, u_input.e.xy, vec2<f32>(453f, -799f), true), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<f32>(833f, -2314f), Struct_2(vec3<i32>(-2457i, 22475i, u_input.d), false, Struct_1(vec3<u32>(u_input.a.x, 14769u, 0u), vec2<i32>(0i, 1i), vec2<f32>(185f, -1075f), true)), 481f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), any(vec2<bool>(true, any(vec2<bool>(false, true)))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-322f + -1354f), _wgslsmith_f_op_f32(max(413f, _wgslsmith_f_op_f32(f32(-1f) * -523f))), _wgslsmith_f_op_f32(f32(-1f) * -693f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(u_input.a, -552f, u_input.e.x, vec2<u32>(u_input.c.x, 0u)), vec3<f32>(1451f, 127f, 1393f), Struct_1(vec3<u32>(43681u, 1u, u_input.c.x), u_input.e.yz, vec2<f32>(-765f, -815f), false), false)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(f32(-1f) * -515f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1135f + -1894f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f + -918f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 295f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-406f + -1872f), _wgslsmith_f_op_f32(f32(-1f) * -244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(718f)) - _wgslsmith_f_op_f32(var_1.x + 541f))))));
    var var_2 = Struct_1(~u_input.c, ~min(firstLeadingBit(u_input.e.wy), abs(countOneBits(vec2<i32>(u_input.e.x, u_input.e.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, 1251f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.x)), var_1.xz)), var_0.yy))), !var_0.x);
    var var_3 = Struct_3(~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), _wgslsmith_div_vec2_u32(var_2.a.yz, vec2<u32>(var_2.a.x, u_input.c.x))), ~countOneBits(1u), u_input.c.x ^ 4294967295u), var_2.c.x, ~(abs(abs(u_input.d)) & 2147483647i), abs(var_2.a.zz));
    var_3 = Struct_3(u_input.c, _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - -557f))), var_2.b.x, vec2<u32>(~var_2.a.x, var_2.a.x));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1275f, -192f, var_3.b), vec3<f32>(-2071f, var_3.b, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_3.b, var_3.b) * vec3<f32>(-543f, 552f, var_2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, -1201f, -312f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, 2582f, var_3.b) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-697f, var_2.c.x, var_3.b), vec3<f32>(var_3.b, var_3.b, 411f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, ~(~max(~vec4<u32>(var_2.a.x, 1u, var_2.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, 4290u, 36u, 43107u), vec4<u32>(4294967295u, 54037u, u_input.c.x, var_3.d.x)))), select(var_3.c, abs(_wgslsmith_add_i32(u_input.d, -1i)), true) << (~1u % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_2.a.x, ~(~4294967295u)), 25008u));
}

