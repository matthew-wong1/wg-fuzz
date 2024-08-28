struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: i32) -> vec3<bool> {
    let var_0 = vec3<f32>(-521f, 452f, arg_0.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), -1716f));
    var var_2 = ~(1u | firstLeadingBit(u_input.a.x));
    var var_3 = var_0;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 1094f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1103f - arg_0.d))))));
    return arg_2.xyz;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = vec4<bool>(all(select(select(vec3<bool>(true, true, false), func_3(Struct_1(0i, arg_0.b, 1i, arg_0.d, vec2<u32>(1u, arg_0.e.x)), vec4<i32>(-35853i, -4332i, 1i, arg_0.c), vec4<bool>(false, false, false, false), arg_0.a), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true), vec3<bool>(true, true, true))), true && all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(func_3(arg_0, vec4<i32>(_wgslsmith_add_i32(arg_0.a, 0i), ~arg_0.c, 0i, ~arg_0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), arg_0.a).zx), all(vec3<bool>(true, true, true)));
    var_1 = vec4<bool>(true, select(false, var_1.x, any(select(var_1.wx, !var_1.zy, var_1.xz))), var_1.x, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, arg_0.d) + vec2<f32>(arg_0.d, arg_0.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d, -865f), vec2<f32>(arg_0.d, 508f), true)) - vec2<f32>(1507f, arg_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(263f, 669f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1268f, 851f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, arg_0.d) * vec2<f32>(arg_0.d, -415f)) * vec2<f32>(-492f, arg_0.d))), var_1.x)));
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) - arg_0.d)) < _wgslsmith_f_op_f32(abs(-1008f)), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x)), true)), var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.b, vec4<u32>(arg_0.e.x, 48453u, 4294967295u, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, arg_1, 1u)), u_input.b & vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(var_0, 0u, arg_0.e.x, arg_0.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(149u, 7441u, arg_0.e.x, u_input.a.x), arg_0.b) & ~vec4<u32>(arg_1, 7761u, 23215u, u_input.a.x)) >= arg_1);
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(15912i, u_input.b, -61491i, arg_0.a, vec2<u32>(u_input.b.x, u_input.a.x)), ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1039f) + arg_1.a) - arg_0.a)), _wgslsmith_f_op_f32(abs(-1729f)), _wgslsmith_div_f32(-329f, 197f));
    return -1160f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = Struct_1(-1i, ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, arg_0.e.x, var_0.e.x, arg_0.e.x), vec4<u32>(arg_0.b.x, 1u, arg_0.b.x, arg_1.x), arg_0.b), max(arg_0.b, vec4<u32>(arg_1.x, 4294967295u, 52958u, 46849u)))), max(_wgslsmith_add_i32(~arg_0.a, 5247i | var_0.c), var_0.c) << (~(~_wgslsmith_dot_vec4_u32(arg_0.b, var_0.b)) % 32u), arg_0.d, abs(select(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_0.b.x, 1u))), _wgslsmith_mult_vec2_u32(firstTrailingBit(arg_1), ~arg_0.b.yy), true || all(vec2<bool>(false, true)))));
    let var_1 = arg_0.a >> (~1u % 32u);
    let var_2 = Struct_1(-26189i, u_input.b, ~var_1, 917f, var_0.e);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-arg_0.d));
    return !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1784i, firstTrailingBit(23732i), 1i), i32(-1i) * -1i), u_input.b, ~(-_wgslsmith_sub_i32(-10030i, -1i)), _wgslsmith_f_op_f32(func_1(Struct_2(-243f), Struct_2(_wgslsmith_f_op_f32(2131f - -1749f)))), ~vec2<u32>(~1u, _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.b.x))), ~select(~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, 1u)), reverseBits(u_input.a)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) + -1000f)) - _wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, -1343f)))));
    let var_1 = min(vec2<u32>(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a))) | (_wgslsmith_sub_vec2_u32(vec2<u32>(53897u, 4294967295u) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), u_input.a ^ vec2<u32>(u_input.b.x, 5200u)) << (u_input.b.yy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.a) ^ vec2<u32>(u_input.b.x, 43098u ^ u_input.b.x), vec2<u32>(_wgslsmith_div_u32(~u_input.b.x, reverseBits(95144u)), 31343u), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 57798u), abs(vec2<u32>(1u, u_input.a.x))), abs(~33566u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f), -1240f), 1257f, 925f)));
    var var_3 = -53131i;
    var var_4 = any(!select(select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), true, true, true), vec4<bool>(true, true, false, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, _wgslsmith_mult_i32(~(~(-2147483647i)), -4447i >> (var_1.x % 32u))));
}

