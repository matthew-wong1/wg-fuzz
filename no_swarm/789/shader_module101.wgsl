struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = ~1u << (0u % 32u);
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(53640u, 39706u, 14885u, 1u)) << (abs(vec4<u32>(73195u, u_input.a.x, 64018u, 1u)) % vec4<u32>(32u)), vec4<u32>(~4128u, u_input.c, min(0u, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 43254u)))) & u_input.a.x, ~_wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 22685u, 1u), ~vec3<u32>(5976u, 3009u, 27200u))));
    var var_1 = ~0u;
    var var_2 = var_0;
    var var_3 = !(!(!vec3<bool>(all(vec3<bool>(false, true, false)), true, true)));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global0 = 4294967295u;
    let var_0 = arg_1;
    let var_1 = ((max(arg_0.b, 1u) <= _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 24825u), vec2<u32>(16038u, arg_0.a) ^ arg_1.yx)) && !(u_input.b >= ~(-28106i))) && true;
    let var_2 = arg_0;
    var var_3 = min(_wgslsmith_mult_i32(u_input.b, -8431i), 13370i);
    return vec4<bool>(var_1, !all(vec3<bool>(true, true, true)) & true, arg_1.x != ((4294967295u & var_0.x) | ~abs(arg_2.a)), true);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    global0 = arg_0;
    global0 = abs(arg_1.x);
    global0 = 14797u;
    var var_0 = !func_4(Struct_1(0u & max(arg_0, arg_2), func_3(_wgslsmith_f_op_f32(ceil(-1587f)))), u_input.a, Struct_1(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0), abs(vec2<u32>(0u, arg_1.x)))), Struct_1(~(arg_1.x ^ 1u), ~arg_0));
    var_0 = func_4(Struct_1(arg_2, abs(1093u) ^ max(arg_2 ^ 4294967295u, ~arg_0)), _wgslsmith_mod_vec3_u32(reverseBits(abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.c), u_input.a))), arg_1), Struct_1(~854u, 4294967295u), Struct_1(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(22264u, 1u), 0u), _wgslsmith_div_u32(~max(arg_1.x, u_input.a.x), u_input.c)));
    return Struct_1(~(~arg_2), arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(max(u_input.b, u_input.b), -u_input.b);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~var_0, var_0), var_0, firstLeadingBit(_wgslsmith_add_i32(-1i >> (arg_1 % 32u), _wgslsmith_mod_i32(u_input.b, 1i)))), ~(vec3<i32>(-1i) * -select(vec3<i32>(u_input.b, var_0, 0i), vec3<i32>(1i, u_input.b, -2147483647i), true)));
    var var_2 = vec3<bool>(false, false && any(vec2<bool>(false, false)), true);
    let var_3 = arg_0;
    global0 = 37799u;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -854f))), abs(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) > (_wgslsmith_mod_u32(~u_input.c, ~arg_1.b) << (~_wgslsmith_mod_u32(38004u, u_input.c) % 32u))));
    let var_1 = Struct_1(~54437u, countOneBits(arg_1.a));
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    global0 = arg_0.a;
    var var_0 = Struct_1(arg_0.b, 4294967295u);
    var var_1 = arg_0;
    var_0 = Struct_1(19848u, 27961u);
    let var_2 = 0i;
    return (func_6(_wgslsmith_f_op_f32(func_5(func_2(var_0.a, vec3<u32>(35217u, 4294967295u, 24336u), arg_0.b, vec3<i32>(0i, -1i, -17463i)), 1u)), Struct_1(~80707u, u_input.c)) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(9302i, u_input.b) & vec2<i32>(u_input.b, arg_1), ~vec2<i32>(u_input.b, 1i))) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(arg_1, -2147483647i)), abs(abs(vec2<i32>(u_input.b, -31899i)))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(25012i, u_input.b, u_input.b);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_f_op_f32(min(-2325f, 1070f))))), -796f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-946f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1366f))))) + -1113f));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35357i, 1i), var_0.xx), u_input.b, 2147483647i), ~vec3<i32>(-1i, u_input.b, 0i) << (vec3<u32>(4294967295u, 23652u, 45606u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(func_1(Struct_1(u_input.a.x, 4294967295u), var_0.x, vec3<bool>(true, true, false)), _wgslsmith_div_i32(0i, 1i)), var_0.x, max(min(u_input.b, -18576i), ~var_0.x))), ~min(vec3<i32>(~(-1i), -2147483647i, u_input.b), -vec3<i32>(2147483647i, 47375i, var_0.x)));
    let var_2 = -(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.b, 0i), max(-1503i, var_0.x)) >> (u_input.a.x % 32u)) & var_0.x;
    var_0 = vec3<i32>(abs(~_wgslsmith_clamp_i32(var_2, var_0.x, -1i)) << (145u % 32u), 1i, 0i);
    global0 = _wgslsmith_add_u32(firstLeadingBit(~4294967295u), select(u_input.a.x, u_input.a.x, false));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, var_1.x))));
    global0 = u_input.a.x;
    var var_4 = func_2(reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.zy, abs(u_input.a.yx & u_input.a.zx))), ~(~vec3<u32>(5096u, 1u, ~16468u)), u_input.a.x, select(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2, -2147483647i, 0i), vec3<i32>(var_2, -1i, var_2))), vec3<i32>(reverseBits(~2147483647i), _wgslsmith_sub_i32(u_input.b >> (u_input.c % 32u), _wgslsmith_div_i32(2147483647i, u_input.b)), func_6(-273f, func_2(4294967295u, u_input.a, u_input.a.x, vec3<i32>(0i, u_input.b, var_2)))), vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), all(func_4(Struct_1(u_input.c, u_input.a.x), vec3<u32>(0u, 4294967295u, u_input.a.x), Struct_1(0u, 384u), Struct_1(u_input.c, u_input.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(-1i | abs(-var_2)), (_wgslsmith_mod_i32(1i, var_0.x) >> (~(~var_4.a) % 32u)) & ~(~(~(-17066i))));
}

