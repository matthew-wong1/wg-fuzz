struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_1(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -813f)))));
    var var_1 = Struct_1(any(select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_1), true), vec2<bool>(select(true, false, false), !arg_1), all(vec3<bool>(arg_1, var_0.a, true)))), 1279f);
    var var_2 = Struct_1(all(!vec3<bool>(var_0.a, true, all(vec3<bool>(arg_1, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(floor(-1000f)));
    var_0 = Struct_1(var_2.a, 252f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f)), 959f) + _wgslsmith_f_op_f32(min(var_0.b, var_1.b))) + var_2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, -557f);
    var_0 = Struct_1(!(var_0.a && var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-933f * 2161f) + 383f));
    let var_1 = Struct_1(!(!var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = Struct_1(770f < _wgslsmith_f_op_f32(max(-268f, var_1.b)), _wgslsmith_f_op_f32(func_3(reverseBits(u_input.c.zzx), any(vec3<bool>(true, true, !var_0.a)))));
    var_0 = Struct_1(false, 1f);
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<bool>((true && all(select(vec2<bool>(true, arg_1.a), vec2<bool>(true, false), true))) & true, arg_0 == 21578i, all(vec4<bool>(!arg_1.a, false, _wgslsmith_div_f32(192f, arg_1.b) < arg_1.b, any(!vec4<bool>(false, arg_1.a, arg_1.a, true)))));
    let var_1 = func_2();
    let var_2 = select(~1u, ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(14696u, 4294967295u, 1u), vec3<u32>(23774u, 4294967295u, 4294967295u))), true);
    var_0 = !(!vec3<bool>(true, func_2().a, var_1.a != all(vec3<bool>(var_0.x, var_0.x, false))));
    var var_3 = var_0.yx;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(1i, Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f + -188f) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(1000f, 215f)))))));
    var var_1 = Struct_1(all(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))), 1503f);
    let var_2 = 100f;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-581f)))), -228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0i, func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))));
    let var_4 = Struct_1(true, var_1.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3, vec4<f32>(-1449f, -1092f, -455f, -434f)) + vec4<f32>(var_4.b, var_3.x, var_3.x, -1434f)))) + var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(min(-5208i | _wgslsmith_div_i32(u_input.c.x, -62043i), u_input.b), Struct_1(var_4.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2, -1604f, true))))))), ~abs(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(12287u, 6147u))));
}

