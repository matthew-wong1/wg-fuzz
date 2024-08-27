struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = Struct_1(u_input.a.x & u_input.a.x, vec2<bool>(arg_1.x, any(select(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1.x), vec4<bool>(false, true, false, true), all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))))), -_wgslsmith_mult_i32(~_wgslsmith_div_i32(arg_2.x, 2147483647i), _wgslsmith_mult_i32(~arg_2.x, arg_2.x)), ~(~min(u_input.a.x, 29967u)));
    var_0 = Struct_1(abs(~var_0.a), select(!vec2<bool>(arg_0 > arg_0, false), !(!select(vec2<bool>(true, var_0.b.x), vec2<bool>(arg_1.x, true), true)), vec2<bool>(false, var_0.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.c, select(arg_3, 2147483647i, arg_1.x)), -1i, -var_0.c), -vec3<i32>(1i, 1i, 1i)), 0u);
    return _wgslsmith_add_u32(1u, u_input.a.x & reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.zx & vec2<u32>(u_input.a.x, 4294967295u), abs(vec2<u32>(86438u, u_input.a.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(63274u, u_input.a.x, func_3(-875f, vec2<bool>(false, true), vec2<i32>(2147483647i, -39335i), 29157i))) >> ((43903u << (u_input.a.x % 32u)) % 32u), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))), firstTrailingBit(~_wgslsmith_div_i32(1i, 1i << (1u % 32u))), ~(69765u ^ u_input.a.x));
    let var_2 = Struct_2(Struct_1(min(0u, _wgslsmith_add_u32(5958u, 1u) & abs(u_input.a.x)), vec2<bool>(var_1.b.x, (32434u <= var_1.d) && var_1.b.x), -9915i, ~_wgslsmith_dot_vec2_u32(select(u_input.a.zz, u_input.a.zz, var_1.b), vec2<u32>(u_input.a.x, u_input.a.x))));
    var_1 = Struct_1(var_1.d, !var_2.a.b, abs(-26497i << (_wgslsmith_mod_u32(~79872u, _wgslsmith_clamp_u32(var_1.a, 6870u, 11915u)) % 32u)), _wgslsmith_mod_u32(1u, var_1.a) << (_wgslsmith_sub_u32(4294967295u, 1u) % 32u));
    var var_3 = Struct_2(var_2.a);
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-125f * arg_1.x) * arg_1.x))) * -1236f) - -893f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, -1009f)))) + arg_1.x);
    let var_1 = 1u;
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(arg_0.a.c, arg_0.a.c), -293i);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(~abs(~(~arg_2.x)), vec2<bool>(true, false), -(~1i), ~reverseBits(arg_2.x & (4294967295u | arg_2.x)));
    var var_1 = Struct_2(var_0);
    let var_2 = func_4(Struct_2(func_2()), vec4<f32>(764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(581f - arg_0)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)))));
    var_1 = var_2;
    let var_3 = var_2;
    return func_4(func_4(Struct_2(var_3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1288f, arg_0)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(max(arg_0, 969f)), _wgslsmith_f_op_f32(arg_0 - 658f), -679f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, -226f), !var_1.a.b.x)), arg_0, 1510f, _wgslsmith_f_op_f32(-arg_0)))).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-622f + -330f), -1301f))) + _wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1335f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-213f + 417f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(837f, 1000f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -874f), -640f))), any(vec4<bool>(true, true, true, true)) & true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(362f, -856f)), -1421f)))), -1000f);
    let var_1 = func_2();
    var var_2 = select(select(select(!vec4<bool>(arg_1.a.b.x, true, true, arg_0.b.x), vec4<bool>(var_1.b.x && var_1.b.x, var_1.b.x | var_1.b.x, arg_0.b.x, true), !select(vec4<bool>(arg_1.a.b.x, arg_0.b.x, true, false), vec4<bool>(true, false, var_1.b.x, arg_1.a.b.x), false)), vec4<bool>(_wgslsmith_sub_i32(var_1.c, var_1.c) > 13972i, all(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, var_1.b.x, var_1.b.x, arg_1.a.b.x))), select(vec4<bool>(!var_1.b.x, !arg_0.b.x, arg_1.a.b.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, arg_1.a.b.x), vec4<bool>(true, false, arg_0.b.x, true)), !vec4<bool>(true, var_1.b.x, false, arg_1.a.b.x))), vec4<bool>(func_4(Struct_2(func_4(Struct_2(arg_1.a), vec4<f32>(-583f, var_0.x, -674f, 1919f)).a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-324f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x))), vec4<f32>(var_0.x, var_0.x, -229f, 1384f))).a.b.x, true | func_2().b.x, false, arg_0.b.x), !select(select(select(vec4<bool>(false, var_1.b.x, arg_0.b.x, var_1.b.x), vec4<bool>(true, false, true, true), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x)), select(vec4<bool>(arg_1.a.b.x, var_1.b.x, var_1.b.x, false), vec4<bool>(false, false, true, false), var_1.b.x), arg_0.b.x), vec4<bool>(all(vec4<bool>(true, false, false, arg_0.b.x)), func_1(var_0.x, false, u_input.a).b.x, !arg_1.a.b.x, true), true));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-44351i ^ arg_1.a.c), -var_1.c, 1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(~var_1.c, arg_0.c), i32(-1i) * -3018i)), countOneBits(vec4<i32>(0i, func_1(_wgslsmith_div_f32(-584f, 1728f), true, ~vec3<u32>(1u, 0u, 11720u)).c, 2147483647i, _wgslsmith_sub_i32(-arg_1.a.c, _wgslsmith_add_i32(-2147483647i, arg_0.c)))));
    var var_4 = Struct_1(u_input.a.x, vec2<bool>(true, true), -(i32(-1i) * -1i), abs(func_2().a));
    return func_4(arg_1, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f), 1000f), -906f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f * 703f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(-1129f, true, ~(~(~vec3<u32>(20276u, 0u, 1u)))), Struct_2(Struct_1(func_4(Struct_2(Struct_1(5983u, vec2<bool>(false, false), -1i, 4294967295u)), vec4<f32>(-1821f, 1000f, 1376f, 1573f)).a.d, !func_4(Struct_2(Struct_1(u_input.a.x, vec2<bool>(false, false), -2147483647i, 4294967295u)), vec4<f32>(-523f, -1219f, -103f, 289f)).a.b, -27427i, u_input.a.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(-1726f, -1000f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f - 163f) + 2094f))), -669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1914f, 1577f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1461f - -475f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2175f, -1423f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1328f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.a.c, 39203i, var_0.a.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<i32>(31240i, var_0.a.c, var_0.a.c, 0i)))));
}

