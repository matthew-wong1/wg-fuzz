struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = ~(firstLeadingBit(1u | u_input.c) << (arg_0.c.x % 32u));
    let var_1 = u_input.a.x;
    let var_2 = Struct_3(Struct_2(arg_0.d.a, arg_0.d.b), arg_0.a.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -708f), -350f, !all(arg_0.d.a.yyx)))));
    let var_4 = !var_2.a.a;
    return vec3<u32>(4294967295u, ~abs(~0u), abs(0u));
}

fn func_2() -> Struct_3 {
    var var_0 = 0u;
    var var_1 = !((i32(-1i) * -(~u_input.d)) < u_input.a.x);
    let var_2 = Struct_2(select(select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), vec4<bool>(select(true, true, false), true, u_input.a.x != u_input.a.x, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true | (any(vec4<bool>(true, false, true, false)) && true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c) << (~vec3<u32>(u_input.c, 56678u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, u_input.c, u_input.c) | abs(vec3<u32>(u_input.c, 1u, u_input.c))), ~select(~vec3<u32>(u_input.c, u_input.c, 6263u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 54256u, 4294967295u), vec3<u32>(4294967295u, u_input.c, u_input.c)), vec3<bool>(true, true, true)), select(~vec3<u32>(0u, 1u, u_input.c), ~func_3(Struct_4(vec4<bool>(true, false, true, false), u_input.d, vec2<u32>(29436u, 33359u), Struct_2(vec4<bool>(false, true, false, true), vec3<u32>(54918u, 4605u, u_input.c)))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true))));
    var_1 = all(vec2<bool>(!any(select(vec4<bool>(true, false, false, var_2.a.x), vec4<bool>(true, true, false, var_2.a.x), var_2.a)), var_2.a.x & (select(var_2.a.x, var_2.a.x, false) & true)));
    var_1 = true;
    return Struct_3(var_2, false);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2();
    var_0 = Struct_3(Struct_2(vec4<bool>(var_0.b, true, var_0.a.a.x, !all(var_0.a.a.zz)), abs(func_2().a.b)), all(vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.b, var_0.b), vec4<bool>(false, true, true, true))), all(vec4<bool>(true, var_0.a.a.x, true, var_0.a.a.x)))));
    var_0 = Struct_3(Struct_2(select(func_2().a.a, func_2().a.a, true), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 32226u, 3221u), vec3<u32>(var_0.a.b.x, u_input.c, u_input.c)), vec3<u32>(~0u, u_input.c, ~0u))), true);
    let var_1 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.b.x, arg_0, arg_0, arg_0), vec4<u32>(22695u, 27797u, u_input.c, 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, ~1u, ~35380u, 1u), countOneBits(~vec4<u32>(23265u, u_input.c, arg_0, u_input.c)))) & _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 34466u, 3589u, 54101u), vec4<u32>(arg_0, var_0.a.b.x, 1u, 47714u)) >> (vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, arg_0), 4294967295u, 19602u, countOneBits(31162u)) % vec4<u32>(32u)), vec4<u32>(arg_0, ~arg_0 & arg_0, ~(~u_input.c), ~u_input.c));
    var_0 = func_2();
    return Struct_2(vec4<bool>(true, var_0.a.a.x, all(!(!vec3<bool>(var_0.b, var_0.b, true))), !(!all(vec3<bool>(false, var_0.b, var_0.b)))), var_1.xwx);
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = abs(select(u_input.c, _wgslsmith_add_u32(max(~4294967295u, _wgslsmith_mult_u32(u_input.c, arg_0.b.x)), _wgslsmith_sub_u32(abs(107495u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), arg_0.b))), arg_0.a.x));
    let var_1 = Struct_4(vec4<bool>(!arg_0.a.x, true, false, arg_0.a.x), abs(-38949i), vec2<u32>(31574u >> (_wgslsmith_add_u32(42078u, var_0) % 32u), countOneBits(4294967295u) << (arg_0.b.x % 32u)), arg_0);
    let var_2 = ~_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(103898u, var_0))), vec2<u32>(_wgslsmith_mod_u32(var_0, 34643u), _wgslsmith_mod_u32(~u_input.c, _wgslsmith_clamp_u32(var_1.d.b.x, var_1.d.b.x, 73096u))));
    return abs(_wgslsmith_mult_vec3_u32(var_1.d.b, arg_0.b));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> Struct_5 {
    let var_0 = 0u;
    var var_1 = true;
    let var_2 = _wgslsmith_sub_u32(116314u, 10510u);
    let var_3 = Struct_1(vec3<f32>(-1320f, -761f, _wgslsmith_f_op_f32(round(971f))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-696f, 894f) - vec2<f32>(arg_3, arg_3)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(708f, 999f), vec2<f32>(-395f, -1519f), true)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 540f) * vec2<f32>(arg_3, -2766f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 2390f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -635f) + vec2<f32>(arg_3, arg_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1555f, arg_3) + vec2<f32>(arg_3, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-516f)), arg_3), func_1(reverseBits(1141u)).a.x))));
    var_1 = false;
    return Struct_5(vec2<i32>(1446i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, 18878i, arg_1, 2147483647i), -vec4<i32>(arg_1, 2147483647i, 16183i, 38809i)), ~select(-15731i, -2147483647i, true))), 957f, Struct_3(Struct_2(vec4<bool>(true, true, true, true), abs(vec3<u32>(37218u, var_2, u_input.c))), var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true)), any(vec3<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true)), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -100f), -1116f))), ~countOneBits(u_input.b.x) < u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2365f, -517f))), _wgslsmith_f_op_f32(min(-541f, -2109f))) - vec2<f32>(-2302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(265f, -197f))))));
    var var_2 = _wgslsmith_sub_u32(firstTrailingBit(~18642u), _wgslsmith_sub_u32((1u & ~u_input.c) << (_wgslsmith_div_u32(~4294967295u, 1u) % 32u), u_input.c));
    var var_3 = func_5(-8457i, ~(~min(_wgslsmith_mod_i32(-13242i, u_input.b.x), 0i)), func_4(func_1(u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.a))), all(vec3<bool>(!var_0.x && func_2().a.a.x, select(true, !var_1.b, func_5(u_input.a.x, var_3.a.x, var_3.c.a.b, var_3.b).c.a.a.x), 4294967295u >= (var_3.c.a.b.x ^ var_3.c.a.b.x))), vec2<f32>(-1410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f - var_1.a.x)), _wgslsmith_f_op_f32(-func_5(u_input.b.x, u_input.d, var_3.c.a.b, -1835f).b))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(844f, 620f, var_3.b), var_1.a) - var_1.a), var_3.c.a.a.wxz))), true & func_2().b, var_1.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1042f, var_1.a.x, -335f))) + vec4<f32>(var_3.b, -139f, -894f, var_4.c.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 174f, -259f, -650f), _wgslsmith_div_vec4_f32(vec4<f32>(1830f, var_3.b, 965f, var_4.a.x), vec4<f32>(-852f, var_4.a.x, 780f, var_4.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-610f, var_3.b, var_4.a.x, -500f) - vec4<f32>(-614f, var_3.b, var_3.b, -1000f)), vec4<f32>(var_1.c.x, 1349f, var_1.c.x, var_4.a.x), !vec4<bool>(false, false, var_4.b, false)))), false)), vec3<u32>(func_2().a.b.x, var_3.c.a.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(func_2().a.b.zx, vec2<u32>(var_3.c.a.b.x, var_3.c.a.b.x)), _wgslsmith_add_u32(min(1u, 18784u), func_1(var_3.c.a.b.x).b.x))), var_3.c.a.b.xz | ~vec2<u32>(min(u_input.c, 28283u), ~var_3.c.a.b.x), 1197f, _wgslsmith_dot_vec2_i32(var_3.a, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_3.a, vec2<i32>(0i, -2572i), ~vec2<i32>(1i, -2147483647i)), u_input.b.yx)));
}

