struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_1(reverseBits(4294967295u));
    var var_1 = Struct_2(select(select(vec2<bool>(arg_0, !arg_2), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_2, arg_2), all(vec3<bool>(arg_2, false, arg_2))), false), vec2<bool>(arg_0, !(!arg_0)), select(!(!vec2<bool>(arg_2, arg_0)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_2, true), true), arg_2)), arg_1, Struct_1(~16929u), Struct_1(_wgslsmith_add_u32(~abs(arg_1.a), 50762u)));
    let var_2 = arg_1.a;
    var var_3 = Struct_3(Struct_1(u_input.a));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(271f)), _wgslsmith_f_op_f32(abs(690f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(1652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-430f)) - _wgslsmith_f_op_f32(sign(385f)))))));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 47222u, 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.a, 48077u, u_input.a), vec3<u32>(u_input.a, arg_1.a.a, u_input.a)), vec3<u32>(1u, 1u, 29135u) & vec3<u32>(1u, u_input.a, arg_1.a.a))), ~vec3<u32>(u_input.a | arg_1.a.a, 1u, arg_1.a.a | u_input.a)), vec3<u32>(firstLeadingBit(func_3(!arg_2, arg_1.a, any(vec3<bool>(arg_2, true, false)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(70776u, 0u, 2174u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.a, 2449u, arg_1.a.a, 97840u), _wgslsmith_clamp_vec4_u32(vec4<u32>(16636u, u_input.a, arg_1.a.a, 62060u), vec4<u32>(81248u, 48266u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 20329u, u_input.a)))), select(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a, u_input.a, arg_1.a.a, arg_1.a.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_1.a.a)), all(vec3<bool>(false, false, arg_2)))));
    return arg_1.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)) + 1272f), Struct_3(Struct_1(~firstLeadingBit(4294967295u))), any(vec2<bool>(true, arg_1 <= arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~max(vec3<u32>(~u_input.a, u_input.a | 0u, 26388u), vec3<u32>(23032u, 41835u, u_input.a) << (countOneBits(vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u))), -573f);
    let var_1 = _wgslsmith_mult_u32(u_input.a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(42719u, u_input.a) << (vec2<u32>(62342u, u_input.a) % vec2<u32>(32u)))));
    var_0 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 27714u, _wgslsmith_dot_vec3_u32(vec3<u32>(34329u, 37348u, 0u), select(vec3<u32>(var_0.a, var_0.a, u_input.a), vec3<u32>(u_input.a, var_0.a, 4294967295u), vec3<bool>(false, false, true))), ~(~0u)), ~(~(vec4<u32>(u_input.a, 97094u, 4294967295u, var_1) << (vec4<u32>(1u, var_1, var_0.a, 0u) % vec4<u32>(32u))))) & select(countOneBits(var_0.a) & var_0.a, abs(~34687u), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_0 = Struct_1(var_1);
    let var_3 = ~(-(29175i | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), max(vec2<i32>(1i, 6999i), vec2<i32>(-1i, -2147483647i)))));
    var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(30056u), _wgslsmith_add_u32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(69591u, u_input.a, 4294967295u) | vec3<u32>(var_0.a, 11217u, var_1), ~vec3<u32>(u_input.a, var_0.a, 23797u)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(80846u, 67288u, 32254u), vec3<u32>(61876u, var_0.a, 74830u))) >> (countOneBits(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_0.a, 38180u)))) % 32u));
    var var_4 = _wgslsmith_f_op_f32(sign(131f));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

