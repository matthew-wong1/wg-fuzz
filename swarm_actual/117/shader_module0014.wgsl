struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = vec3<f32>(-1233f, 1510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(513f * -740f) + arg_0))));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = 31063u;
    let var_3 = Struct_2(false);
    var var_4 = var_3;
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0));
    return Struct_2(select(true, func_3(176f) >= 8465u, any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(select(77777u, u_input.c, true), u_input.e.x)), arg_1.yx);
    var var_1 = vec3<i32>(min(-10833i >> (firstLeadingBit(var_0.x << (4294967295u % 32u)) % 32u), -u_input.b), u_input.d | u_input.d, 2147483647i);
    let var_2 = Struct_1(false, u_input.b, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 395u, 52905u, 1u) ^ vec4<u32>(u_input.a.x, arg_1.x, 1u, arg_1.x), ~(~vec4<u32>(u_input.e.x, 8918u, 1u, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1820f + 810f), -1020f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(229f)))), true)), 1f, -818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1357f, -821f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -914f)))));
    var_1 = select(vec3<i32>(var_2.b, 2147483647i, var_1.x) ^ ((vec3<i32>(-2147483647i, var_2.b, var_2.b) & vec3<i32>(2147483647i, -1i, var_1.x)) << (firstLeadingBit(var_2.c.zxw) % vec3<u32>(32u))), firstLeadingBit(~vec3<i32>(0i, u_input.d, -42312i)), any(!select(vec4<bool>(var_2.a, false, arg_0.a, var_2.a), vec4<bool>(false, arg_0.a, false, arg_0.a), true))) << (_wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 43207u, 1u), vec3<u32>(var_2.c.x, var_0.x, 0u) >> (vec3<u32>(106271u, var_2.c.x, 2042u) % vec3<u32>(32u))), select(min(u_input.e.x, 77966u), ~108546u, true), _wgslsmith_add_u32(var_2.c.x, arg_1.x))) % vec3<u32>(32u));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(func_2(-201f), ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 14550u, 44021u), abs(vec3<u32>(u_input.c, 38996u, u_input.c))), func_3(arg_1) | u_input.e.x));
    var var_1 = var_0;
    var var_2 = true && any(vec4<bool>(!(!arg_0), func_4(func_2(-162f), func_4(Struct_2(var_1.a), vec3<u32>(var_0.c.x, u_input.c, u_input.a.x)).c.zww).a, false, arg_0));
    var var_3 = var_1.d.x;
    let var_4 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1125f)))).a;
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = vec4<i32>(50739i, -(arg_2.b >> (~(~1u) % 32u)), reverseBits(u_input.b) ^ ~26493i, func_4(func_2(-318f), arg_1.xzy).b);
    var_0 = vec4<i32>(var_0.x, var_0.x, func_1(arg_3, -816f, var_0.x).b, 1i);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-532f, -237f, any(!(!vec4<bool>(arg_0.a, arg_3, true, true)))))));
    let var_2 = func_1(all(select(!select(vec3<bool>(true, arg_0.a, arg_2.a), vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_0.a, true)), !vec3<bool>(arg_2.a, arg_0.a, arg_2.a), vec3<bool>(false, arg_0.a, !arg_2.a))), _wgslsmith_f_op_f32(round(-461f)), -2147483647i);
    var_0 = vec4<i32>(var_2.b, var_0.x, arg_2.b, min(~_wgslsmith_sub_i32(-95087i, var_2.b) & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_2.b, u_input.b), vec3<i32>(-1i, var_2.b, -2147483647i)), _wgslsmith_clamp_i32(-23188i, -u_input.d, firstLeadingBit(reverseBits(var_2.b)))));
    return vec2<bool>(arg_0.a, !func_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d.x, 607f) - _wgslsmith_f_op_f32(-var_2.d.x)), u_input.b).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -424f;
    let var_1 = all(select(func_5(Struct_2(false), min(vec4<u32>(15921u, 28822u, u_input.a.x, u_input.c), vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, u_input.c)), func_1(true, var_0, u_input.d), func_2(-2022f).a), vec2<bool>(true, true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)))) | true;
    var var_2 = func_1(!any(select(select(vec2<bool>(true, true), vec2<bool>(var_1, true), var_1), select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), var_1), vec2<bool>(true, var_1))), func_1(true, _wgslsmith_f_op_f32(round(-514f)), 23585i).d.x, 20761i);
    var var_3 = _wgslsmith_div_i32(-var_2.b, i32(-1i) * -17280i);
    let var_4 = Struct_1(true, 15499i, ~vec4<u32>(73291u, func_3(var_2.d.x), select(~1u, 21954u, var_1 & var_1), _wgslsmith_mod_u32(42562u, _wgslsmith_div_u32(49866u, u_input.e.x))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, var_4.b, var_2.c.x);
}

