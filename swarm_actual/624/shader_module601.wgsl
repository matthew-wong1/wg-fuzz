struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> bool {
    let var_0 = u_input.b.zy | ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 1561i), u_input.b.yz);
    global0 = any(vec2<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(15175i, -49190i, arg_0, 1i), vec4<i32>(-1i, 5243i, u_input.b.x, -22239i) & vec4<i32>(2147483647i, 19086i, arg_3.x, arg_3.x)) == (u_input.b.x | 29476i)));
    let var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    var var_2 = Struct_1(var_1.zy);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1051f))));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.a.x;
    var var_1 = Struct_1(vec2<bool>(false, func_3(29957i, 1060f, 784f, -vec2<i32>(-1i, u_input.c.x))));
    var var_2 = Struct_1(vec2<bool>(var_1.a.x, true));
    var_1 = arg_1;
    var var_3 = Struct_1(var_1.a);
    return var_3.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = false;
    var_0 = (arg_2.a.x & all(select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), vec4<bool>(true, arg_1.a.x, false, arg_2.a.x), arg_2.a.x))) || !func_2(arg_3, Struct_1(!arg_0.a));
    var var_1 = -1884f;
    let var_2 = Struct_1(arg_2.a);
    var_0 = !all(select(vec3<bool>(all(vec3<bool>(true, false, false)), var_2.a.x, arg_1.a.x), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(arg_0.a.x, arg_1.a.x, true)), vec3<bool>(arg_2.a.x, false, arg_0.a.x), vec3<bool>(true, var_2.a.x, arg_0.a.x)), all(var_2.a)));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(939f, _wgslsmith_f_op_f32(-244f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-104f, _wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1679f, -950f)))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), -2147483647i != u_input.a)));
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, !select(true, true, true))), Struct_1(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true))), min(-vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(-27130i, 1i, u_input.b.x, -6170i)), ~27371i, u_input.b.x), vec4<i32>(u_input.c.x, reverseBits(max(-1i, 2147483647i)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-20169i, u_input.b.x, u_input.b.x, u_input.c.x), vec4<i32>(-20544i, -1i, 41310i, 2147483647i)), -51522i | u_input.a), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b.x, u_input.a), u_input.c.x)))));
    global0 = true;
    var var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -828f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), vec4<i32>(u_input.c.x, u_input.b.x, -1i, -2147483647i))).x, _wgslsmith_f_op_f32(1000f + var_0.x))))), ~(~vec2<u32>(1u, 1u)), 0u);
}

