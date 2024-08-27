struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = i32(-1i) * -30844i;
    var var_2 = -2055f;
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-658f * 758f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(-789f * 1491f))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = arg_0;
    let var_2 = arg_1.x;
    let var_3 = (~countOneBits(-arg_0.a) | abs(arg_0.a)) << (u_input.c % 32u);
    var var_4 = 0u;
    return var_1;
}

fn func_1() -> u32 {
    let var_0 = func_3(Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.xyy, -select(u_input.a.yww, u_input.a.yzy, true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - _wgslsmith_div_f32(-284f, -1069f)), -435f, _wgslsmith_f_op_f32(f32(-1f) * -704f)), vec3<f32>(313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) - _wgslsmith_f_op_f32(func_2(Struct_1(21253i), vec4<i32>(-2147483647i, u_input.a.x, u_input.d, 32599i), vec3<u32>(u_input.c, 59822u, u_input.c)))))), true, vec4<bool>(true, true, true, true));
    return u_input.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = !select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), !(_wgslsmith_mult_i32(0i, 27386i) <= firstLeadingBit(u_input.b)));
    var_0 = !vec4<bool>(false, all(select(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, false, false, false)), !vec4<bool>(false, true, var_0.x, false), select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)))), true, any(var_0.yw));
    var var_1 = func_3(func_3(func_3(Struct_1(_wgslsmith_div_i32(-12281i, arg_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1588f, -662f, 1251f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(204f, 1671f, -2310f) + vec3<f32>(228f, -834f, -936f)))), var_0.x, select(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, true, true, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, _wgslsmith_f_op_f32(step(1000f, -369f)), -2113f)), false, !select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x), !vec4<bool>(true, true, false, var_0.x), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1568f, -1886f, 1413f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -1771f, 476f))))), !(all(select(var_0.xy, var_0.yy, var_0.x)) & false), !vec4<bool>(any(!var_0.wx), true & (var_0.x & var_0.x), !any(var_0.wyy), !all(vec2<bool>(var_0.x, true))));
    let var_2 = func_3(func_3(func_3(Struct_1(20524i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1563f, 484f, 330f))), all(vec2<bool>(var_0.x, var_0.x)), select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(false, false, true, var_0.x), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1121f, -1140f, -888f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1663f, 589f, 1316f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1072f, -494f, -1148f) * vec3<f32>(-176f, 918f, -644f))))), false, !(!(!vec4<bool>(var_0.x, true, false, var_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1641f, -217f, 1494f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-361f, 1000f, -759f), vec3<f32>(329f, -507f, 1501f)))) + vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-342f - 250f))))), true, select(select(vec4<bool>(true, true, var_1.a <= u_input.d, var_0.x), vec4<bool>(29163i >= var_1.a, all(vec2<bool>(var_0.x, false)), true, var_0.x | var_0.x), vec4<bool>(any(vec2<bool>(var_0.x, false)), any(vec4<bool>(var_0.x, false, var_0.x, true)), all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(var_0.wx))), select(vec4<bool>(all(var_0.wxx), arg_0.x == -44922i, var_0.x, true), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, true, select(false, true, false), var_0.x)), false));
    return StorageBuffer(~4294967295u, vec3<u32>(_wgslsmith_div_u32(~4059u, 54777u), ~(~0u), (_wgslsmith_sub_u32(21928u, 1u) << (1u % 32u)) ^ firstLeadingBit(~arg_1.x)), vec2<u32>(arg_1.x, 23187u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-247f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1838f * -843f), -358f)), all(vec4<bool>(true, true, true, true))))));
    let var_1 = Struct_1(1i);
    let var_2 = var_1;
    let var_3 = var_2;
    let x = u_input.a;
    s_output = func_4(~(~(-(~u_input.a.wyy))), vec3<u32>(func_1(), _wgslsmith_sub_u32(~u_input.c, 9920u) ^ abs(~1u), select(0u, ~21635u & (u_input.c | u_input.c), !(-1000f <= var_0))));
}

