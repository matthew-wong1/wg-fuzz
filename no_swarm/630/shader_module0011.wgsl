struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(step(1151f, -1111f))));
    var var_1 = Struct_1(!(u_input.a <= reverseBits(1u)) | (true && (u_input.c > select(u_input.c, u_input.c, false))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))), -1318f));
    let var_2 = 1u;
    var_1 = Struct_1(any(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, false))) && (all(!vec2<bool>(false, var_1.a)) & any(select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(false, false, true, false), var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(783f, 455f), _wgslsmith_f_op_vec2_f32(sign(arg_0.xw))))));
    let var_3 = ~u_input.d.xy;
    return false;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(true, vec2<f32>(1f, 1f));
    let var_1 = select(vec3<bool>(any(vec3<bool>(!var_0.a, var_0.a, var_0.a & var_0.a)), var_0.a, u_input.c < countOneBits(2147483647i)), !select(vec3<bool>(true, func_3(vec4<f32>(var_0.b.x, -841f, var_0.b.x, var_0.b.x)), u_input.c < u_input.c), select(vec3<bool>(false, true, var_0.a), !vec3<bool>(true, var_0.a, false), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true))), !vec3<bool>(var_0.a, false, var_0.a)), select(!(!vec3<bool>(var_0.a, var_0.a, false)), vec3<bool>(true, false, select(true, true, select(false, true, true))), !func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1139f, -790f, var_0.b.x, var_0.b.x)))));
    var_0 = Struct_1(!var_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -693f) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1718f, -1087f))), var_0.b.x)));
    var var_2 = countOneBits(~abs(reverseBits(vec2<u32>(4294967295u, u_input.d.x))));
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(-var_0.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.b.x)), _wgslsmith_f_op_f32(round(arg_2.x))));
    var var_1 = arg_3;
    var_1 = arg_3;
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, 983f)), arg_3.b))) * arg_2.yw));
    var_1 = arg_0;
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))), select(select(vec2<bool>(var_0.a, arg_3.a), select(vec2<bool>(arg_3.a, var_0.a), vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(arg_3.a, false)), vec2<bool>(true, true)), !select(vec2<bool>(arg_0.a, false), vec2<bool>(true, var_0.a), true), vec2<bool>(all(vec3<bool>(var_0.a, false, false)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2320f, -3373f)) - vec2<f32>(267f, -1183f)))), vec2<u32>(~_wgslsmith_add_u32(u_input.d.x, reverseBits(1u)), u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1728f + _wgslsmith_f_op_f32(f32(-1f) * -1364f)), -113f, _wgslsmith_f_op_f32(f32(-1f) * -670f), 1716f)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1423f, -415f))), vec2<f32>(1244f, -618f))))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = var_0.b.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, 247f)) * _wgslsmith_f_op_f32(-477f + 1481f)), 1366f)), -1165f);
    var_1 = Struct_1(var_2, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1621f, var_0.b.x)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_0.b))))), vec2<f32>(311f, var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(firstLeadingBit(firstLeadingBit(u_input.c)), u_input.c, 2147483647i));
}

