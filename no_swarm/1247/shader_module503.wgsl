struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = vec2<i32>(~u_input.c, -21237i);
    let var_1 = arg_3;
    var var_2 = arg_3;
    var_2 = arg_3;
    var var_3 = ~(-2147483647i);
    return all(arg_1);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec2<bool>(any(vec4<bool>(func_3(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<bool>(true, true, true, false), false, Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false))), true, true, true)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), all(vec2<bool>(true, true)) == true), vec3<bool>(func_3(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false)), vec4<bool>(true, true, false, false), true, Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false))), false, false & all(vec3<bool>(true, true, false))), all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_mult_i32(-abs(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(32694i, u_input.c)), u_input.b << (45626u % 32u), !var_0.b.x)), ~u_input.b);
    let var_2 = ~(~max(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.d.x), ~vec4<u32>(u_input.a.x, u_input.d.x, 4294967295u, 9891u))));
    let var_3 = _wgslsmith_f_op_f32(step(-698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -662f))), all(var_0.b))))));
    var var_4 = Struct_1(vec2<bool>(select(var_0.a.x, false, any(!vec4<bool>(var_0.a.x, true, var_0.a.x, false))), !var_0.b.x), !(!select(vec3<bool>(true, var_0.a.x, false), var_0.b, !vec3<bool>(var_0.b.x, false, var_0.b.x))));
    return min(~(-_wgslsmith_div_i32(9521i, var_1 << (26777u % 32u))), 0i);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    var var_1 = -(~func_2());
    let var_2 = 42236u;
    var_1 = -1i;
    var var_3 = arg_0;
    return 21955i << (_wgslsmith_add_u32(_wgslsmith_mult_u32(16933u, ~(u_input.a.x | 24220u)), _wgslsmith_div_u32(~u_input.d.x, 24540u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec2<bool>(false, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(false, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)))), vec3<bool>(35515i < abs(func_1(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false)), 1939f)), true, true));
    var var_1 = ~(~(~_wgslsmith_mult_u32(0u, u_input.d.x))) << (firstLeadingBit(4294967295u) % 32u);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1720f, 246f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-326f, 818f))) + -991f)));
    var_2 = _wgslsmith_div_f32(180f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(741f)), _wgslsmith_div_f32(-1149f, -1132f)))))));
    let var_3 = !(!(!vec4<bool>(var_0.b.x, !var_0.a.x, select(false, true, var_0.b.x), false)));
    var var_4 = Struct_1(var_3.zw, !vec3<bool>(28119u != ~u_input.d.x, any(!var_3.xyy), !all(vec3<bool>(var_3.x, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1059f + _wgslsmith_f_op_f32(f32(-1f) * -283f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) - 759f))));
}

