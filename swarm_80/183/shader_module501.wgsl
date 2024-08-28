struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_2(arg_0, 1u);
    var_0 = Struct_2(select(select(!vec3<bool>(false, false, var_0.a.x), var_0.a, select(vec3<bool>(var_0.a.x, arg_0.x, true), !var_0.a, arg_0)), !(!vec3<bool>(var_0.a.x, false, arg_0.x)), arg_0), u_input.d.x);
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(~48619u, u_input.d.x), ~var_0.b, _wgslsmith_dot_vec3_u32(u_input.b, u_input.d));
    let var_2 = -1597f;
    let var_3 = var_2;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) + 248f)), var_3));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(select(select(arg_0.a, vec3<bool>(false, false, false), true), vec3<bool>(true, arg_0.a.x, false), arg_0.a.x))))), arg_0.a.x);
    let var_1 = Struct_1(var_0.a, false);
    var var_2 = select(!(!(!select(vec4<bool>(false, true, var_0.b, true), vec4<bool>(true, false, var_0.b, var_0.b), arg_0.a.x))), select(!(!(!vec4<bool>(var_0.b, var_1.b, true, arg_0.a.x))), !vec4<bool>(all(arg_0.a.xz), arg_0.a.x, any(vec3<bool>(var_0.b, var_0.b, arg_0.a.x)), true), select(vec4<bool>(-111f < var_1.a.x, true, any(vec3<bool>(true, var_1.b, false)), var_0.b), select(vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, false, arg_0.a.x, true), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.a.x, var_1.b, false, false), false)), select(!vec4<bool>(var_0.b, var_1.b, false, var_1.b), select(vec4<bool>(var_0.b, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, var_1.b, var_1.b)), vec4<bool>(var_1.b, var_1.b, arg_0.a.x, arg_0.a.x)))), var_0.b);
    return all(select(arg_0.a, vec3<bool>(any(arg_0.a.yx), !var_2.x, !(!var_1.b)), all(!(!vec2<bool>(var_0.b, true)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = select(!vec3<bool>(false, _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) < _wgslsmith_f_op_f32(arg_1.a.x + 2109f), -131f == _wgslsmith_f_op_f32(arg_1.a.x * -828f)), select(!vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, false)), arg_1.b, func_2(Struct_2(vec3<bool>(true, arg_0, arg_1.b), 34943u))), vec3<bool>(!all(vec4<bool>(false, false, arg_0, false)), arg_1.a.x >= _wgslsmith_f_op_f32(-arg_1.a.x), true), vec3<bool>(arg_0, !any(vec2<bool>(arg_0, arg_1.b)), arg_1.b)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_1.b, true, false), true), vec3<bool>(arg_1.b, arg_1.b, true)), select(!(!vec3<bool>(false, arg_1.b, arg_1.b)), !select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, false)), (u_input.d.x <= 4294967295u) | (arg_0 || arg_0)), !select(!vec3<bool>(false, arg_1.b, false), !vec3<bool>(true, false, arg_1.b), vec3<bool>(true, true, arg_0))));
    let var_2 = reverseBits(~firstLeadingBit(~(~vec4<u32>(31176u, 1u, 93788u, 55056u))));
    var_1 = !vec3<bool>(!any(vec2<bool>(true, true)), true, select(arg_1.b, any(vec3<bool>(true, var_1.x, var_1.x)), var_1.x) & arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-761f, _wgslsmith_f_op_f32(select(1038f, -354f, true)), any(vec2<bool>(true, arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f + -710f) - 1f)) + arg_1.a), all(select(vec3<bool>(arg_0 & false, arg_1.a.x != 1510f, any(var_1.yz)), !vec3<bool>(true, arg_1.b, false), !(!vec3<bool>(false, arg_0, arg_1.b)))));
    return _wgslsmith_f_op_f32(-var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(977f, -451f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1920f, -1405f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1263f, 167f))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2552f + 880f) + _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_f32(func_1(true, Struct_1(vec2<f32>(-491f, 1351f), true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(398f))))));
    var var_2 = 575f;
    var_2 = -300f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1134f + var_1.x), _wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, 692f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1014f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))) <= _wgslsmith_f_op_f32(func_1(true, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), false))));
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1300f), var_3.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))))), all(vec3<bool>(false, true, !any(vec3<bool>(var_3.b, var_3.b, var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c))), vec4<i32>(~u_input.a, u_input.a, -24506i, abs(-u_input.a))));
}

