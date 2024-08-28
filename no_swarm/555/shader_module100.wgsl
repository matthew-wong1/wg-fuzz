struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.a.c;
    return 1u;
}

fn func_2() -> vec4<u32> {
    return vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 7638u, u_input.a.x) & (vec3<u32>(0u, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), select(vec3<u32>(62220u, 0u, 0u), firstLeadingBit(vec3<u32>(47252u, 51737u, 1u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), 1u), _wgslsmith_clamp_u32(1u, u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(105665u, 1u, u_input.a.x)), ~vec3<u32>(u_input.a.x, 41647u, 4294967295u)), 46281u)), u_input.a.x, 1u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: u32) -> bool {
    return all(vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1708f, -1000f, true)), arg_0.a.d)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f + arg_0.a.d)), !(!arg_0.a.b.x), _wgslsmith_mult_i32(-34404i, arg_1) > arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(max(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, ~u_input.a.x)), _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_mult_u32(abs(func_1(vec4<u32>(1u, 0u, 24093u, 18319u), vec4<u32>(1u, u_input.a.x, 0u, 8978u), false, Struct_2(Struct_1(false, vec3<bool>(false, true, false), 19771u, 1417f), -2147483647i, vec3<u32>(4294967295u, 0u, 4294967295u), vec3<i32>(u_input.b, u_input.d, u_input.d)))), ~37275u)) & ~abs(func_2());
    let var_1 = var_0.zwx;
    let var_2 = Struct_1(all(vec2<bool>(false, true)), vec3<bool>(true, !all(vec2<bool>(true, true)), true), u_input.a.x, _wgslsmith_f_op_f32(-762f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-170f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1650f * 1535f), -1000f, func_3(Struct_2(Struct_1(true, vec3<bool>(true, false, true), u_input.a.x, 2038f), u_input.d, vec3<u32>(1268u, 119421u, u_input.a.x), vec3<i32>(-1i, u_input.c, 0i)), -13660i, var_0.x, u_input.a.x))))));
    var var_3 = vec2<i32>(-(~u_input.b), u_input.d);
    var var_4 = Struct_1(var_2.b.x, !(!select(vec3<bool>(true, var_2.b.x, true), vec3<bool>(var_2.b.x, var_2.a, false), var_2.c >= var_1.x)), var_0.x ^ var_0.x, _wgslsmith_f_op_f32(min(816f, 1322f)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

