struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(select(select(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), true), vec3<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), vec4<u32>((21311u << (~4294967295u % 32u)) ^ ~select(18496u, 66197u, false), 1u, select(u_input.a, ~14606u, true) >> (60085u % 32u), 48060u), vec2<bool>(!((u_input.b ^ 1u) == u_input.b), !select(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-842f))) - -650f)), Struct_1(6408i, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), min(~vec4<u32>(7594u, u_input.b, 1u, u_input.b), select(~vec4<u32>(0u, 85673u, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), true)), all(vec4<bool>(all(vec2<bool>(true, false)), false, true, true)), vec3<bool>(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(46664u, 24941u)) >= min(65906u, u_input.a))));
    global0 = _wgslsmith_sub_i32(-27209i, 0i);
    global0 = _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(58786i, 1i, -2147483647i, select(var_0.e.a, var_0.e.a, true)), vec4<i32>(var_0.e.a, var_0.e.a, 70453i, 1i) >> (var_0.e.c % vec4<u32>(32u)))), countOneBits(var_0.e.a));
    global0 = ~var_0.e.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(627f)), _wgslsmith_f_op_f32(abs(-1519f)))));
    return vec4<u32>(1u >> (~(~u_input.a) % 32u), 4294967295u, _wgslsmith_mod_u32(~1u, var_0.e.c.x), ~u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = select(select(select(!vec2<bool>(arg_0.d, false), arg_0.e.yx, !select(arg_0.e.zz, arg_0.e.yx, false)), !select(!arg_0.e.xx, !vec2<bool>(arg_0.b, true), vec2<bool>(true, arg_0.b)), arg_0.e.xz), vec2<bool>(all(select(arg_0.e, vec3<bool>(arg_0.d, false, false), select(vec3<bool>(arg_0.d, arg_0.e.x, false), vec3<bool>(arg_0.d, arg_0.e.x, arg_0.e.x), arg_0.d))), arg_0.e.x), !select(!select(vec2<bool>(true, arg_0.d), arg_0.e.xy, arg_0.e.yx), arg_0.e.yz, arg_0.e.zy));
    var var_1 = Struct_5(Struct_4(~arg_0.c), (_wgslsmith_sub_i32(-arg_2.x, arg_0.a) << (67570u % 32u)) >> (~_wgslsmith_add_u32(_wgslsmith_mod_u32(32421u, 7471u), ~arg_0.c.x) % 32u), Struct_3(vec3<bool>(var_0.x != true, true, true), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 1u, u_input.b), ~vec4<u32>(5228u, u_input.b, arg_0.c.x, 4319u), func_3()), abs(~arg_0.c), select(vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(false, arg_0.d, arg_0.d, false), false)), select(vec2<bool>(arg_0.e.x & var_0.x, false), select(select(vec2<bool>(var_0.x, arg_0.b), vec2<bool>(arg_0.e.x, true), var_0.x), !vec2<bool>(arg_0.e.x, true), vec2<bool>(false, true)), arg_0.e.zx), arg_1, Struct_1(abs(arg_0.a), all(arg_0.e), firstLeadingBit(reverseBits(vec4<u32>(u_input.b, 1u, 4294967295u, arg_0.c.x))), any(!var_0), select(vec3<bool>(true, var_0.x, false), select(vec3<bool>(false, true, false), arg_0.e, arg_0.d), false))));
    var_1 = Struct_5(Struct_4(vec4<u32>(arg_0.c.x, ~(~1u), 1u, ~arg_0.c.x & u_input.a)), 2147483647i, var_1.c);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(219f + -1000f), var_1.c.c.x)))) != _wgslsmith_f_op_f32(-1f);
    var_1 = Struct_5(Struct_4(vec4<u32>(arg_0.c.x, min(u_input.a, _wgslsmith_mult_u32(u_input.b, 11914u)), u_input.b, 1u ^ ~arg_0.c.x)), reverseBits(~(~min(arg_2.x, arg_0.a))), var_1.c);
    return ~(~23612u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(52431u, u_input.b, arg_0.c.x)), arg_0.c.xzw);
    var var_1 = Struct_4(_wgslsmith_add_vec4_u32(~(_wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(u_input.a, u_input.b, var_0, var_0)) >> (_wgslsmith_clamp_vec4_u32(arg_0.c, arg_0.c, vec4<u32>(var_0, 0u, 36469u, 0u)) % vec4<u32>(32u))), vec4<u32>(u_input.a, arg_0.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 15897u, var_0), vec3<u32>(u_input.b, var_0, 2630u)), 1u)));
    global0 = _wgslsmith_add_i32(-(arg_1 >> (~func_2(arg_0, arg_3.a, arg_2) % 32u)), 11726i);
    var_1 = Struct_4(var_1.a);
    var var_2 = Struct_5(Struct_4(arg_0.c), 14536i, Struct_3(vec3<bool>(arg_0.b, !(arg_2.x >= -14441i), !arg_0.d), var_1.a, !vec2<bool>(false, arg_1 != 3765i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(725f)) + _wgslsmith_f_op_f32(-arg_3.a)), arg_3.a), arg_0));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~select(~vec4<u32>(u_input.b, u_input.b, 11376u, 4294967295u), vec4<u32>(u_input.b, 875u, u_input.a, u_input.b), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -522f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(580f, 1949f) + vec2<f32>(-1000f, 1432f)))))));
    var var_2 = vec2<i32>(func_1(Struct_1(0i, false, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.a.x, var_0.a.x, 0u), var_0.a), (u_input.b <= 50796u) && true, vec3<bool>(69023u <= var_0.a.x, true, true)), -_wgslsmith_mod_i32(-1i, 1i >> (0u % 32u)), ~countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(49632i, -56481i), vec2<i32>(1i, 5584i), vec2<i32>(-4014i, -39691i))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_f_op_f32(-var_1.x)))), abs(_wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-18026i, 27938i), abs(3840i), _wgslsmith_div_i32(48632i, 4660i)))));
    var var_3 = all(vec4<bool>(((152f > var_1.x) | false) && !(var_2.x > var_2.x), all(vec4<bool>(true, false, false, true)) & (_wgslsmith_f_op_f32(floor(var_1.x)) < _wgslsmith_f_op_f32(-var_1.x)), true, !(!(var_1.x >= var_1.x))));
    var var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(max(firstLeadingBit(countOneBits(vec4<i32>(-29348i, var_2.x, var_2.x, 41977i))), vec4<i32>(4220i, _wgslsmith_clamp_i32(1i, 1i, -61908i), var_2.x, 0i)), firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), -vec4<i32>(2147483647i, var_2.x, var_2.x, 631i)))), -vec4<i32>(2147483647i, 628i, countOneBits(countOneBits(var_2.x)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.x, var_2.x), vec3<i32>(var_2.x, 4145i, var_2.x)))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1710f, _wgslsmith_f_op_f32(-var_1.x), var_1.x) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1942f) + vec3<f32>(260f, -1000f, -132f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -463f, var_1.x) * vec3<f32>(262f, 1115f, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -924f, var_1.x), vec3<f32>(var_1.x, var_1.x, 728f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1119f, -185f, var_1.x) - vec3<f32>(var_1.x, 698f, -201f))))));
    var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_2.x, var_4.x, -2147483647i, var_4.x) & vec4<i32>(33261i, 2706i, -17829i, var_2.x)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(var_4.x, var_4.x, var_4.x, 56997i)) & (vec4<i32>(var_2.x, 0i, var_4.x, -2147483647i) | vec4<i32>(-2147483647i, 40576i, -2147483647i, var_2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_4.x, var_2.x, var_2.x), vec4<i32>(var_2.x, var_2.x, 959i, var_2.x)))), vec4<i32>(-countOneBits(var_2.x), _wgslsmith_clamp_i32(1i, -var_4.x, var_4.x), -2147483647i, 2147483647i) ^ vec4<i32>(-31391i, 11785i, 0i, -15394i));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(82896u, 32287u, var_0.a.x), var_0.a.xzx), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a.ww, vec2<u32>(4294967295u, 58310u)), firstLeadingBit(4294967295u), _wgslsmith_sub_u32(var_0.a.x, var_0.a.x))), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2137f, var_5.x))) - _wgslsmith_f_op_f32(-var_5.x)), var_5.yz, min(-(~(-var_2.x)), var_4.x));
}

