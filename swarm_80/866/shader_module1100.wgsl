struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-977f, 945f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1291f, -1500f), vec2<f32>(1000f, 2015f), false))))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(abs(~u_input.a.x)), u_input.b, abs(_wgslsmith_sub_i32(u_input.b, -17962i) ^ _wgslsmith_add_i32(0i, -33205i))), ~(u_input.a ^ select(-vec3<i32>(u_input.c, -35294i, -3989i), select(vec3<i32>(0i, u_input.b, 7364i), vec3<i32>(-10955i, -1i, u_input.c), false), true)));
    var var_2 = max(abs((~4294967295u >> (select(30734u, 4294967295u, true) % 32u)) ^ ~_wgslsmith_add_u32(50315u, 88348u)), 1u);
    var_2 = 1u;
    var_2 = countOneBits(1u);
    return -2454f < _wgslsmith_div_f32(-742f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1541f), 496f), arg_1.a.x));
    var_0 = Struct_1(var_0.a);
    var var_1 = !select(vec3<bool>((-3855i & u_input.a.x) == ~u_input.b, all(select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), true)), !(!arg_2.x)), vec3<bool>(!arg_2.x, func_3(), arg_2.x), true);
    let var_2 = Struct_1(vec2<f32>(-573f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(ceil(-232f)))))));
    var var_3 = all(vec2<bool>(true, var_1.x));
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = vec3<u32>(arg_0, ~arg_0, ~_wgslsmith_sub_u32(4294967295u, 1u));
    var_0 = ~vec3<u32>(var_0.x, ~_wgslsmith_div_u32(1u, 41616u), countOneBits(var_0.x));
    var_0 = ~(~countOneBits(vec3<u32>(~137264u, 1u, 1u)));
    var var_1 = arg_1.a;
    var var_2 = vec3<bool>(false, true, !(!select(true, var_1.x <= 155f, true)));
    return -778f;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(41236u, Struct_1(vec2<f32>(-1989f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)))), func_2(~23846u, arg_0, vec2<bool>(true, any(vec2<bool>(true, true))))));
    let var_1 = Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(max(var_0, 505f))));
    let var_2 = func_2(reverseBits(reverseBits(4294967295u)), var_1, !vec2<bool>(var_0 >= _wgslsmith_f_op_f32(exp2(var_1.a.x)), !all(vec4<bool>(false, false, false, false))));
    var var_3 = select(select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), vec3<bool>(false, _wgslsmith_clamp_i32(-8909i, u_input.b, u_input.b) != u_input.b, min(64684u, 4294967295u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10478u), vec2<u32>(4294967295u, 53794u))), true), select(vec3<bool>(all(vec3<bool>(true, false, false)) || (-604f <= arg_0.a.x), true, 1i == firstLeadingBit(u_input.a.x)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), false), all(vec2<bool>(true, false)))), true | !func_3());
    var var_4 = arg_0;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(1u, 1u, 0u, 78401u), vec4<u32>(54702u, 4088u, 4294967295u, 70790u))) & _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(0u, 1u, 4294967295u, 114416u)), vec4<u32>(1u, 70980u, 1u, 35640u) | select(vec4<u32>(105593u, 1654u, 34549u, 2992u), vec4<u32>(39082u, 3150u, 1u, 7376u), true)), ~select(~vec4<u32>(3545u, 9983u, 44640u, 75498u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, false, false, true)));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-137f, 1940f)))))));
    var var_2 = 2453f;
    var var_3 = func_1(var_1);
    var var_4 = var_0.x;
    var var_5 = -max(2147483647i, _wgslsmith_mod_i32(firstTrailingBit(-1i), firstTrailingBit(-19816i)));
    var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-196f - -1196f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)) - vec2<f32>(var_3.a.x, func_1(Struct_1(vec2<f32>(var_3.a.x, 1087f))).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_1.a)))))) * func_1(func_2(1u, var_1, vec2<bool>(true, true))).a));
}

