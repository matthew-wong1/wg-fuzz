struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1193f, -675f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = vec3<f32>(1716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f - 716f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(1282f - -1904f))))));
    let var_1 = u_input.b;
    global0 = Struct_1(var_0.xy);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -693f), arg_0.ww)) + global0.a)));
    let var_2 = Struct_2(arg_2.x, ~arg_1, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.xz))), _wgslsmith_f_op_vec2_f32(floor(var_0.zy)))), ~u_input.a.x, true);
    return _wgslsmith_f_op_vec2_f32(-arg_0.yx);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    let var_0 = Struct_2(firstTrailingBit(-31328i), 11747u, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-arg_1), 1u, vec2<i32>(u_input.b.x, 2147483647i)))))), ~u_input.c, !any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false), true)));
    global0 = var_0.c;
    global0 = var_0.c;
    let var_1 = var_0.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-477f - -420f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(sign(global0.a.x)))), 2015f))));
    return global0.a.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(282f, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.a.x, vec4<f32>(635f, 1077f, global0.a.x, 1647f), global0.a.x)) * _wgslsmith_f_op_f32(global0.a.x + 1000f)))), 798f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_mod_u32((_wgslsmith_mod_u32(u_input.a.x, 1u) | u_input.c) | abs(countOneBits(u_input.c)), ~u_input.c), -2147483647i >> ((countOneBits(86427u) | u_input.c) % 32u));
    let var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.xz, select(u_input.a.ww, u_input.a.zw, vec2<bool>(any(vec2<bool>(true, true)), true)), vec2<bool>(true, true)), _wgslsmith_mult_u32(firstLeadingBit(u_input.c), u_input.c >> (_wgslsmith_mult_u32(u_input.a.x >> (19176u % 32u), u_input.a.x) % 32u)), u_input.b.xwz, u_input.a.zz, reverseBits(vec3<i32>(_wgslsmith_sub_i32(-52134i, 7192i) ^ u_input.b.x, _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -2147483647i), var_0.x)));
}

