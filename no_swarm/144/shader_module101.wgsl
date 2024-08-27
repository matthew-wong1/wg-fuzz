struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = 0i;
    let var_1 = _wgslsmith_mod_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 22030u) | vec2<u32>(u_input.d.x, u_input.a.x), ~u_input.a.yz), reverseBits(reverseBits(u_input.a.x)), false), reverseBits(~(_wgslsmith_mod_u32(u_input.d.x, 1u) ^ _wgslsmith_div_u32(u_input.d.x, u_input.a.x))));
    var var_2 = vec4<bool>(false, global0.x, false, (any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, true), global0.x)) && global0.x) & !(!any(vec4<bool>(global0.x, false, true, false))));
    var var_3 = ~abs(48242u);
    var var_4 = Struct_2(vec3<bool>(all(vec2<bool>(true, !var_2.x)), all(!vec4<bool>(true, true, global0.x, true)), !all(vec2<bool>(false, var_2.x))));
    return select(select(var_4.a.xz, select(vec2<bool>(any(var_4.a.zy), true), vec2<bool>(true && var_2.x, var_1 >= var_1), 70605u >= firstLeadingBit(var_1)), !select(false, false, global0.x)), var_2.yy, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1641f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-938f - 1269f)))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> f32 {
    global0 = vec2<bool>(global0.x, !global0.x);
    global0 = !select(func_3(u_input.c.yz), select(arg_1, !select(vec2<bool>(false, true), vec2<bool>(global0.x, true), true), arg_0 == -783f), arg_1);
    global0 = vec2<bool>(arg_1.x, true);
    global0 = arg_1;
    var var_0 = arg_1.x;
    return -898f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(215f)), -379f, -436f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1540f, -179f, -658f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, _wgslsmith_f_op_f32(-1361f + 2078f), 1f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(543f, _wgslsmith_f_op_f32(f32(-1f) * -1205f), 365f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(1602f)), _wgslsmith_f_op_f32(func_2(140f, vec2<bool>(true, true), vec2<i32>(u_input.c.x, 2147483647i))), _wgslsmith_f_op_f32(abs(-925f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 1000f, -1550f))))))), false));
    let var_1 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.x, var_0.x, 990f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), vec2<bool>(true, !global0.x), ~vec2<i32>(u_input.b, -28189i))) - -255f), !(firstLeadingBit(u_input.d.x) < 1u) && true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-889f * 1000f), _wgslsmith_f_op_f32(-var_2.b), var_1)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(415f, _wgslsmith_f_op_f32(-var_2.b), -1669f, _wgslsmith_f_op_f32(f32(-1f) * -210f)), vec4<f32>(534f, 1483f, _wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x)))), var_1, true);
    var var_4 = Struct_2(vec3<bool>(var_2.c, !(!all(vec3<bool>(global0.x, true, var_3.c))), var_3.c));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.d.x, ~(~_wgslsmith_add_u32(max(39340u, 75925u), 22707u | u_input.a.x)), firstTrailingBit(select(41050u, 39377u, select(true, global0.x, global0.x))) & _wgslsmith_add_u32(u_input.a.x, u_input.d.x));
    var var_1 = Struct_2(vec3<bool>(false, func_1(), !func_3(vec2<i32>(45014i, u_input.b)).x));
    var var_2 = Struct_2(vec3<bool>(var_1.a.x, false, global0.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(496f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1796f + _wgslsmith_f_op_f32(abs(-832f))), _wgslsmith_f_op_f32(round(1472f)))), var_1.a.x && all(!vec4<bool>(global0.x, global0.x, true, var_2.a.x)))), 1000f);
    var var_4 = u_input.c.x;
    global0 = vec2<bool>(true, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer((~abs(vec2<u32>(16333u, 4294967295u)) ^ (u_input.d & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 45367u), var_0.xx))) | (select(vec2<u32>(var_0.x, 4294967295u) & u_input.a.yy, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, var_2.a.x)) ^ u_input.a.xx), _wgslsmith_mult_u32(u_input.d.x, var_0.x), ~48818u, vec2<f32>(235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), var_0);
}

