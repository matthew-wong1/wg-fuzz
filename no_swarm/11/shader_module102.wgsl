struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(-1i), Struct_1(-31532i), 6821i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(13913i), Struct_1(-44640i), 64200i, Struct_1(1i)), Struct_2(Struct_1(-44664i), Struct_1(25148i), 0i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(2147483647i), Struct_1(2147483647i), i32(-2147483648), Struct_1(i32(-2147483648))), Struct_2(Struct_1(0i), Struct_1(i32(-2147483648)), 19913i, Struct_1(1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-14134i), 2147483647i, Struct_1(1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1i), -20653i, Struct_1(2147483647i)), Struct_2(Struct_1(-6258i), Struct_1(2147483647i), 0i, Struct_1(0i)), Struct_2(Struct_1(-16759i), Struct_1(-57993i), 72245i, Struct_1(-1i)), Struct_2(Struct_1(2147483647i), Struct_1(2147483647i), 1i, Struct_1(i32(-2147483648))), Struct_2(Struct_1(32698i), Struct_1(-69956i), -20660i, Struct_1(30674i)), Struct_2(Struct_1(8449i), Struct_1(32915i), 40563i, Struct_1(1i)), Struct_2(Struct_1(-7662i), Struct_1(-1i), -60872i, Struct_1(-651i)), Struct_2(Struct_1(-9130i), Struct_1(i32(-2147483648)), 1i, Struct_1(-49012i)), Struct_2(Struct_1(-1i), Struct_1(22761i), -48209i, Struct_1(-34242i)), Struct_2(Struct_1(-24083i), Struct_1(-11046i), i32(-2147483648), Struct_1(17724i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1806i), -125227i, Struct_1(1i)), Struct_2(Struct_1(-5628i), Struct_1(-35247i), i32(-2147483648), Struct_1(i32(-2147483648))), Struct_2(Struct_1(0i), Struct_1(-29757i), 2147483647i, Struct_1(-1i)), Struct_2(Struct_1(26846i), Struct_1(1i), -8326i, Struct_1(21824i)), Struct_2(Struct_1(2147483647i), Struct_1(40690i), 1i, Struct_1(68460i)), Struct_2(Struct_1(2147483647i), Struct_1(i32(-2147483648)), -31579i, Struct_1(2147483647i)), Struct_2(Struct_1(43225i), Struct_1(1i), -7985i, Struct_1(-18300i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~28724u, 1u, ~(_wgslsmith_mult_u32(u_input.c, 4294967295u) | abs(4294967295u))), vec3<u32>(max(~u_input.a.x, min(~u_input.c, min(u_input.a.x, 1u))), u_input.c, ~reverseBits(0u)));
    let var_1 = countOneBits(~vec3<i32>(max(-1259i, arg_0.a & -38763i), -17610i, _wgslsmith_clamp_i32(abs(arg_0.a), u_input.b, 21038i ^ u_input.b)));
    var var_2 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(58084u, ~(~0u), abs(u_input.a.x) ^ u_input.c) >> (1u % 32u));
    let var_3 = vec2<f32>(238f, 245f);
    var var_4 = any(select(vec2<bool>(true, all(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true)));
    return select(!vec2<bool>(~1u < _wgslsmith_mod_u32(u_input.c, 0u), (arg_0.a > var_1.x) && any(vec3<bool>(false, true, false))), vec2<bool>(!select(true, true, false) && true, any(vec2<bool>(false, true))), vec2<bool>(!select(false, true, u_input.b == 2147483647i), false));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = select(select(!vec2<bool>(u_input.a.x == 52918u, arg_0), !vec2<bool>(all(vec2<bool>(arg_0, arg_0)), select(arg_0, true, arg_0)), func_3(Struct_1(-u_input.b))), vec2<bool>(true, true), vec2<bool>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(559f, 607f)), _wgslsmith_f_op_f32(sign(1000f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1843f) - 1f)));
    let var_1 = ~u_input.a;
    global1 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(34053i, 14896i, 0i, -23939i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(-u_input.b, select(u_input.b, u_input.b, arg_0), 54135i, countOneBits(-1i))), 1i));
}

fn func_1() -> u32 {
    let var_0 = true;
    var var_1 = Struct_2(func_2(false), Struct_1(1i), max(u_input.b, -50126i), Struct_1(u_input.b));
    let var_2 = u_input.a.x;
    let var_3 = var_0;
    let var_4 = vec3<f32>(331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-120f, -202f))))), _wgslsmith_f_op_f32(abs(-536f)));
    return min(firstLeadingBit(var_2), _wgslsmith_sub_u32(var_2, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~func_1(), 4294967295u, _wgslsmith_mod_u32(u_input.a.x, select(_wgslsmith_sub_u32(1u, u_input.c) ^ ~u_input.c, ~u_input.c, func_3(Struct_1(u_input.b)).x)));
    var var_1 = 834f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1414f - -551f) - _wgslsmith_f_op_f32(f32(-1f) * -937f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1214f, 512f) + -1089f))));
    let var_2 = !func_3(Struct_1(~u_input.b << ((var_0.x ^ var_0.x) % 32u))).x;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(4294967295u, ~(~(~17566u))), var_0.x), 4u)];
    var var_4 = func_2(var_2);
    let var_5 = -23306i;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~(~func_1())));
}

