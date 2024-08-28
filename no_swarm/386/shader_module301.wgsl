struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(vec2<bool>(any(vec2<bool>(arg_0.x, 19637i == u_input.b)), !(!arg_0.x)), vec3<u32>(1u, 1u, 1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(~4294967295u, max(1691u, 61099u)), _wgslsmith_sub_vec2_u32(vec2<u32>(42556u, 21360u), vec2<u32>(1u, 1u)), (false && arg_0.x) && arg_0.x), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(45145u, 1u), vec2<u32>(0u, 4454u)))));
    var var_1 = Struct_2(_wgslsmith_add_vec2_u32(var_0.b.xz, _wgslsmith_sub_vec2_u32(var_0.b.xy, _wgslsmith_div_vec2_u32(reverseBits(var_0.b.xx), var_0.b.xy))), 1u, var_0.b.x >> (_wgslsmith_div_u32(var_0.b.x, 3838u) % 32u), vec3<bool>(arg_0.x, true, var_0.a.x));
    return -1661f;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), !vec2<bool>((u_input.c.x & u_input.c.x) <= abs(arg_1.x), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))));
    var var_1 = vec2<i32>(arg_1.x, -57424i);
    var_1 = -vec2<i32>((-arg_1.x | -47391i) | var_1.x, -1i);
    let var_2 = !any(!(!select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, true, true), var_0.x)));
    var_1 = arg_1.xz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2029f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-3044f, _wgslsmith_div_f32(-627f, 505f))) + 745f)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = ~(-15044i) >> (~(~var_0.c) % 32u);
    let var_2 = _wgslsmith_f_op_f32(func_2(vec4<bool>(!(!(!var_0.d.x)), true, any(vec4<bool>(!var_0.d.x, !var_0.d.x, false, true & var_0.d.x)), !(~var_0.c < 19995u))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~var_0.a, vec3<i32>(var_1, u_input.a, u_input.d))))), _wgslsmith_f_op_f32(min(-1917f, -107f)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(sign(var_3.x))))), 970f, -1620f, var_3.x);
    return _wgslsmith_f_op_f32(abs(1144f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_2 {
    return Struct_2(_wgslsmith_mod_vec2_u32(~(~(~arg_0)), ~countOneBits(~arg_0)), arg_0.x, arg_0.x, vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)) || true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(-272f)) <= arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4375u, 0u << (0u % 32u)), vec2<u32>(4294967295u, min(0u, 1574u)), vec2<u32>(1u, 1u))), vec2<f32>(-459f, _wgslsmith_f_op_f32(func_1(Struct_2(~vec2<u32>(4347u, 6676u), firstLeadingBit(1u), 1u, select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))))));
    var_0 = func_4(_wgslsmith_mod_vec2_u32(var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(389f, -1505f) + vec2<f32>(1000f, 523f)), vec2<f32>(_wgslsmith_f_op_f32(round(-469f)), _wgslsmith_f_op_f32(floor(928f)))))));
    var_0 = func_4(vec2<u32>(~var_0.b, 11777u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1463f, 693f), vec2<f32>(1197f, 578f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(1f, _wgslsmith_div_f32(-118f, 623f)))));
    let var_1 = ~vec4<u32>(4294967295u, var_0.c, ~(~abs(var_0.c)), _wgslsmith_add_u32(45242u, _wgslsmith_clamp_u32(var_0.a.x >> (var_0.c % 32u), 24897u, ~var_0.a.x)));
    var_0 = Struct_2(countOneBits(vec2<u32>(var_1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.c, 68932u), var_1.zxw) % 32u), _wgslsmith_clamp_u32(select(var_1.x, 1u, false), 4294967295u, func_4(var_0.a, vec2<f32>(1556f, 950f)).c))), var_1.x, ~(~(~(~var_0.b))), func_4(~vec2<u32>(~var_1.x, ~47927u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2361f, 1165f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(916f, 1665f) * vec2<f32>(-102f, 130f)))))).d);
    var_0 = func_4(countOneBits(var_0.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(339f, 541f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1995f, -1254f), vec2<f32>(1465f, 1028f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-145f, -319f))) + vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(199f))), 712f), var_0.d.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1262f * 942f), _wgslsmith_f_op_f32(abs(246f))), -651f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(946f - _wgslsmith_f_op_f32(select(-381f, 1085f, var_0.d.x))))));
    let var_3 = Struct_1(!vec2<bool>(!(var_0.d.x && var_0.d.x), (var_2.x == var_2.x) == !var_0.d.x), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(48666u, 1087u, 8587u), var_1.wxx)), var_1.x);
    var var_4 = _wgslsmith_mult_vec4_i32(u_input.c & u_input.c, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-var_4.xyy), ~var_1.x, 85395i);
}

