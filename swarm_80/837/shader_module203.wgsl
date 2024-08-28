struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_0.yyw;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(ceil(arg_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-891f)))))));
    let var_2 = arg_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.c.x)))) + arg_1.c.x), -177f, _wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -679f), var_0.x < ~(-2147483647i))));
    return vec2<bool>(false && (all(vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)) || true), arg_3.x);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(125f + -1636f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-856f - 895f))), any(func_3(vec4<i32>(u_input.a, -64835i, 0i, 1i), Struct_1(u_input.c.wz, arg_1.x, vec4<f32>(-402f, -2354f, -771f, 691f), u_input.b), 4294967295u, vec4<bool>(arg_0, false, false, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2431f - 688f), _wgslsmith_f_op_f32(513f + 1294f))) * -894f)));
    var var_1 = Struct_1(u_input.c.xy, abs((u_input.b >> (abs(u_input.b) % 32u)) >> (_wgslsmith_mod_u32(u_input.b, arg_1.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, -590f, var_0), vec4<f32>(-1262f, var_0, var_0, -1626f))), vec4<f32>(-461f, 700f, 2404f, var_0))))), 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(min(1198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1486f)))));
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    var_1 = Struct_1(-var_1.a, ~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) * -1000f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(2024f + var_0)) + _wgslsmith_f_op_f32(var_0 * -176f)), _wgslsmith_f_op_f32(select(-1008f, _wgslsmith_f_op_f32(exp2(var_1.c.x)), var_1.b >= ~0u))), u_input.b);
    return var_0;
}

fn func_1() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2211f))) + 698f), -1637f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(581f + -1225f)))))), -1186f);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, ~vec3<u32>(0u, u_input.b, u_input.b))) * _wgslsmith_f_op_f32(abs(-663f))), _wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(312f + var_0.x), _wgslsmith_f_op_f32(var_0.x * 318f)))), -911f, _wgslsmith_f_op_f32(-169f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, vec3<u32>(u_input.b, 23028u, u_input.b))), _wgslsmith_f_op_f32(-var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1141f + _wgslsmith_f_op_f32(max(var_0.x, -239f))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-779f + var_0.x), _wgslsmith_f_op_f32(-528f * var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var_0 = vec4<f32>(720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f * 514f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_0.x)));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.c.x, 0i)), reverseBits(u_input.c.yw)), u_input.c.yx), reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, u_input.b, 1u) << (vec3<u32>(109786u, u_input.b, 2969u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-772f, var_0.x, 1065f, var_0.x), vec4<f32>(1499f, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-865f, var_0.x, var_0.x, 2184f), vec4<f32>(var_0.x, var_0.x, -984f, var_0.x))))), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b));
    let var_2 = var_1;
    return select(~(~16641u) >= _wgslsmith_add_u32(max(0u, var_2.d), abs(var_2.b)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true) & any(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(54132i, u_input.c.x, -31394i, 2147483647i), countOneBits(vec4<i32>(2147483647i, 1i, 16161i, -32452i))), var_1, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28283u, var_2.b), vec3<u32>(0u, var_2.b, var_1.d)), vec4<bool>(true, true, func_3(u_input.c, Struct_1(vec2<i32>(28325i, 4949i), 0u, var_1.c, u_input.b), var_2.d, vec4<bool>(true, true, true, false)).x, 11076u > u_input.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = -1376f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    var var_1 = Struct_1(~u_input.c.xx, ~select(u_input.b, 31427u & u_input.b, arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 911f, arg_2.x, arg_2.x) * vec4<f32>(-2143f, arg_2.x, arg_2.x, -762f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1845f, -248f, -1547f))) - vec4<f32>(_wgslsmith_div_f32(arg_2.x, 953f), arg_2.x, arg_2.x, -441f))), ~_wgslsmith_add_u32(arg_1.x, 1u));
    var var_2 = -136f;
    var var_3 = var_1.c.x;
    return Struct_1(u_input.c.zw, _wgslsmith_div_u32(~0u, 19423u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-324f, arg_2.x, arg_2.x, arg_2.x))))), 75288u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, true), true && (func_1() & true)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, _wgslsmith_mult_u32(0u, 1u), 112123u, min(36511u, u_input.b)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 0u, u_input.b, 144405u)), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 0u), u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-180f, _wgslsmith_f_op_f32(-1851f - 609f)), vec2<f32>(_wgslsmith_f_op_f32(max(699f, -1298f)), _wgslsmith_f_op_f32(max(-1051f, -1430f)))))));
    var var_1 = abs(-func_4(vec2<bool>(true, true), ~(vec4<u32>(u_input.b, var_0.d, 36757u, var_0.d) ^ vec4<u32>(15862u, 1u, 26367u, u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.wx) + var_0.c.yz)).a.x);
    var var_2 = ~vec2<u32>(0u, u_input.b);
    var_1 = reverseBits(func_4(vec2<bool>(true, true), vec4<u32>(var_2.x, 1u, var_2.x, 4294967295u) >> (~vec4<u32>(4294967295u, var_0.d, 1u, 39005u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(false, false), vec4<u32>(4294967295u, 19132u, var_2.x, 4294967295u), vec2<f32>(var_0.c.x, 171f)).c.yx - var_0.c.xw)).a.x) >> (~u_input.b % 32u);
    var_1 = max(var_0.a.x >> ((~(0u ^ var_2.x) >> ((max(47677u, u_input.b) & select(54762u, var_2.x, true)) % 32u)) % 32u), abs(1i & (var_0.a.x >> (0u % 32u))));
    var_2 = ~_wgslsmith_add_vec2_u32(~firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.b, 1u))), ~((vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(var_2.x, 1u) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_0.d), vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~u_input.b << (var_0.b % 32u), (4294967295u ^ var_2.x) & (0u | u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 41897u, var_0.d), vec3<u32>(70180u, var_2.x, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(50463u, 1u, var_2.x), ~vec3<u32>(37586u, u_input.b, var_2.x))), func_4(select(vec2<bool>(func_1(), true), func_3(u_input.c, func_4(vec2<bool>(true, true), vec4<u32>(0u, var_2.x, 19267u, 1u), var_0.c.yy), _wgslsmith_mod_u32(var_2.x, var_2.x), vec4<bool>(true, true, true, true)), vec2<bool>(true, true)), firstTrailingBit(firstLeadingBit(vec4<u32>(var_0.d, 24657u, 4294967295u, var_0.d))), _wgslsmith_f_op_vec2_f32(var_0.c.xx - var_0.c.xw)).c.x, -1i);
}

