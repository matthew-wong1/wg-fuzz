struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = 4294967295u;
    let var_1 = select(select(!select(select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, true)), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, true)), vec3<bool>(true, arg_0.x, all(vec2<bool>(arg_0.x, false))), any(select(vec4<bool>(true, arg_0.x, true, true), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true))), !select(select(!vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x)), !(!vec3<bool>(arg_0.x, false, arg_0.x)), false), select(!vec3<bool>(!arg_0.x, all(vec4<bool>(false, false, arg_0.x, true)), arg_0.x), vec3<bool>(arg_0.x, true, true), false));
    let var_2 = vec3<u32>(var_0, var_0, 1u);
    var var_3 = _wgslsmith_div_u32(4294967295u, 18575u);
    var_3 = _wgslsmith_mod_u32(12007u, ~_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(var_2.x, 0u, u_input.a.x ^ 28199u)));
    return all(arg_0);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(arg_0.c * -563f))) * _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_div_f32(arg_0.c, 440f));
    var var_1 = Struct_1(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.c.x), _wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(8528u, 1u)), ~u_input.a.yx) | abs(~vec2<u32>(u_input.b, 27152u))), vec4<i32>(arg_0.b.x, u_input.e, _wgslsmith_sub_i32(arg_0.b.x, u_input.e), _wgslsmith_div_i32(~_wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x), _wgslsmith_clamp_i32(abs(u_input.e), arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(-arg_0.c), !vec3<bool>(!(!arg_0.d.x), !(15696u > arg_0.a.x), func_3(vec2<bool>(false, arg_0.d.x))));
    var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(194f, arg_0.c)))), var_1.c), var_1.c));
    var var_2 = (vec3<i32>(-2392i, max(-arg_0.b.x, ~var_1.b.x), i32(-1i) * -1i) & countOneBits(min(vec3<i32>(arg_0.b.x, -2147483647i, 2147483647i), vec3<i32>(var_1.b.x, arg_0.b.x, -1i)))) ^ _wgslsmith_add_vec3_i32(firstTrailingBit(-reverseBits(arg_0.b.ywx)), vec3<i32>(~_wgslsmith_mult_i32(u_input.e, u_input.e), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.e, u_input.e), 2147483647i), var_1.b.x));
    return !(!(!(!select(vec4<bool>(true, true, arg_0.d.x, true), vec4<bool>(false, true, false, var_1.d.x), var_1.d.x))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_0.a.x, 4294967295u), _wgslsmith_mod_u32(arg_0.a.x, 1u));
    var var_1 = func_2(Struct_1(var_0, -_wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(1i, -11656i, 2147483647i, u_input.d)), -2523f, !vec3<bool>(false, false, arg_0.d.x)), any(vec3<bool>(all(vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x)), arg_0.d.x, true)));
    var_1 = vec4<bool>(true, true, _wgslsmith_mult_i32(~(-2147483647i | u_input.e), arg_0.b.x) < arg_0.b.x, true);
    var var_2 = Struct_1(~(~arg_0.a), -(~(_wgslsmith_mod_vec4_i32(vec4<i32>(2041i, arg_0.b.x, arg_0.b.x, u_input.e), vec4<i32>(1i, 23152i, arg_0.b.x, arg_0.b.x)) << (vec4<u32>(2602u, arg_2.x, 16376u, arg_1) % vec4<u32>(32u)))), arg_0.c, vec3<bool>(var_1.x, true, func_3(vec2<bool>(false, all(var_1.yzy)))));
    var var_3 = all(!(!var_1.wzw));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec4<i32> {
    return ~min(vec4<i32>(-1i, ~u_input.d, ~select(u_input.d, arg_1.b.x, arg_3), arg_1.b.x), _wgslsmith_add_vec4_i32(-(vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 23336i) & vec4<i32>(arg_1.b.x, arg_1.b.x, u_input.d, 2147483647i)), countOneBits(arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c.zx, func_4(any(vec3<bool>(false, false, true)) || (10741u < u_input.c.x), func_1(Struct_1(u_input.c.wx, vec4<i32>(-1i, 37438i, -75088i, u_input.e), -1963f, vec3<bool>(false, true, false)), 83156u, _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), true, false) ^ -(~(-vec4<i32>(2147483647i, u_input.d, 3807i, u_input.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(410f * 531f), 293f)))))), select(select(!func_1(Struct_1(vec2<u32>(u_input.a.x, 0u), vec4<i32>(u_input.e, -30575i, u_input.e, u_input.e), -893f, vec3<bool>(true, false, false)), 24146u, vec4<u32>(4294967295u, 0u, u_input.b, 0u)).d, func_2(Struct_1(u_input.a.yy, vec4<i32>(u_input.d, u_input.e, u_input.e, u_input.e), 687f, vec3<bool>(false, true, true)), false).ywy, func_2(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec4<i32>(u_input.d, u_input.d, u_input.d, -12152i), 108f, vec3<bool>(false, true, false)), true).x), vec3<bool>(all(vec4<bool>(false, false, false, true)), true, all(vec2<bool>(true, true))), !(true | func_3(vec2<bool>(false, true)))));
    var var_1 = 0u == var_0.a.x;
    let var_2 = var_0.b.zwx;
    var var_3 = Struct_1(abs(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(41488u, 112207u), var_0.a))), _wgslsmith_sub_vec4_i32(~vec4<i32>(68204i, _wgslsmith_mod_i32(4704i, 5601i), _wgslsmith_clamp_i32(34308i, u_input.d, -35109i), var_0.b.x), (var_0.b | (var_0.b ^ vec4<i32>(-2147483647i, var_0.b.x, 1i, var_0.b.x))) | _wgslsmith_div_vec4_i32(var_0.b << (u_input.c % vec4<u32>(32u)), ~vec4<i32>(var_0.b.x, var_0.b.x, var_2.x, 0i))), _wgslsmith_f_op_f32(abs(394f)), !func_2(func_1(func_1(Struct_1(u_input.a.zx, var_0.b, -1031f, vec3<bool>(false, var_0.d.x, var_0.d.x)), u_input.b, vec4<u32>(0u, 4294967295u, var_0.a.x, 77370u)), var_0.a.x, u_input.c), true).zwy);
    var_1 = var_0.d.x;
    var var_4 = _wgslsmith_f_op_f32(-var_3.c);
    let var_5 = var_0;
    var var_6 = 2521i;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c);
}

