struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = 0u;
    return select(all(vec4<bool>(all(vec3<bool>(false, false, true)) || true, true & (u_input.c.x >= -2147483647i), true, all(select(global1[_wgslsmith_index_u32(var_0, 4u)], global1[_wgslsmith_index_u32(6692u, 4u)], true)))), any(vec2<bool>(all(select(global1[_wgslsmith_index_u32(1u, 4u)], vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(f32(-1f) * -1376f) != _wgslsmith_f_op_f32(sign(-680f)))), true);
}

fn func_2(arg_0: f32) -> i32 {
    global0 = ~(~(~abs(u_input.a.x >> (83640u % 32u))));
    var var_0 = func_3() || false;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1901f), _wgslsmith_f_op_f32(arg_0 + 1600f), _wgslsmith_f_op_f32(min(1000f, 1595f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1457f, arg_0, arg_0), vec3<f32>(arg_0, 1000f, arg_0))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 1000f, -969f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 880f, -237f), vec3<f32>(arg_0, 497f, -369f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 + -1081f)))))));
    var_0 = all(select(select(vec4<bool>(true, all(vec2<bool>(true, false)), true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), true), true));
    let var_2 = Struct_1(~_wgslsmith_sub_u32(48660u, u_input.a.x), ~(min(max(-50972i, u_input.b), 24553i) << (1u % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.c.x, u_input.b), ~vec3<i32>(41293i, -42223i, 2340i)), max(-22719i, -2147483647i), 38911i, -(-1951i | u_input.b)), vec4<i32>(~(~u_input.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-7658i, u_input.b), u_input.c), vec2<i32>(u_input.b, -1i)), u_input.c.x, _wgslsmith_div_i32(~u_input.c.x, abs(u_input.c.x))), select(-(vec4<i32>(u_input.c.x, 2652i, u_input.b, u_input.c.x) | vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x)), reverseBits(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -27029i)), true)), u_input.a.yz);
    return ~(-1i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = !(false || !all(vec4<bool>(true, false, false, true))) | false;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(trunc(-615f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_div_f32(arg_1, arg_1))));
    let var_2 = Struct_4(Struct_3(u_input.a.yy, ~vec2<u32>(arg_2.x, 13820u) << (arg_2.zy % vec2<u32>(32u))), vec3<bool>(!(!all(vec2<bool>(var_0, var_0))), func_3(), true));
    return Struct_2(true, abs(~vec4<i32>(u_input.c.x, u_input.b, arg_0, -5995i) ^ vec4<i32>(20211i, 1i, min(arg_0, 0i), -arg_0)), vec2<i32>(-12142i, -72401i), Struct_1(abs(u_input.a.x), 8887i, -vec4<i32>(_wgslsmith_div_i32(u_input.c.x, arg_0), 1i, firstTrailingBit(-7515i), min(arg_0, 2147483647i)), ~vec2<u32>(16276u ^ var_2.a.b.x, u_input.a.x)));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> Struct_4 {
    let var_0 = func_4(func_2(382f), -630f, u_input.a);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(abs(473f))), arg_2.x, 1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1875f))) + arg_2.x));
    var var_2 = var_0.d;
    var var_3 = 1i;
    var var_4 = select(select(vec4<bool>(var_0.a, true, true, all(arg_0.b) || true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, !var_0.a, arg_0.b.x, arg_0.b.x), !vec4<bool>(true, var_0.a, var_0.a, true), !(-1000f == var_1.x))), !select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(true, !arg_0.b.x, var_0.a, false), vec4<bool>(true, any(vec3<bool>(arg_0.b.x, true, var_0.a)), true, !var_0.a)), select(vec4<bool>(!var_0.a, all(vec3<bool>(true, var_0.a, var_0.a)), !(!arg_0.b.x), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, arg_0.b.x, false, arg_0.b.x)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_0.a, false), !vec4<bool>(var_0.a, arg_0.b.x, false, var_0.a)), true), !(!(false | var_0.a))));
    return Struct_4(arg_0.a, !vec3<bool>(arg_0.b.x, var_4.x, any(!vec4<bool>(false, true, true, var_0.a))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    var var_0 = vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(u_input.b, ~select(-arg_0, arg_0, !arg_2.b.x)), -abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, arg_0, -89821i, u_input.c.x), vec4<i32>(arg_0, arg_0, arg_0, 14906i) ^ vec4<i32>(-1i, -34087i, 10065i, 0i))), 0i ^ _wgslsmith_mod_i32(func_2(-2166f), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(arg_0, -15724i))));
    var var_1 = func_4(firstTrailingBit(~var_0.x), -570f, vec3<u32>(4294967295u, 30200u, 4294967295u));
    var_1 = func_4(_wgslsmith_div_i32(_wgslsmith_div_i32((u_input.b | 2147483647i) | var_0.x, _wgslsmith_div_i32(arg_0, -23552i) << (_wgslsmith_clamp_u32(1u, arg_2.a.b.x, 1u) % 32u)), var_0.x), -705f, vec3<u32>(4294967295u, ~(arg_2.a.a.x ^ abs(u_input.a.x)), ~_wgslsmith_mod_u32(111956u, ~arg_2.a.b.x)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-2112f + _wgslsmith_f_op_f32(f32(-1f) * -672f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1046f, _wgslsmith_div_f32(281f, 503f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(575f + _wgslsmith_f_op_f32(f32(-1f) * -1763f)), true)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1111f)), _wgslsmith_f_op_f32(ceil(1209f)))), _wgslsmith_f_op_f32(-799f + _wgslsmith_f_op_f32(min(-983f, -201f)))))), _wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -502f)))));
    global0 = ~u_input.a.x;
    global1 = array<vec3<bool>, 4>();
    global0 = u_input.a.x;
    let var_1 = any(vec2<bool>(func_5(~2147483647i, true, func_1(Struct_4(Struct_3(vec2<u32>(34102u, 1u), vec2<u32>(u_input.a.x, 51396u)), vec3<bool>(true, false, false)), var_0.x, vec2<f32>(355f, var_0.x), u_input.a.x), vec2<bool>(true, true)) | (all(vec4<bool>(true, true, false, true)) && true), true));
    let var_2 = true;
    let var_3 = any(!select(select(!vec2<bool>(var_1, false), vec2<bool>(true, true), vec2<bool>(var_2, true)), func_1(func_1(Struct_4(Struct_3(u_input.a.zx, vec2<u32>(4294967295u, u_input.a.x)), vec3<bool>(false, true, false)), var_0.x, vec2<f32>(519f, var_0.x), u_input.a.x), -334f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1411f, var_0.x)), u_input.a.x).b.yz, vec2<bool>(var_2 || true, all(global1[_wgslsmith_index_u32(1u, 4u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, ~u_input.a.x, 1u), countOneBits(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, ~0u)) | vec4<u32>(0u, ~u_input.a.x, u_input.a.x, abs(u_input.a.x | u_input.a.x)), 4294967295u, vec3<f32>(-342f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(f32(-1f) * -280f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)));
}

