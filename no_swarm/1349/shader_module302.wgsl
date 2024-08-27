struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(-1000f, 1924f));
    var var_1 = Struct_1(_wgslsmith_add_i32(abs(56464i), arg_0.a), 1i, _wgslsmith_add_vec2_u32(arg_0.c, u_input.a));
    let var_2 = arg_0;
    var var_3 = Struct_1(-10134i | (~countOneBits(var_1.a) ^ arg_0.a), firstTrailingBit(2147483647i), countOneBits(select(var_1.c ^ arg_0.c, u_input.a ^ u_input.a, select(vec2<bool>(false, false), vec2<bool>(false, false), true)) | u_input.a));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2006f, var_0))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -897f), vec2<f32>(603f, 164f)))))));
    return var_4.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1139f)) - _wgslsmith_f_op_f32(f32(-1f) * -1304f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-685f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1i, -1i, u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1012f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-245f, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_div_f32(237f, -2325f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<f32>(1f, 1f, 1f, 1f))), select(select(vec4<bool>(all(vec2<bool>(true, false)), false, true, any(vec2<bool>(false, true))), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), true))));
    let var_1 = _wgslsmith_mod_vec4_u32(min(~countOneBits(select(vec4<u32>(4294967295u, 0u, 29180u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, true))), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(46923u, u_input.a.x, 4294967295u, 0u), vec4<u32>(814u, 1u, u_input.a.x, 26732u)))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(76291u, 1u, ~20439u, 0u), abs(~vec4<u32>(30068u, 1u, 0u, 14057u)), firstLeadingBit(vec4<u32>(u_input.a.x, 3017u, u_input.a.x, 71181u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(279f, var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f) + -160f))), _wgslsmith_f_op_f32(313f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(905f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), -103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1299f, var_0.x, var_0.x) - vec4<f32>(208f, var_0.x, -319f, 611f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, var_0.x, var_0.x, -939f)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 573f, 1018f, 135f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2137f, var_0.x, 197f) + vec4<f32>(var_0.x, 148f, var_0.x, var_0.x))), true)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -304f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, var_0.x, -1000f, var_0.x)))))));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-237f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1938f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) * _wgslsmith_f_op_f32(-var_0.x))), 1000f), _wgslsmith_f_op_vec3_f32(sign(var_0.zww)));
    return Struct_1(0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(19407i, _wgslsmith_clamp_i32(-1i, 20339i, -8582i)), _wgslsmith_mod_vec2_i32(max(vec2<i32>(0i, -1i), vec2<i32>(-1i, -2147483647i)), select(vec2<i32>(-1i, -24413i), vec2<i32>(-2147483647i, -39013i), vec2<bool>(true, false)))), vec2<u32>(26138u, 150171u));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(firstLeadingBit(firstTrailingBit(arg_0)), -(-(i32(-1i) * -1i) ^ arg_1.b), ~firstLeadingBit(~vec2<u32>(arg_1.c.x, 9213u) << (u_input.a % vec2<u32>(32u))));
    var_0 = Struct_1((-12028i & _wgslsmith_sub_i32(var_0.a, var_0.a)) << (0u % 32u), func_2().a, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 19199u, 50214u, arg_1.c.x), vec4<u32>(var_0.c.x, 51837u, var_0.c.x, 106482u)), arg_1.c.x), u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a, select(vec2<u32>(var_0.c.x, arg_1.c.x), vec2<u32>(u_input.a.x, 1u), vec2<bool>(true, true)))));
    var var_1 = Struct_1(arg_1.a, arg_0, vec2<u32>(var_0.c.x, ~21758u >> (arg_1.c.x % 32u)));
    var_1 = Struct_1(var_0.b, _wgslsmith_clamp_i32(-(~var_0.a << (~12904u % 32u)), 1i, var_0.a), ~select(vec2<u32>(28037u, _wgslsmith_mult_u32(0u, var_0.c.x)), var_0.c, true));
    let var_2 = -660f;
    return 13378i;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-495f * -1563f), _wgslsmith_f_op_f32(abs(418f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(107f - -281f)))));
    var var_1 = -max(~func_4(1i, func_2()), ~_wgslsmith_div_i32(_wgslsmith_add_i32(-39575i, 46520i), firstTrailingBit(-1i)));
    var var_2 = 4294967295u;
    let var_3 = 0u;
    var var_4 = vec2<u32>(61840u, 71757u);
    return Struct_1(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(19573i, 13842i, -1i), countOneBits(-13529i)) & vec2<i32>(~83358i, _wgslsmith_sub_i32(-30081i, 1852i)), ~vec2<i32>(func_4(-10166i, Struct_1(57521i, 1i, u_input.a)), 0i)), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, abs(func_1().c.x), ~28724u, firstTrailingBit(abs(var_0.a)));
}

