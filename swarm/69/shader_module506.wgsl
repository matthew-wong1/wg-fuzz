struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = select(select(!vec3<bool>(all(vec2<bool>(true, true)), true, false), !vec3<bool>(true, any(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, false))), 21843u <= abs(firstTrailingBit(18008u))), vec3<bool>(_wgslsmith_f_op_f32(min(819f, _wgslsmith_f_op_f32(round(384f)))) == _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-965f - 2072f)), arg_2 <= (8595u << (u_input.c.x % 32u)), true), true);
    let var_1 = select(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(arg_0.zzy, arg_0.zzx) ^ vec3<u32>(23086u, ~arg_0.x, u_input.c.x), arg_0.zxz), 4294967295u, any(!select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, false, var_0.x, false), var_0.x)) & all(vec3<bool>(true, !var_0.x, !var_0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(305f, _wgslsmith_div_f32(-678f, -1023f)), vec2<f32>(1f, -241f), select(select(var_0.xy, vec2<bool>(true, false), var_0.x), !vec2<bool>(var_0.x, var_0.x), true)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))))));
    let var_3 = Struct_2(var_2.x, true, firstTrailingBit(u_input.a));
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_3(Struct_1(~(~(~0u)), vec4<i32>(-1i, ~u_input.a.x, func_3(vec4<u32>(u_input.c.x, u_input.c.x, arg_0.a, 53354u), ~37490i, arg_0.a), _wgslsmith_mod_i32(1i, 2147483647i) << (arg_0.a % 32u)), vec2<f32>(-218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.x))))));
    let var_1 = _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(546f - _wgslsmith_div_f32(1191f, -438f)));
    var var_2 = select(select(!vec3<bool>(!arg_1.x, false, true), vec3<bool>(false, arg_1.x, !arg_1.x), select(arg_1, !arg_1, false)), arg_1, any(!vec4<bool>(all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), true, arg_1.x, arg_1.x)));
    let var_3 = var_0;
    let var_4 = Struct_1(49291u, -u_input.a, _wgslsmith_f_op_vec2_f32(-var_3.a.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1667f)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_i32(-5499i, u_input.a.x);
    var var_1 = true;
    var_1 = false;
    var_1 = -1265f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-778f, 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(51587u, vec4<i32>(-1i, u_input.b, 1i, -32171i), vec2<f32>(-546f, 270f)), vec3<bool>(true, true, true))) * _wgslsmith_f_op_f32(2221f * 317f)) + -1188f));
    let var_2 = ~(i32(-1i) * -2147483647i);
    return StorageBuffer(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.a.x, abs(select(u_input.d.x, i32(-1i) * -2147483647i, true) ^ u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, -754f)))))))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(1000f, var_1.x), var_1.x);
    let x = u_input.a;
    s_output = func_1();
}

