struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = firstTrailingBit(reverseBits(~(~45631u) & _wgslsmith_add_u32(u_input.a.x, arg_0 >> (arg_0 % 32u))));
    var_0 = _wgslsmith_dot_vec4_u32(~select(~u_input.a & u_input.a, vec4<u32>(arg_0, 4311u, 1u, 4294967295u), vec4<bool>(38697u < arg_0, true, any(vec2<bool>(false, true)), true)), vec4<u32>(~(49619u ^ (u_input.a.x ^ 0u)), arg_0, max(u_input.a.x, ~(arg_0 & u_input.a.x)), ~(~arg_0) >> (1u % 32u)));
    return false;
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = vec4<bool>(arg_0, all(!(!select(vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(false, true, arg_0, arg_0)))), arg_0, false);
    var_0 = vec4<bool>(all(!vec4<bool>(true, all(var_0.xxx), true, any(vec4<bool>(false, true, var_0.x, false)))), arg_0, func_3(23830u) & (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), min(u_input.a.x, 21939u)) == _wgslsmith_add_u32(firstTrailingBit(22312u), 1u)), arg_0);
    var_0 = select(vec4<bool>(false, !func_3(select(u_input.a.x, u_input.a.x, arg_0)), _wgslsmith_clamp_u32(~2841u, 1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) < select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 46946u, u_input.a.x, 0u)), ~4294967295u, true), !(u_input.a.x != u_input.a.x)), vec4<bool>(false, arg_0, var_0.x, !var_0.x), vec4<bool>(false, true, func_3(1u), false));
    var_0 = select(select(vec4<bool>(true, true, var_0.x, any(vec2<bool>(var_0.x, var_0.x))), select(!select(vec4<bool>(arg_0, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, arg_0, arg_0), vec4<bool>(true, arg_0, true, var_0.x)), vec4<bool>(true, true, true, true), abs(u_input.a.x) <= (0u & u_input.a.x)), select(vec4<bool>(!arg_0, any(vec2<bool>(true, arg_0)), all(var_0.zx), true), !(!vec4<bool>(var_0.x, var_0.x, arg_0, arg_0)), true)), !(!(!select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, arg_0, arg_0, true), false))), true);
    var_0 = select(!(!vec4<bool>(select(arg_0, arg_0, arg_0), true, true, true)), !vec4<bool>(any(vec4<bool>(false, var_0.x, true, false)), arg_0, func_3(u_input.a.x ^ u_input.a.x), var_0.x), !select(select(!vec4<bool>(arg_0, true, true, true), !vec4<bool>(true, arg_0, arg_0, false), select(vec4<bool>(var_0.x, arg_0, false, var_0.x), vec4<bool>(arg_0, true, true, true), vec4<bool>(true, false, arg_0, var_0.x))), select(vec4<bool>(var_0.x, var_0.x, arg_0, var_0.x), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(true, false, true, false)), true), arg_0));
    return -1298f;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = 117f;
    var_1 = _wgslsmith_f_op_f32(arg_2.c - arg_2.c);
    let var_2 = arg_2;
    let var_3 = vec2<f32>(var_2.c, _wgslsmith_f_op_f32(abs(-1654f)));
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(0u, _wgslsmith_div_vec3_u32(~vec3<u32>(reverseBits(u_input.a.x), ~u_input.a.x, countOneBits(66564u)), firstTrailingBit(u_input.a.zxz)), Struct_1(vec2<bool>(true, true), -(reverseBits(u_input.e) ^ (i32(-1i) * -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false, _wgslsmith_div_i32(-2147483647i, -33317i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1226f + -221f), -358f))), 44050u));
    var var_1 = ~(~u_input.d.yx);
    var_0 = func_4(71306u, vec3<u32>(~(~var_0.d), var_0.d, 10977u), Struct_1(vec2<bool>(true, true), 0i, -707f, var_0.d ^ _wgslsmith_mod_u32(12689u, u_input.a.x)));
    var_0 = func_4(u_input.a.x, (u_input.a.wzz | min(u_input.a.xwz, firstTrailingBit(u_input.a.yxz))) ^ ~(vec3<u32>(1u, 4491u, 4294967295u) ^ ~u_input.a.wxz), Struct_1(!var_0.a, 1142i, 1f, ~57757u));
    var_0 = Struct_1(!select(var_0.a, vec2<bool>(true, var_0.c <= var_0.c), var_0.a), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c)), 232f), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, var_0.d, u_input.a.x, var_0.d)), ~(~u_input.a) ^ ~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) >> (u_input.a % vec4<u32>(32u)))));
    return Struct_1(vec2<bool>(false, true), 1i, 832f, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_add_i32(-u_input.d.x, reverseBits(abs(~u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(105f)))) - -2370f), u_input.a.x ^ u_input.a.x);
    var var_1 = ~4294967295u;
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((var_2.d << (1u % 32u)) >> (4294967295u % 32u)));
}

