struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, arg_2)) * arg_2)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), arg_2) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))), ~1u > arg_1)));
    var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-538f)))), arg_2))));
    var_0 = arg_0;
    var var_1 = Struct_2(arg_0);
    var var_2 = 20204u;
    return _wgslsmith_f_op_f32(var_1.a.b * _wgslsmith_f_op_f32(round(568f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = vec2<bool>(any(vec3<bool>(arg_2 <= arg_2, all(vec3<bool>(true, arg_3.x, arg_0.a)), !arg_0.a)) || all(vec3<bool>(true, arg_3.x || true, arg_0.a | arg_3.x)), arg_0.a);
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(-arg_0.b));
    var var_2 = _wgslsmith_div_i32(-(28361i | ~u_input.a.x), abs(1i)) << (u_input.b % 32u);
    let var_3 = vec2<bool>(true, var_1.a);
    var var_4 = -13497i;
    return _wgslsmith_f_op_f32(floor(arg_0.b));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(679f, arg_1, 117f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(626f, 2116f, 593f) * vec3<f32>(142f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(false, arg_1), 4150u, 279f, vec3<u32>(u_input.b, u_input.b, 51957u))), -479f, _wgslsmith_f_op_f32(trunc(208f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) + -1366f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, -927f), _wgslsmith_div_f32(-1772f, 925f)) + 1152f), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))))));
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(true, -773f), 371f, 2147483647i, vec2<bool>(false, true))))), arg_1) + _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-564f, arg_1, 1258f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_1.b), -1517f, -205f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1000f, -1068f) + vec3<f32>(arg_1, 691f, -174f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-494f, 833f, 316f), vec3<f32>(-706f, 187f, var_1.b), vec3<bool>(true, var_1.a, var_1.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1021f, -686f), vec3<f32>(-742f, var_0.x, 577f))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, var_1.b), vec3<f32>(-101f, var_0.x, -798f)))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1189f)), 271f, 1951f);
    var_0 = vec3<f32>(193f, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(trunc(-192f)), !(!all(vec4<bool>(var_1.a, true, false, var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2028f))));
    return Struct_1(!(true & (var_1.a && !var_1.a)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(~_wgslsmith_mult_u32(~34317u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -261f)));
    var var_1 = Struct_1(true, var_0.b);
    var_1 = func_1(24310u, _wgslsmith_f_op_f32(-var_1.b));
    var_0 = Struct_1(!all(vec2<bool>(true, all(vec2<bool>(true, var_0.a)))), var_0.b);
    let var_2 = vec3<bool>(any(vec4<bool>(var_0.a, select(select(true, var_1.a, false), select(false, false, false), true), false, !any(vec2<bool>(var_1.a, false)))), false | (false || (any(vec3<bool>(true, false, false)) || var_1.a)), var_1.a);
    var var_3 = Struct_2(Struct_1(func_1(1u, var_0.b).a, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(vec2<u32>(u_input.b, u_input.b) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 18640u)) % vec2<u32>(32u)))), 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 1322f))), vec2<f32>(_wgslsmith_f_op_f32(117f - 629f), 1000f)))), ~min(vec2<u32>(u_input.b, ~0u), vec2<u32>(~71620u, u_input.b ^ u_input.b)));
}

