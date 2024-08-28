struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(_wgslsmith_mod_u32(reverseBits(4294967295u), 1u), ~(~u_input.b.x), ~u_input.b.x));
    var var_1 = Struct_4(Struct_1(659f, var_0.zz));
    let var_2 = Struct_2(all(vec3<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, false)), true)), _wgslsmith_add_u32(0u, ~(~1u)), ~vec4<u32>(max(u_input.b.x, 4294967295u), ~(~56965u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, var_0.x), _wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(45434u, 4294967295u, u_input.b.x))), firstTrailingBit(7503u)), all(vec3<bool>(true, -622f > _wgslsmith_f_op_f32(select(var_1.a.a, -282f, false)), !any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) - -691f))));
    var var_3 = var_2.c.x;
    let var_4 = -max(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_0), vec3<i32>(arg_0, u_input.a.x, u_input.a.x)), ~arg_0);
    return !(any(vec4<bool>(any(vec2<bool>(false, var_2.d)), false, true, var_2.a)) || any(vec3<bool>(var_2.a, false, true)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1017f)))), _wgslsmith_f_op_f32(floor(-1493f)), 1279f);
    var var_1 = !(firstTrailingBit(59886i) >= (i32(-1i) * -31879i));
    let var_2 = 85679i;
    var_1 = true;
    let var_3 = 2147483647i;
    return Struct_3(var_0.x, func_3(u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(166f + -746f), 1365f))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -253f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(768f + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(352f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_5 {
    var var_0 = func_2();
    return Struct_5(Struct_3(_wgslsmith_f_op_f32(arg_1.a + 1371f), !(!arg_2.a), vec4<f32>(_wgslsmith_f_op_f32(arg_2.e.x + -592f), 1140f, _wgslsmith_f_op_f32(floor(arg_3.x)), _wgslsmith_f_op_f32(max(-712f, 241f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.e.x, arg_0.e.x), -1610f))), !vec2<bool>(!(!arg_0.a), !all(vec4<bool>(arg_2.d, true, true, arg_0.a))), !select(!vec4<bool>(false, false, arg_2.a, arg_2.d), !(!vec4<bool>(arg_2.d, true, var_0.b, true)), !vec4<bool>(true, arg_2.a, arg_2.a, false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: i32) -> f32 {
    let var_0 = -17143i;
    var var_1 = true;
    var_1 = arg_0.x;
    var_1 = false;
    let var_2 = func_2().b;
    return arg_1.b.x;
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), func_1(Struct_2(true, 20186u, u_input.b, true, vec2<f32>(1003f, -563f)), Struct_1(-2450f, u_input.b.xw), Struct_2(false, u_input.b.x, u_input.b, false, vec2<f32>(1000f, 198f)), vec2<f32>(-1404f, 860f)), ~0i)), vec2<u32>(44729u, u_input.b.x << (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.xx, vec2<f32>(1193f, 459f))), ~(abs(~vec2<u32>(u_input.b.x, 1u)) ^ (~u_input.b.zy << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -650f)))));
}

