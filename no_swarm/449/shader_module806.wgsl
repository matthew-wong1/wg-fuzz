struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_1(all(vec3<bool>(true, true, 40917u < _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), !vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))), ~(~_wgslsmith_mult_u32(u_input.b.x, 1u) >> (u_input.b.x % 32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1038f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -848f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2269f)), _wgslsmith_f_op_f32(f32(-1f) * -804f)))) * _wgslsmith_f_op_f32(1f * -345f)));
    var var_2 = abs(u_input.d);
    var_0 = Struct_1(var_0.a, !var_0.b, ~0u);
    var_0 = Struct_1(all(var_0.b.zy), var_0.b, _wgslsmith_add_u32(u_input.a, 14917u));
    return _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 0u, u_input.a), u_input.b) << (~4294967295u % 32u), 0u, ~4294967295u, _wgslsmith_clamp_u32(u_input.b.x, u_input.a, abs(~var_0.c))), ~abs(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 13088u ^ u_input.b.x, 0u, var_0.c)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(arg_0, select(vec3<bool>((76927u & u_input.b.x) > 1u, -u_input.e.x <= -2091i, arg_0), select(vec3<bool>(all(vec3<bool>(arg_0, arg_0, true)), false, !arg_0), vec3<bool>(false, true, all(vec4<bool>(arg_0, arg_0, arg_0, true))), any(select(vec2<bool>(false, false), vec2<bool>(arg_0, false), arg_0))), any(vec4<bool>(true, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0, arg_0))), select(_wgslsmith_mod_u32(min(countOneBits(1u), ~0u), ~u_input.a), ~97091u ^ min(1u, ~u_input.b.x), all(!(!vec3<bool>(arg_0, true, false)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(round(-2842f)))), 514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-734f, -1232f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-825f - 757f), _wgslsmith_f_op_f32(1465f - 1036f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = u_input.b;
    var var_3 = true;
    var var_4 = var_0;
    return !(u_input.d.x > (_wgslsmith_sub_i32(u_input.e.x, u_input.d.x) << (~var_0.c % 32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = -466f;
    var var_1 = ~func_2(_wgslsmith_mult_i32(u_input.e.x, 0i), 44459i >> ((u_input.a >> (36720u % 32u)) % 32u));
    var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(47308u, 55462u, 15399u, 0u), vec4<u32>(56045u, 4294967295u, 0u, arg_1.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, u_input.b.x, 0u, var_1.x), vec4<u32>(var_1.x, 1u, 1u, 27040u)), vec4<u32>(countOneBits(1887u), ~4294967295u, 41399u, max(u_input.b.x, 4294967295u))) & vec4<u32>(4294967295u, ~(arg_1.x << (arg_1.x % 32u)) ^ min(_wgslsmith_mod_u32(14130u, arg_1.x), func_2(u_input.e.x, 35180i).x), u_input.b.x, ~(~(~18982u)));
    let var_2 = Struct_1(abs(~_wgslsmith_mod_u32(1u, var_1.x)) > ((u_input.b.x & ~347u) | 32540u), !arg_0, _wgslsmith_sub_u32(1u, ~select(~var_1.x, _wgslsmith_div_u32(arg_1.x, 0u), arg_3)));
    let var_3 = vec4<bool>(arg_3, var_2.b.x, (abs(~arg_1.x) == ~(var_1.x & 17836u)) && func_3(arg_0.x), (547f > _wgslsmith_div_f32(-2118f, _wgslsmith_f_op_f32(-var_0))) || arg_2);
    return Struct_1(!(var_0 == _wgslsmith_f_op_f32(1093f * -1000f)), select(vec3<bool>(all(!arg_0), any(select(vec2<bool>(false, false), var_2.b.zz, arg_0.xy)), arg_3), !(!vec3<bool>(false, var_3.x, true)), !arg_0), 13549u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(!arg_0.b.yz, !arg_2.b.yy, all(!vec4<bool>(false, true, !arg_2.a, func_1(arg_0.b, u_input.b.zz, arg_1, arg_0.a).a)));
    var_0 = select(vec2<bool>(arg_0.a, any(select(!vec4<bool>(arg_0.a, true, arg_0.b.x, arg_1), vec4<bool>(arg_2.a, true, arg_0.a, false), arg_2.b.x))), arg_0.b.yy, ~(~1u) < (~arg_0.c | _wgslsmith_dot_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), vec3<u32>(25198u, arg_0.c, 7452u))));
    var var_1 = arg_0.c;
    let var_2 = ~select(~(~vec4<u32>(1u, 70487u, u_input.a, 0u)), select(~(vec4<u32>(1u, arg_0.c, 32694u, arg_0.c) | vec4<u32>(u_input.b.x, 4294967295u, 0u, 4294967295u)), abs(~vec4<u32>(1u, 3843u, arg_0.c, 4294967295u)), true | (u_input.c.x <= u_input.c.x)), !vec4<bool>(arg_1, select(true, arg_2.b.x, arg_0.b.x), arg_1, true));
    var_1 = arg_2.c;
    return func_1(vec3<bool>(max(-u_input.c.x, max(u_input.c.x, 1i)) < u_input.d.x, ~u_input.c.x >= 15967i, func_3(any(select(vec4<bool>(true, arg_1, arg_0.b.x, false), vec4<bool>(arg_1, arg_2.b.x, true, arg_1), vec4<bool>(arg_2.a, arg_2.a, arg_2.b.x, true))))), ~func_2(u_input.d.x, i32(-1i) * -2147483647i).xx ^ vec2<u32>(42539u, ~(~1u)), !func_3(true), func_1(select(vec3<bool>(all(vec3<bool>(arg_1, false, arg_0.a)), var_0.x, arg_1), !(!vec3<bool>(true, false, var_0.x)), arg_1), abs(vec2<u32>(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c, 1u), var_2.xw))), true, true).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1096f;
    var var_1 = func_4(func_1(!vec3<bool>(true, any(vec3<bool>(false, true, true)), true), min(~u_input.b.yz, vec2<u32>(63399u, u_input.a >> (0u % 32u))), all(vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) + _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-1809f - var_0))) <= 1471f, func_1(vec3<bool>(any(vec2<bool>(true, true)), true, !(-8843i < u_input.e.x)), u_input.b.yy, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(208f, u_input.c.x | (~(-19341i) << ((var_1.c & _wgslsmith_div_u32(u_input.a, var_1.c)) % 32u)), reverseBits(0u));
}

