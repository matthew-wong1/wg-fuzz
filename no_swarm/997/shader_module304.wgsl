struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, -2029f) * vec2<f32>(-106f, -649f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, 123f) + vec2<f32>(1465f, -1108f)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, 283f)), vec2<f32>(456f, -690f))), select(vec2<bool>(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(true, true)), true), true), vec4<bool>(!all(vec3<bool>(true, true, false)), true, true, false), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1511f, 711f, 945f, 1825f), vec4<f32>(1522f, -1751f, 312f, -2160f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(328f, -958f, 555f, -3271f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1711f, 1915f, -1001f, 664f), vec4<f32>(-1000f, 285f, 505f, -159f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1362f + 797f), -260f) + vec2<f32>(_wgslsmith_f_op_f32(-876f * 736f), 2035f)), vec2<bool>(_wgslsmith_f_op_f32(floor(-476f)) >= -892f, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec4<bool>(all(vec2<bool>(false, false)) || all(vec4<bool>(true, false, true, true)), true, true, -32289i != -global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, -1572f, 236f, 182f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(712f, -1339f, 134f, 1827f) + vec4<f32>(151f, 238f, -1486f, -200f))))), -u_input.b);
    var var_1 = Struct_4(~u_input.d);
    var_1 = Struct_4(var_1.a << (~(~min(var_1.a, u_input.d)) % 32u));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(~_wgslsmith_div_u32(var_1.a, var_1.a)), u_input.d, ~var_1.a, 1u), _wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(var_1.a, 1u, u_input.d, 8356u))), vec4<u32>(_wgslsmith_sub_u32(min(4294967295u, 4294967295u), abs(var_1.a)), 4294967295u, u_input.d, ~(var_1.a | u_input.d)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_1.a, var_1.a, var_1.a, u_input.d) << (vec4<u32>(u_input.d, var_1.a, 0u, 0u) % vec4<u32>(32u))), abs(vec4<u32>(4294967295u, u_input.d, 40315u, u_input.d)))));
    var var_3 = false;
    return !(var_1.a > (var_2.x | u_input.d));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = !vec4<bool>(false, false, arg_2.a.c.x, arg_1.x);
    var var_1 = arg_2.b;
    var_0 = arg_1;
    let var_2 = ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -1i, u_input.c.x), ~arg_2.c >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a, 1u, 1u), vec3<u32>(u_input.d, 0u, arg_3.a)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(-arg_2.a.d.x);
    return !vec4<bool>(true, arg_2.b.b.x, func_3(), !(!arg_2.a.c.x));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> vec2<bool> {
    let var_0 = vec2<bool>(!(!arg_2), arg_2);
    var var_1 = Struct_4(~u_input.d >> (u_input.d % 32u));
    var var_2 = 4294967295u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1))), vec2<bool>(true, any(func_2(-32240i, vec4<bool>(true, arg_2, arg_2, var_0.x), Struct_2(Struct_1(vec2<f32>(-161f, arg_0), vec2<bool>(arg_2, true), vec4<bool>(true, true, true, arg_2), vec4<f32>(-1281f, 198f, arg_0, -1604f)), Struct_1(vec2<f32>(arg_1, arg_1), var_0, vec4<bool>(var_0.x, false, arg_2, true), vec4<f32>(-1000f, 827f, arg_1, -212f)), vec3<i32>(global1.x, u_input.a, 1i)), Struct_4(u_input.d)))), !(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(true, arg_2, var_0.x, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1292f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_1, -1388f, arg_0)))))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-151f, _wgslsmith_f_op_f32(207f + arg_1)))), func_2(-1i, func_2(min(32247i, global1.x), !vec4<bool>(true, true, false, var_0.x), Struct_2(Struct_1(vec2<f32>(arg_0, 106f), var_0, vec4<bool>(true, var_0.x, true, arg_2), vec4<f32>(461f, -833f, arg_0, arg_1)), Struct_1(vec2<f32>(arg_1, -1394f), var_0, vec4<bool>(var_0.x, true, var_0.x, arg_2), vec4<f32>(arg_0, arg_1, arg_0, -2256f)), u_input.b), Struct_4(var_1.a)), Struct_2(Struct_1(vec2<f32>(arg_1, arg_0), var_0, vec4<bool>(false, true, arg_2, false), vec4<f32>(arg_1, arg_0, arg_1, arg_1)), Struct_1(vec2<f32>(-816f, arg_0), vec2<bool>(true, true), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<f32>(arg_0, arg_0, 127f, 1029f)), max(u_input.b, u_input.b)), Struct_4(~var_1.a)).zz, vec4<bool>((u_input.d == u_input.d) & true, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) > _wgslsmith_add_i32(31696i, -2147483647i), arg_2, func_3()), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-479f + arg_1))), 361f, _wgslsmith_f_op_f32(arg_0 - arg_1), arg_1)), countOneBits(-u_input.b));
    var var_4 = Struct_4(24266u);
    return vec2<bool>(true || arg_2, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-248f + -958f), -1000f)))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), !func_1(796f, -249f, true)), vec2<bool>(true, true), true), vec4<bool>(true && any(vec4<bool>(true, true, true, true)), func_3(), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)) == !(83831u <= u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-1783f, -133f, 131f, 996f), all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1801f, 864f, 591f) + vec4<f32>(488f, 1077f, -910f, 639f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-439f, -1752f, -305f, 840f))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, _wgslsmith_div_i32(59860i, u_input.b.x), 0i, global1.x), vec4<i32>(1i, 15924i, ~global1.x, _wgslsmith_mult_i32(global1.x, 1i))), ~(-(vec4<i32>(u_input.a, global1.x, 1i, -22269i) & vec4<i32>(global1.x, global0.x, u_input.b.x, -3571i)))), any(func_2(~(global1.x ^ u_input.b.x), var_0.c, Struct_2(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.c.x, var_0.c.x), var_0.c, var_0.d), Struct_1(vec2<f32>(-321f, var_0.d.x), var_0.b, var_0.c, var_0.d), vec3<i32>(global1.x, global0.x, -52118i)), Struct_4(u_input.d)).wzy), 4294967295u | abs(u_input.d));
    let var_2 = select(vec4<i32>(_wgslsmith_mult_i32(1i, ~global0.x), global1.x ^ (-2147483647i & min(var_1.a, 9554i)), select(abs(u_input.c.x), global0.x, func_3() == true), select(-global0.x, global0.x, (var_0.c.x || true) | true)), vec4<i32>(global0.x, abs(-12184i), ~u_input.a, ~(-(i32(-1i) * -26664i))), !vec4<bool>(var_1.b, func_2(global1.x & 2147483647i, !var_0.c, Struct_2(Struct_1(vec2<f32>(var_0.d.x, 1206f), vec2<bool>(var_0.b.x, var_1.b), vec4<bool>(true, true, false, false), var_0.d), Struct_1(vec2<f32>(var_0.a.x, 1674f), var_0.b, vec4<bool>(false, false, true, var_1.b), var_0.d), vec3<i32>(var_1.a, u_input.b.x, 2147483647i)), Struct_4(1u)).x, false, u_input.c.x > ~var_1.a));
    var_0 = Struct_1(var_0.d.ww, vec2<bool>(var_1.b, true), vec4<bool>(!(1234f == _wgslsmith_div_f32(var_0.a.x, var_0.d.x)), func_1(var_0.d.x, -1071f, !any(vec2<bool>(true, var_1.b))).x, var_1.b | true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(706f, var_0.a.x, var_0.d.x, var_0.d.x) * var_0.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, var_0.a.x, -1175f, -179f))), var_0.d)), var_1.b)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 346f, _wgslsmith_f_op_f32(max(-421f, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.d.x, var_0.d.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 149f, var_0.d.x, var_0.d.x) * var_0.d))))));
    global0 = _wgslsmith_add_vec2_i32(-var_2.wx, abs(abs(min(u_input.c, u_input.c))));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 1u) << (reverseBits(var_1.c) % 32u), 0u), _wgslsmith_mod_u32(u_input.d, max(9240u, u_input.d)), ~_wgslsmith_sub_u32(70395u, 1u)) ^ ~(~vec3<u32>(4294967295u, 4294967295u, var_1.c));
    let var_4 = -reverseBits(var_2);
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(~(u_input.a ^ u_input.a) >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, 50930u), max(var_1.c, u_input.d), 1046u) % 32u), global1.x), select(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, var_1.a), ~vec2<i32>(var_1.a, 36688i)), vec2<i32>(_wgslsmith_mult_i32(-1i, -2147483647i), 2147483647i), !var_1.b) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-global1.yx, max(global1.xx, vec2<i32>(2147483647i, -2147483647i))), -global1.xy & -vec2<i32>(-2147483647i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_sub_vec2_u32(var_3.xz, var_3.zz))));
}

