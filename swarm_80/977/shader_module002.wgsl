struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.x)), !select(!select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(true, false, false, arg_1), arg_1), select(vec4<bool>(false, true, true, arg_1), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true)), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true), select(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 1i), arg_0.zzy)), 2147483647i), firstTrailingBit(-(arg_3.x ^ 46060i)), any(vec2<bool>(false, false))), select(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, arg_1, arg_1), false), arg_1), vec4<bool>(arg_1, 4294967295u <= u_input.b.x, arg_1, any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)))), _wgslsmith_div_u32(~0u, ~u_input.b.x) > ~_wgslsmith_mod_u32(u_input.b.x, 14679u)));
    var var_1 = Struct_2(max((u_input.b | firstTrailingBit(u_input.b)) ^ ~(u_input.b ^ u_input.b), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 17770u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, arg_2.x), -407f)), -470f, _wgslsmith_f_op_f32(var_0.a - -856f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_2.x, 1288f), vec3<f32>(arg_2.x, arg_2.x, arg_2.x), var_0.d.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-376f, -811f, var_0.a))), vec3<f32>(-694f, 1464f, var_0.a))))));
    var var_2 = var_0;
    var var_3 = Struct_3(vec4<bool>(true, false, true, any(select(vec3<bool>(var_2.d.x, false, false), vec3<bool>(var_2.b.x, false, true), !var_0.b.wxz))));
    var_3 = Struct_3(select(!var_0.d, var_0.b, all(select(var_0.d, select(vec4<bool>(false, true, false, arg_1), var_3.a, vec4<bool>(true, false, var_3.a.x, false)), vec4<bool>(var_3.a.x, true, var_2.b.x, var_2.d.x)))));
    return firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, firstLeadingBit(-var_0.c))) << (u_input.b.x % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = vec4<i32>(firstLeadingBit(-func_3(~u_input.a, arg_0.a != 211f, vec2<f32>(arg_0.a, 1000f), firstTrailingBit(vec4<i32>(-2312i, u_input.a.x, arg_0.c, 2147483647i)))), _wgslsmith_dot_vec2_i32(select(-(~u_input.a.wz), ~select(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(arg_0.c, u_input.c), true), arg_1), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-10294i, 1i)) << (min(u_input.b.xz, vec2<u32>(u_input.b.x, 16429u)) % vec2<u32>(32u)), vec2<i32>(0i, u_input.d) << (vec2<u32>(6902u, u_input.b.x) % vec2<u32>(32u)))), 0i, u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-597f)), 521f)), _wgslsmith_f_op_f32(f32(-1f) * -1092f), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1413f, arg_0.a, arg_0.a) * vec3<f32>(arg_0.a, -2368f, 1983f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, arg_0.a, arg_0.a))) * vec3<f32>(-324f, -114f, 549f))))));
    var var_2 = Struct_3(arg_0.b);
    var_0 = -_wgslsmith_add_vec4_i32(select(abs(-u_input.a), select(min(vec4<i32>(var_0.x, -20552i, u_input.c, u_input.d), vec4<i32>(arg_0.c, arg_0.c, u_input.a.x, var_0.x)), vec4<i32>(var_0.x, -2147483647i, -71881i, 0i) & u_input.a, all(vec4<bool>(var_2.a.x, arg_0.d.x, arg_0.b.x, arg_1))), true), u_input.a);
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, _wgslsmith_div_f32(1047f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-324f))))), -1000f)));
    return true;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 17596u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec3<u32>(~max(u_input.b.x, 20243u), firstLeadingBit(u_input.b.x), ~u_input.b.x)));
    let var_1 = min(select(countOneBits(-5495i), u_input.d, !all(vec2<bool>(false, true)) != (func_2(Struct_1(arg_0, vec4<bool>(false, false, false, false), -1445i, vec4<bool>(false, false, true, true)), false) | true)), -15893i);
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1509f - arg_0)) * _wgslsmith_f_op_f32(step(120f, _wgslsmith_f_op_f32(f32(-1f) * -256f)))), vec4<bool>(true, true, true, true), abs(-1317i), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))), false);
    let var_3 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(60863u, 1u, var_0.x), firstLeadingBit(vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)), vec3<u32>(var_0.x, 0u, 4294967295u)), ~vec3<u32>(u_input.b.x, u_input.b.x, var_0.x)) << ((_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 83461u, 0u), vec4<u32>(119u, var_0.x, 0u, 9697u)), vec4<u32>(select(24967u, 4294967295u, true), abs(u_input.b.x), ~var_0.x, ~62982u)) >> (~(~68414u) % 32u)) % 32u);
    let var_4 = -29396i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1319f, _wgslsmith_f_op_f32(f32(-1f) * -1056f), var_0.x > var_0.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + arg_0), -314f)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(any(vec2<bool>(true, true)), true, false, true), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_mult_i32(countOneBits(u_input.a.x), func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_4, 0i, -1i), u_input.a), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1041f), vec2<f32>(975f, arg_0))), -vec4<i32>(8000i, u_input.d, u_input.a.x, 7198i))), vec4<bool>(all(vec2<bool>(true, all(vec4<bool>(true, false, true, false)))), false, true || all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(select(false, false, true) & true, ~1u == var_3, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b.x;
    let var_1 = Struct_3(vec4<bool>(any(vec4<bool>(1i < arg_0.c, true, true, arg_0.b.x)), false, !arg_0.b.x, arg_0.c <= arg_1.c));
    var var_2 = var_1;
    var var_3 = 4294967295u;
    var_3 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~firstTrailingBit(max(vec4<u32>(arg_2.a.x, 58090u, u_input.b.x, 4294967295u), vec4<u32>(0u, u_input.b.x, arg_2.a.x, arg_2.a.x))), ~vec4<u32>(~arg_2.a.x, 4294967295u, _wgslsmith_add_u32(128557u, arg_2.a.x), 4294967295u)));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-217f), func_1(-1000f), Struct_2(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 1u) | u_input.b)), vec3<f32>(199f, -794f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f * 778f) - _wgslsmith_f_op_f32(sign(275f))))));
    var var_1 = Struct_3(!select(vec4<bool>(u_input.b.x >= 1u, !var_0.b.x, !var_0.d.x, true), select(!var_0.d, vec4<bool>(true, true, false, var_0.b.x), var_0.b), true));
    let var_2 = ~(~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.b)));
    let var_3 = max(0i | reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.c, -1i, u_input.c), abs(u_input.a))), ~(~u_input.c));
    var var_4 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a.yxw, u_input.a.zyx), -vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -39334i)), u_input.a.ww), 36003i), ~(-vec3<i32>(2147483647i, _wgslsmith_clamp_i32(2147483647i, -24374i, 2147483647i), 2147483647i)));
    var var_5 = Struct_2(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, 438f, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzy, 1u, vec2<i32>(-2147483647i, firstLeadingBit(0i) & _wgslsmith_mult_i32(var_0.c, i32(-1i) * -21601i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)) * vec3<f32>(var_0.a, -683f, 1346f)))));
}

