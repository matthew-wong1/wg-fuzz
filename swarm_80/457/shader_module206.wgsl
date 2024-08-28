struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>) -> bool {
    var var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(80646u, _wgslsmith_mult_u32(4294967295u, arg_0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(arg_0.b, arg_0.b)), _wgslsmith_sub_u32(arg_0.c, arg_0.b)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.b, arg_0.b), vec4<u32>(32462u, 15852u, arg_0.b, arg_0.b)), max(vec4<u32>(arg_0.c, arg_0.b, 33033u, arg_0.c) | vec4<u32>(32107u, arg_0.b, 31484u, arg_0.c), min(vec4<u32>(44013u, arg_0.b, arg_0.b, 14775u), vec4<u32>(4294967295u, 1u, arg_0.b, 57361u)))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 1u, arg_0.c), vec4<u32>(1u, arg_0.c, arg_0.c, 35141u) ^ vec4<u32>(arg_0.b, 0u, 30633u, arg_0.c))), arg_0.a) << ((select(reverseBits(~vec4<u32>(4294967295u, 4294967295u, 1u, 65936u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 22467u, arg_0.c, 29887u) | vec4<u32>(41753u, 22588u, arg_0.c, arg_0.b), vec4<u32>(arg_0.b, 28336u, 20572u, 47771u)), !select(vec4<bool>(arg_0.a, arg_1.x, false, false), vec4<bool>(arg_1.x, false, false, false), true)) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.b, 12478u, arg_0.c), vec4<u32>(4294967295u, arg_0.c, 4294967295u, arg_0.b)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(36350u, arg_0.c, arg_0.c, arg_0.c), vec4<u32>(arg_0.b, 7174u, arg_0.b, 13704u)) % vec4<u32>(32u)), vec4<u32>(abs(0u), ~35464u, _wgslsmith_mult_u32(arg_0.c, arg_0.b), ~20218u), select(vec4<u32>(29404u, 19517u, arg_0.b, 27420u), vec4<u32>(38236u, arg_0.c, 24733u, 13101u) & vec4<u32>(30358u, arg_0.b, 0u, 79234u), all(arg_1)))) % vec4<u32>(32u));
    var var_1 = reverseBits(arg_0.d.c.x);
    let var_2 = Struct_4(Struct_1(any(select(!arg_1, select(vec2<bool>(true, arg_0.d.a.a), arg_1, arg_1), arg_1))), Struct_1(arg_1.x || ((35897u >= var_0.x) & all(vec4<bool>(arg_0.a, false, arg_1.x, arg_0.a)))), -11356i);
    var var_3 = select(true, !(!(!arg_1.x) == false), var_2.a.a);
    var_1 = u_input.a.x;
    return !any(vec4<bool>((var_2.a.a && false) | true, arg_0.d.a.a, !any(vec4<bool>(arg_0.d.b.a, var_2.a.a, false, false)), !arg_1.x));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_5(true, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(34459u, 2242u, 1u), ~vec3<u32>(1u, 17144u, 1u)), abs(~84253u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26427u), vec2<u32>(4294967295u, 32035u)), 0u >> (0u % 32u))), firstLeadingBit(select(vec3<u32>(1u, 1902u, 4294967295u), vec3<u32>(6538u, 57127u, 4294967295u), vec3<bool>(false, false, false)) ^ vec3<u32>(1u, 1u, 1u))), ~2050u, Struct_3(Struct_1(!func_3(Struct_5(true, 67704u, 0u, Struct_3(Struct_1(false), Struct_1(false), u_input.a.yx)), vec2<bool>(true, true))), Struct_1(countOneBits(-34970i) == (u_input.a.x | arg_0)), _wgslsmith_sub_vec2_i32(u_input.a.zw, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-15811i, 2147483647i) ^ u_input.a.wy))));
    let var_1 = !vec3<bool>(true, var_0.d.b.a, false);
    var_0 = Struct_5(false, min(~abs(firstTrailingBit(0u)), var_0.c), var_0.c, Struct_3(Struct_1(true), Struct_1(false), select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, 34035i), vec2<i32>(1i, arg_0)) << (~vec2<u32>(var_0.c, 15690u) % vec2<u32>(32u)), ~abs(var_0.d.c), all(select(vec3<bool>(false, var_0.a, var_0.a), var_1, var_1)))));
    let var_2 = vec4<u32>(~(~(~var_0.b & var_0.c)), var_0.c, var_0.b, var_0.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(453f, -1187f)) - _wgslsmith_f_op_f32(trunc(1093f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -458f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(155f - 343f), -1178f, all(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1529f, -492f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(-355f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -847f), _wgslsmith_f_op_f32(f32(-1f) * -1005f)))), _wgslsmith_f_op_f32(sign(-973f)), _wgslsmith_f_op_f32(step(539f, 1572f)), 652f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1743f, -877f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1451f, -1000f))), 450f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1939f - 1621f), -1000f, _wgslsmith_f_op_f32(-483f * 421f), _wgslsmith_f_op_f32(-1922f - 1078f)), vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x)), _wgslsmith_f_op_f32(405f - -1341f), _wgslsmith_f_op_f32(func_2(u_input.a.x)), 852f), vec4<bool>(true, true, true, true))), vec4<bool>(max(u_input.a.x, -3791i) <= u_input.b, all(vec3<bool>(false, false, true)), true, true | func_3(Struct_5(true, 1u, 22945u, Struct_3(Struct_1(true), Struct_1(true), vec2<i32>(u_input.a.x, u_input.b))), vec2<bool>(false, true))))));
    let var_1 = Struct_4(Struct_1(func_3(Struct_5(all(vec2<bool>(false, true)), _wgslsmith_add_u32(48071u, 57952u), 1u, Struct_3(Struct_1(false), Struct_1(true), u_input.a.zz)), vec2<bool>(true, true))), Struct_1(true), 4655i);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_2(12739i)), -593f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-948f, _wgslsmith_f_op_f32(select(-368f, -331f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f))))));
    let var_3 = ~(vec2<u32>(4294967295u, ~(~31840u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    return any(!select(vec2<bool>(var_1.a.a, var_1.b.a), select(vec2<bool>(true, true), vec2<bool>(false, false), false), all(vec2<bool>(var_1.b.a, true)))) & (_wgslsmith_f_op_f32(select(var_2.x, var_2.x, select(true | var_1.a.a, true, var_1.a.a || true))) >= var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i);
    var var_1 = func_1();
    var var_2 = Struct_3(Struct_1(false), Struct_1(true), max(vec2<i32>(max(~u_input.a.x, abs(0i)), u_input.b), u_input.a.xz));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(~(min(0i, var_2.c.x) | 1i), ~(var_2.c.x | u_input.a.x) | u_input.a.x, firstLeadingBit(min(abs(2147483647i), var_2.c.x >> (4294967295u % 32u)))), u_input.a.xxx);
    var_0 = _wgslsmith_sub_i32(-var_2.c.x, ~(~(i32(-1i) * -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, select(-1i, _wgslsmith_div_i32(var_2.c.x, 2147483647i), true)), _wgslsmith_sub_i32(15037i, countOneBits(abs(-23600i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1076f, 809f, -729f, -717f), vec4<f32>(-1682f, -201f, 2912f, -742f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(177f, 1220f, 956f, -188f), vec4<f32>(-528f, -1776f, -1251f, -936f), true))))));
}

