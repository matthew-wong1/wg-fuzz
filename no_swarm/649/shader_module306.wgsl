struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(1000f, 1662f, -1658f);

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    global1 = arg_3.a;
    var var_0 = Struct_2(Struct_1(-global1.a), _wgslsmith_f_op_f32(-arg_3.b));
    var_0 = Struct_2(arg_3.a, var_0.b);
    var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1293f + _wgslsmith_f_op_f32(-arg_3.b)) - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(var_0.b - arg_3.b)));
    return reverseBits(arg_0.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(-9571i);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u), ~vec4<u32>(u_input.a.x, 31493u, 1u, u_input.a.x)) & abs(u_input.a.x ^ 1869u)), select(arg_0.x, arg_0.x, false), ~13357u);
    var_0 = Struct_1(abs(_wgslsmith_clamp_i32(func_3(countOneBits(vec4<i32>(2147483647i, -25402i, global1.a, 2147483647i)), vec2<i32>(var_0.a, global1.a) >> (var_1.xx % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1334f, arg_1, -798f)), Struct_2(Struct_1(-14103i), -1404f)), global1.a & var_0.a, -_wgslsmith_add_i32(1i, -1i))));
    global2 = 15926u == _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a.x, 32738u, u_input.a.x, 1u)), vec4<u32>(~4294967295u, _wgslsmith_div_u32(0u, arg_0.x), _wgslsmith_sub_u32(arg_0.x, 4294967295u), countOneBits(arg_0.x))), reverseBits(_wgslsmith_mult_u32(max(u_input.a.x, 35180u), ~9759u)));
    var var_2 = Struct_1(1i);
    return Struct_2(Struct_1(-var_2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + global0.x), _wgslsmith_f_op_f32(step(global0.x, -137f)))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)));
    var var_1 = func_2(vec3<u32>(u_input.a.x, ~(~1u), u_input.a.x), 346f);
    let var_2 = arg_2.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(213f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(1459f * _wgslsmith_f_op_f32(sign(-372f))))));
    let var_4 = select(vec2<bool>(false, false), select(select(vec2<bool>(false, true), vec2<bool>(true, arg_1 < 48898u), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false), global0.x > var_0), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, any(vec3<bool>(true, true, true))))), vec2<bool>(true, any(vec3<bool>(true, true, true))));
    return StorageBuffer(-_wgslsmith_mod_i32(2147483647i, abs(~arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global0 = vec3<f32>(-440f, _wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-1323f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f + _wgslsmith_f_op_f32(floor(global0.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, -1241f, false)), _wgslsmith_div_f32(1099f, global0.x))))));
    let var_0 = reverseBits(vec3<u32>(~(~4078u), u_input.a.x, 23761u));
    var var_1 = Struct_2(Struct_1(-1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f + -2996f) * _wgslsmith_f_op_f32(abs(-781f))), _wgslsmith_f_op_f32(-global0.x), global0.x));
    let x = u_input.a;
    s_output = func_1(var_1.a, _wgslsmith_add_u32(~abs(u_input.a.x << (u_input.a.x % 32u)), 0u), ~reverseBits(-vec4<i32>(global1.a, 16158i, var_1.a.a, var_1.a.a) | -vec4<i32>(var_1.a.a, global1.a, global1.a, var_1.a.a)));
}

